#pragma once
#include <iostream>
#include <random>
#include <vector>

class Random{

public:
    static int randrange(int min, int max)
    {
        std::random_device rd; // obtain a random number from hardware
        std::mt19937 gen(rd()); // seed the generator
        std::uniform_int_distribution<> distr(min, max); // define the range

        return distr(gen); // generate numbers
    }

    static void createRandomShapes(int numberOfShapes, std::vector<Shape*>& randomShapes, int screenWidth, int screenHeight, int padding){
        
        randomShapes.clear();

        for(int i = 0; i < numberOfShapes; i++){

            int isAABB = Random::randrange(0, 1);
            int xPos = randrange(0 + padding, screenWidth - padding);
            int yPos = randrange(0 + padding, screenHeight - padding);

            if(isAABB == 3){
                Circle* c = new Circle(20.0, Vec2(xPos, yPos));
                randomShapes.push_back(c);
            }
            else{
                AABB* rect = new AABB(Vec2(xPos, yPos), 50.0, 50.0);
                randomShapes.push_back(rect);
            }

        }
    }

};

