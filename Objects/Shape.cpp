#include "Shape.h"

Shape::Shape(Vec2 position, ShapeType type) : position(position), velocity(Vec2(0.0, 0.0)), mass(1.0), restitution(1.0), area(1.0), rotation(0.0), type(type), needsUpdate(true){}
        
Shape::Shape(Vec2 position, float area, ShapeType type) : position(position), velocity(Vec2(0.0, 0.0)), mass(1.0), restitution(1.0), area(area), rotation(0.0), type(type), needsUpdate(true){}

Shape::Shape(Vec2 velocity, Vec2 position, float mass, float restitution, float area, ShapeType type) : position(position), velocity(velocity), mass(mass), restitution(restitution), area(area), rotation(0.0), type(type), needsUpdate(true) {}

float Shape::getRotation() const{
    return rotation;
}

Vec2 Shape::getVelocity() const{
    return velocity;
}

Vec2 Shape::getPosition() const{
    return position;
}

float Shape::getMass() const{
    return mass;
}

float Shape::getRestitution() const{
    return restitution;
}

float Shape::getArea() const{
    return area;
}

void Shape::moveTo(Vec2 v){
    position = v;
    needsUpdate = true;
}

void Shape::moveBy(Vec2 v){
    position += v;
    needsUpdate = true;
}

Shape::ShapeType Shape::getType() const{
    return type;
}

void Shape::rotateBy(float angle){
    this->rotation += angle;
    needsUpdate = true;
}

bool Shape::getNeedsUpdate() const{
    return needsUpdate;
}
