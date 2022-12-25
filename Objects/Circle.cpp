#include "Circle.h"
#include <iostream>

Circle::Circle(float radius, Vec2 position) : radius(radius), Shape(position, 3.14*radius*radius, Shape::Circle){}

Circle::Circle(float radius, Vec2 position, Vec2 velocity, float mass, float restitution) : radius(radius), Shape(velocity, position, mass, restitution, 3.14*radius*radius, Shape::Circle){}

bool Circle::collisionDetect(Circle& other){

    float r = radius + other.radius;
    r*=r;

    float dist = pow(position.getX() + other.getPosition().getX(), 2) + pow(position.getY() + other.getPosition().getY(), 2);

    return r > dist;
}

float Circle::getRadius() const{
    return radius;
}

void Circle::drawShape(Color c){
   DrawCircleV(getPosition().Vector2(), getRadius(), c);
}
