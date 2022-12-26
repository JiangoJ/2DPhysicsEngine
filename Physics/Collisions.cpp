#include "./Collisions.h"

bool Collisions::DetectCollision(Shape* s1, Shape* s2){
   
    Shape::ShapeType t1 = s1->getType();
    Shape::ShapeType t2 = s2->getType();

    Vec2 normal;
    float depth;

    if(t1 == Shape::Circle && t2 == Shape::Circle){
        Circle* c1 = dynamic_cast<Circle*>(s1); 
        Circle* c2 = dynamic_cast<Circle*>(s2);

        if(IntersectCircles(c1, c2, normal, depth)){

            c1->moveBy(normal * depth / 2.0);
            c2->moveBy(normal * -1 * depth / 2.0);

            return true;
        }
    }

    else if(t1 == Shape::AABB && t2 == Shape::AABB){
        
        AABB* a1 = dynamic_cast<AABB*>(s1); 
        AABB* a2 = dynamic_cast<AABB*>(s2);

        if(IntersectAABBs(a1, a2, normal, depth)){

            a1->moveBy(normal * depth / 2.0);
            a2->moveBy(normal * -1 * depth / 2.0);

            return true;
        }

    }

    else{ //Circle and AABB collision

        AABB* ab;
        Circle* c;

        if(t1 == Shape::AABB){
            
           ab = dynamic_cast<AABB*>(s1);
           c = dynamic_cast<Circle*>(s2);
        }
        else{

           ab = dynamic_cast<AABB*>(s2);
           c = dynamic_cast<Circle*>(s1);
        }
        if(IntersectAABBCircle(ab, c, normal, depth)){

            ab->moveBy(normal * depth / 2.0);
            c->moveBy(normal * -1 * depth / 2.0);

            return true;
        }
    }

    return false;
}

bool Collisions::IntersectCircles(Circle* c1, Circle* c2, Vec2& normal, float& depth){

    float distance = Vec2::Distance(c1->getPosition(), c2->getPosition());
    float radii = c1->getRadius() + c2->getRadius();

    //No Collision
    if(distance >= radii){
        return false;
    }

    //Collision
    normal = c1->getPosition() - c2->getPosition();
    normal.normalize();

    depth = radii - distance;

    return true;
}

bool Collisions::IntersectAABBs(AABB* ab1, AABB* ab2, Vec2& normal, float& depth){

    normal = Vec2();
    depth = std::numeric_limits<float>::max();

    // Separating Axis Theorem
    for(int i = 0; i < 4; i++){

        Vec2 p1 = ab1->getCachedPoints()[i];
        Vec2 p2 = ab1->getCachedPoints()[(i+1)%4];

        Vec2 edge = p2 - p1;
        Vec2 axis = Vec2(-1*edge.getY(), edge.getX());

        float maxA = 0.0, minA = 0.0, maxB = 0.0, minB = 0.0;

        projectVertices(ab1->getCachedPoints(), axis, maxA, minA);
        projectVertices(ab2->getCachedPoints(), axis, maxB, minB);

        if(maxA <= minB || maxB <= minA){
            return false;
        }

        float collisionDepth = std::min(maxA - minB, maxB - minA);
        if(collisionDepth < depth){
            depth = collisionDepth;
            normal = axis;
        }
    }

    for(int i = 0; i < 4; i++){

        Vec2 p1 = ab2->getCachedPoints()[i];
        Vec2 p2 = ab2->getCachedPoints()[(i+1)%4];

        Vec2 edge = p2 - p1;
        Vec2 axis = Vec2(-1*edge.getY(), edge.getX());

        float maxA = 0.0, minA = 0.0, maxB = 0.0, minB = 0.0;

        projectVertices(ab1->getCachedPoints(), axis, maxA, minA);
        projectVertices(ab2->getCachedPoints(), axis, maxB, minB);

        if(maxA <= minB || maxB <= minA){
            return false;
        }

        float collisionDepth = std::min(maxA - minB, maxB - minA);

        if(collisionDepth < depth){
            depth = collisionDepth;
            normal = axis;
        }
    }

    depth /= normal.length();
    normal.normalize();

    // Check if the normal is pointing in the same direction of the two objects
    Vec2 direction = ab1->getTransformedOrigin() - ab2->getTransformedOrigin();
    if(Vec2::DotProduct(normal, direction) < 0){
        normal *= -1;
    }

    return true;
}

bool Collisions::IntersectAABBCircle(AABB* ab, Circle* c, Vec2& normal, float& depth){
    
    normal = Vec2();
    depth = std::numeric_limits<float>::max();

    // Separating Axis Theorem
    for(int i = 0; i < 4; i++){

        Vec2 p1 = ab->getCachedPoints()[i];
        Vec2 p2 = ab->getCachedPoints()[(i+1)%4];

        Vec2 edge = p2 - p1;
        Vec2 axis = Vec2(-1*edge.getY(), edge.getX());

        float maxA = 0.0, minA = 0.0, maxB = 0.0, minB = 0.0;

        projectVertices(ab->getCachedPoints(), axis, maxA, minA);
        projectCircle(c, axis, maxB, minB);

        //Project Circle Center
        
        if(maxA <= minB || maxB <= minA){
            return false;
        }

        float collisionDepth = std::min(maxA - minB, maxB - minA);
        if(collisionDepth < depth){
            depth = collisionDepth;
            normal = axis;
        }
    }

    depth /= normal.length();
    normal.normalize();

    // Check if the normal is pointing in the same direction of the two objects
    Vec2 direction = ab->getTransformedOrigin() - c->getPosition();
    if(Vec2::DotProduct(normal, direction) < 0){
        normal *= -1;
    }
    return true;
}

void Collisions::projectVertices(const Vec2* points, const Vec2& axis, float& max, float& min){

    min = std::numeric_limits<float>::max();
    max = std::numeric_limits<float>::min();
    
    for(int i = 0; i < 4; i++){

        Vec2 p1 = points[i];
        float proj = Vec2::DotProduct(p1, axis);

        if(proj < min){
            min = proj;
        }
        if(proj > max){
            max = proj;
        }
    }

}

void Collisions::projectCircle(const Circle* c, const Vec2& axis, float& max, float& min){
    Vec2 direction = Vec2::Normalize(axis);
    Vec2 dirRadius = direction * c->getRadius();

    Vec2 circleLeft = c->getPosition() - dirRadius;
    Vec2 circleRight = c->getPosition() + dirRadius;

    min = Vec2::DotProduct(axis, circleLeft);
    max = Vec2::DotProduct(axis, circleRight);
}
