#include "../Objects/Objects.h"
#include <iostream>
#include <limits>

class Collisions{

public:
    static bool DetectCollision(Shape* s1, Shape* s2);

    static bool IntersectCircles(Circle* c1, Circle* c2, Vec2& normal, float& depth);

    static bool IntersectAABBs(AABB* ab1, AABB* ab2, Vec2& normal, float& depth);

private:
    static void projectVertices(const Vec2* points, const Vec2& axis, float& max, float& min);
};
