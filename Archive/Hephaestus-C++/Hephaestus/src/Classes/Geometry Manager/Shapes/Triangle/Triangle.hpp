//
//  Triangle.hpp
//  Hephaestus
//
//  Created by Zachary lineman on 9/13/21.
//

#ifndef Triangle_hpp
#define Triangle_hpp

#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <GL/glew.h>
#include <GLFW/glfw3.h>

#include "Vertex.hpp"

using namespace std;

class Triangle {
    
public:
    Triangle (Vertex triangleVertices[3]);
    vector<Vertex> vertices;
    int vertexAmount ();
private:

};
#endif /* Triangle_hpp */
