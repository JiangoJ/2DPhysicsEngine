#pragma once
#include <iostream>
#include "raylib.h"
#include "VectorTransform.h"
#include <math.h>

class Vec2 {

public:
    float getX() const;
    float getY() const;
    Vec2(float x, float y);
    Vec2();

    //Overload operator
    Vec2 operator+(const Vec2& v);
    Vec2& operator+=(const Vec2& v);
    Vec2 operator-(const Vec2& v);
    Vec2& operator-=(const Vec2& v);
    Vec2 operator/(float val);
    Vec2& operator/=(float val);
    Vec2 operator*(float val);
    Vec2& operator*=(float val);
    bool operator==(const Vec2& v);
    friend std::ostream& operator << ( std::ostream& outs, const Vec2& p);

    //Vec Operations
    static float distance(const Vec2& v1, const Vec2& v2);
    float length();
    void normalize();
    static float DotProduct(const Vec2& v, const Vec2& v2);
    static float Distance(const Vec2& v, const Vec2& v2); 
    static float CrossProduct(const Vec2& v, const Vec2& v2); 

    //Transform Operations
    Vec2 transform(VectorTransform vt, Vec2 center);

    //AutoUnboxing for Raylib Vector2
    struct Vector2 Vector2();

private:
    float x;
    float y;
};
