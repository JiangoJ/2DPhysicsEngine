#pragma once
#include <cmath>

class VectorTransform{

public:
    float x;
    float y;
    float sin;
    float cos;

    //Constructor
    VectorTransform(float x, float y, float angle);
};
