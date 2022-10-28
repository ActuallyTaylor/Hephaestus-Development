/*
    Hephaestus.hpp
    Zachary Lineman
    October 26th 2021

    =================
    DESCRIPTION
    =================
*/

#ifndef Hephaestus_hpp
#define Hephaestus_hpp

#include <iostream>
#include <stdio.h>
#include <stdlib.h>

// Include GLEW & GLFW headers
#include <GL/glew.h>
#include <GLFW/glfw3.h>

// Include internal classes
#include "Window/Window.hpp"

class Hephaestus
{
private:
    GLFWwindow *window;

public:
    Hephaestus();
};

#endif