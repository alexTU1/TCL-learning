#include <iostream>
#include <iomanip>
#include <stdio.h>
#include "./lib/inc/lib.h"
#include "./lib/inc/adder.h"
#include "./lib/inc/subtracter.h"
#include "./lib/inc/multiplier.h"
#include "./lib/inc/divider.h"
#include "./lib/inc/mymath.h"
using namespace std;

void getExpo(){ 
    int base,exponent;
    cout<<"Enter Base: ";
    cin>>base;
    cout<<"Enter Exponent: ";
    cin>>exponent;
    std::cout << std::endl;
    std::cout<<"Exponential: "<<base<<"^"<<exponent<<" = "<<expo(base,exponent);
    std::cout << std::endl;
}

void Circ(){
    double radius;
    cout<<"Enter radius: ";
    cin>>radius;
    std::cout << std::endl;
    getCirc(radius);
    std::cout << std::endl;
}

void Rect(){
    double width,length;
    cout<<"Enter width: ";
    cin>>width;
    cout<<"Enter length: ";
    cin>>length;
    std::cout << std::endl;
    getRect(width, length);
    std::cout << std::endl;
}

int main(){
    int a,b,choice,answer;
    double myQuotient;
    //printhw();
    getExpo();
    Circ();
    Rect();

    cout<<"Enter a Number"<<endl;
    cin>>a;
    cout<<"Enter another number"<<endl;
    cin>>b;

    cout<<"Choose operator:\n1.Addition 2.Subtraction 3.Multiplication 4.Division"<<endl;
    cin>>choice;

    switch(choice){
        case 1:
            answer = alex_add(a,b);
            std::cout<<"Your numbers add up to "<<answer<<endl;
            break;
        case 2:
            answer = alex_sub(a,b);
            std::cout<<"Your numbers subtract to "<<answer<<endl;
            break;
        case 3:
            answer = alex_multi(a,b);
            std::cout<<"Your numbers multiply to "<<answer<<endl;
            break;
        case 4:
            myQuotient = alex_divide(a,b);
            std::cout<<"Your numbers divde to "<<std::fixed<<std::setprecision(2)<<myQuotient<<endl;
            break;
    }

}

