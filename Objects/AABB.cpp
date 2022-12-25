#include "AABB.h"

void AABB::initialize(){

    if(needsUpdate){
        transformedOrigin = Vec2(position.getX() + width/2, position.getY() + height/2);
        
        //Rotate by the rotation amount. This is definitely not very efficient
        VectorTransform vt(position.getX() - points[0].getX(), position.getY() - points[0].getY(), rotation);

        for(int i = 0; i < 4; i++){
            cachedPoints[i] = points[i].transform(vt, origin); 
        }

    }
    needsUpdate = false;
}

AABB::AABB(Vec2 position, float width, float height): Shape(position, width * height, Shape::AABB), width(width), height(height){

    points = new Vec2[4];
    cachedPoints = new Vec2[4];
    //Initialize Points
    points[0] = position; // top Left
    points[1] = position + Vec2(width, 0); // top right 
    points[2] = position + Vec2(width, height); // bottom Right
    points[3] = position + Vec2(0, height); // bottom Left (max)
    
    origin = Vec2(position.getX() + width/2, position.getY() + height/2);
    initialize();
}

AABB::AABB(Vec2 position, float width, float height, Vec2 velocity, float mass, float restitution): Shape(velocity, position, mass, restitution, width * height, Shape::AABB), width(width), height(height) {
    points = new Vec2[4];
    cachedPoints = new Vec2[4];

    //Initialize Points
    points[0] = position; // top Left
    points[1] = position + Vec2(width, 0); // top right 
    points[2] = position + Vec2(width, height); // bottom Right
    points[3] = position + Vec2(0, height); // bottom Left (max)
    
    origin = Vec2(position.getX() + width/2, position.getY() + height/2);
    initialize();
}

AABB::~AABB(){
    delete points;
    delete cachedPoints;
}

void AABB::constructTriangles(Vec2* triangles){
    //Initialize Trianges:
    initialize();
    triangles[0] = cachedPoints[2];
    triangles[1] = cachedPoints[1];
    triangles[2] = cachedPoints[0];
    triangles[3] = cachedPoints[2];
    triangles[4] = cachedPoints[0];
    triangles[5] = cachedPoints[3];
}

Vec2* AABB::getPoints(){
    return points;
}

Vec2* AABB::getCachedPoints(){
    return cachedPoints;
}

float AABB::getWidth() const{
    return width;
}

float AABB::getHeight() const{
    return height;
}

Vec2 AABB::getOrigin() const{
    return origin;
}

Vec2 AABB::getTransformedOrigin() const{
    return transformedOrigin; 
}

void AABB::drawShape(Color c){

    Vec2 triangles[6];
    constructTriangles(triangles);

    DrawTriangle(triangles[0].Vector2(), triangles[1].Vector2(), triangles[2].Vector2(), BLUE);
    DrawTriangle(triangles[3].Vector2(), triangles[4].Vector2(), triangles[5].Vector2(), BLUE);
}

void AABB::rotateBy(float angle){
    if(angle != 0){
        this->rotation += angle;
        needsUpdate = true;
    }
}
