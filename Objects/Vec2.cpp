#include "Vec2.h"

Vec2::Vec2(float x, float y): x(x), y(y) {}
Vec2::Vec2() : x(0.0), y(0.0) {}

Vec2 Vec2::operator+(const Vec2& v){
    Vec2 newV(getX() + v.getX(), getY() + v.getY());
    return newV;
}

Vec2& Vec2::operator+=(const Vec2& v){
    this->x += v.getX();
    this->y += v.getY();
    return *this;
}

Vec2 Vec2::operator-(const Vec2& v){
    Vec2 newV(getX() - v.getX(), getY() - v.getY());
    return newV;
}

Vec2& Vec2::operator-=(const Vec2& v){
    this->x -= v.getX();
    this->y -= v.getY();
    return *this;
}

bool Vec2::operator==(const Vec2& v){
    return getX() == v.getX() && getY() == v.getY();
}

Vec2 Vec2::operator/(float val){
    Vec2 newV(getX()/val, getY()/val);
    return newV;
}

Vec2& Vec2::operator/=(float val){
    this->x /= val;
    this->y /= val;
    return *this;
}

Vec2 Vec2::operator*(float val){
    Vec2 newV(getX()*val, getY()*val);
    return newV;
}

Vec2& Vec2::operator*=(float val){
    this->x *= val;
    this->y *= val;
    return *this;
}

float Vec2::getX() const{
    return x;
}

float Vec2::getY() const{
    return y;
}

std::ostream& operator<<( std::ostream& outs, const Vec2& p)
{
  return outs << "(" << p.getX() << "," << p.getY() << ")";
}

struct Vector2 Vec2::Vector2(){
    struct Vector2 v2;
    v2.x = getX();
    v2.y = getY();
    return v2;
}

float Vec2::DotProduct(const Vec2& v, const Vec2& v2){
    return v.getX() * v2.getX() + v.getY() * v2.getY();
}

float Vec2::Distance(const Vec2& v, const Vec2& v2){

    float dx = v.getX() - v2.getX();
    float dy = v.getY() - v2.getY();
    return sqrt(dx * dx + dy * dy);
}

float CrossProduct(const Vec2& v, const Vec2& v2){
    return v.getX() * v2.getY() - v.getY() * v2.getX();
}

float Vec2::length(){
    return sqrt(getX() * getX() + getY() * getY());
}

void Vec2::normalize(){
    x /= length();
    y /= length();
}

Vec2 Vec2::transform(VectorTransform vt, Vec2 center){
    //First move back to the center
    float newx = x - center.getX();
    float newy = y - center.getY();

    //First do the rotation then translation
    float rotatedx = vt.cos * newx - vt.sin * newy;
    float rotatedy = vt.sin * newx + vt.cos * newy;

    newx = rotatedx + center.getX();
    newy = rotatedy + center.getY();

    return Vec2(newx + vt.x, newy + vt.y);
}

float Vec2::distance(const Vec2& v1, const Vec2& v2){

    return sqrt(pow((v1.getX() - v2.getX()), 2) + pow((v1.getY() - v2.getY()), 2));
}
