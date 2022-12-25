#include "VectorTransform.h"

VectorTransform::VectorTransform(float x, float y, float angle){
    this->x = x;
    this->y = y;
    sin = std::sin(angle); 
    cos = std::cos(angle);
}

