#pragma once
#include "Shape.h"
#include <math.h>

class Circle: public Shape{

public: 
    Circle(float radius, Vec2 position);
    Circle(float radius, Vec2 position, Vec2 velocity, float mass, float restitution);

    bool collisionDetect(Circle& other);
    float getRadius() const;

    //Draw Raylib
    void drawShape(Color c = BLACK);
private:
    float radius;
};
