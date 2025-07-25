#include <iostream>
#include <cmath>
#include "../inc/mymath.h"

const double PI = 3.14159265358979323846;

int expo(int base, int exponent){
    double answer = 1.0;
    for(int i=0; i<exponent; i++){
        answer *= base;
    }
    return answer;
}

void getCirc(double radius){
    double diameter = radius * 2;
    double area = PI * (radius*radius);
    double circumference = 2 * PI * radius;
    std::cout<<"Measurements of your Circle\n\n";
    std::cout<<"Radius: "<<radius<<"\nDiameter: "<<diameter<<"\nCircumference: "<<circumference<<"\nArea: "<<area<<"\n";
}

void getRect(double width, double length){
    double area = width * length;
    double perimeter = (2 * width) + (2 * length);
    double diagonal = sqrt((expo(width,2)) + (expo(length,2)));
    std::cout<<"Measurements of your Rectangle\n\n";
    std::cout<<"Width: "<<width<<"\nLength: "<<length<<"\nPerimeter: "<<perimeter<<"\nArea: "<<area<<"\nDiagonal: "<<diagonal<<"\n";
}