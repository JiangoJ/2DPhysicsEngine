#include <iostream>
#include <vector>
#include "./Objects/Objects.h"
#include "./Physics/Physics.h"
#include "raylib.h"

//----------------------------------------------------------------------------------
// Global Variables Definition
//----------------------------------------------------------------------------------
int screenWidth = 1000;
int screenHeight = 700;
int padding = 50;
int numberOfShapes = 10;

std::vector<Shape*> randomShapes;

//----------------------------------------------------------------------------------
// Module Functions Declaration
//----------------------------------------------------------------------------------
void UpdateDrawFrame(void);     // Update and Draw one frame

//----------------------------------------------------------------------------------
// Main Enry Point
//----------------------------------------------------------------------------------
int main()
{
    // Initialization
    //--------------------------------------------------------------------------------------
    InitWindow(screenWidth, screenHeight, "Physics Engine");

    SetTargetFPS(60);   // Set our game to run at 60 frames-per-second
    //--------------------------------------------------------------------------------------
    
    Random::createRandomShapes(numberOfShapes, randomShapes, screenWidth, screenHeight, padding);

    // Main game loop
    while (!WindowShouldClose())    // Detect window close button or ESC key
    {
        UpdateDrawFrame();
    }
    // De-Initialization
    //--------------------------------------------------------------------------------------
    CloseWindow();        // Close window and OpenGL context
    //--------------------------------------------------------------------------------------

    return 0;
}


//----------------------------------------------------------------------------------
// Module Functions Definition
//----------------------------------------------------------------------------------
void UpdateDrawFrame(void)
{
    // Update
    //----------------------------------------------------------------------------------
    // TODO: Update your variables here
    //----------------------------------------------------------------------------------
    
    float dx = 0.0;
    float dy = 0.0;
    float rotation = 0.0;
    float rotationSpeed = 3.14/2;
    float speed = 200.0;

    if (IsKeyDown(KEY_RIGHT)) {
        dx += 1.0;
    }
    if (IsKeyDown(KEY_LEFT)) {
        dx -= 1.0;
    }
    if (IsKeyDown(KEY_UP)) {
        dy -= 1.0;
    }
    if (IsKeyDown(KEY_DOWN)) {
        dy += 1.0;
    }
    if (IsKeyDown(KEY_R)){
        rotation += 1.0;
    }

    if(dx != 0 || dy != 0){

        Vec2 direction(dx, dy);
        direction.normalize();

        direction *= speed;
        direction *= GetFrameTime();

        randomShapes[0]->moveBy(direction);
    }

    rotation *= rotationSpeed;
    rotation *= GetFrameTime();

    randomShapes[0]->rotateBy(rotation);

    for(int i = 0; i < randomShapes.size(); ++i){

        for(int j = i+1; j < randomShapes.size(); ++j){

            Collisions::DetectCollision(randomShapes[i], randomShapes[j]);
        }
    }


    // Draw
    //----------------------------------------------------------------------------------
    BeginDrawing();

        ClearBackground(RAYWHITE);

        for(auto it = randomShapes.begin(); it != randomShapes.end(); ++it){
            
            (*it)->drawShape(BLACK);
        }
        
    EndDrawing();
    //----------------------------------------------------------------------------------
}
