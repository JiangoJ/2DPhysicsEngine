#pragma once
#include <iostream>
#include "Vec2.h"

class Shape{

public:
    enum ShapeType { Circle, AABB };
    //Getters
    Vec2 getVelocity() const;
    Vec2 getPosition() const;
    float getRotation() const;
    float getArea() const;
    float getMass() const;
    float getRestitution() const;
    ShapeType getType() const;
    bool getNeedsUpdate() const;

    //Constructors
    Shape(Vec2 position, ShapeType type);
    Shape(Vec2 position, float area, ShapeType type);
    Shape(Vec2 velocity, Vec2 position, float mass, float restitution, float area, ShapeType type);
    //Destructor
    virtual ~Shape(){};

    //raylib draw
    virtual void drawShape(Color c) = 0;
    void moveBy(Vec2 v);
    void moveTo(Vec2 v);
    virtual void rotateBy(float angle);

protected:
    float rotation;
    Vec2 position;
    Vec2 velocity;
    float mass;
    float restitution;
    float area;
    ShapeType type;
    bool needsUpdate;
};
