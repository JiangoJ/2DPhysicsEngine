#pragma once
#include "Vec2.h"
#include "Shape.h"
#include "raylib.h"
#include <iostream>

class AABB: public Shape{

private:
    Vec2 max; 
    float width;
    float height;
    Vec2* points;
    Vec2 origin;
    Vec2 transformedOrigin;

    void initialize();
    Vec2* cachedPoints;

public:
    AABB(Vec2 position, float width, float height);
    AABB(Vec2 position, float width, float height, Vec2 velocity, float mass, float restitution);

    ~AABB();

    float getWidth() const;
    float getHeight() const;
    Vec2 getOrigin() const;
    Vec2 getTransformedOrigin() const;

    void constructTriangles(Vec2* triangles);
    Vec2* getPoints();
    Vec2* getCachedPoints();

    //Raylib conversion
    struct Rectangle Rectangle();

    //Raylib Draw
    void drawShape(Color c = BLACK) override;
    void rotateBy(float angle) override;
};
