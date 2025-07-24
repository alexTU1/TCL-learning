#include <iostream>
#include <stdio.h>
#include "./lib/inc/lib.h"
#include "./lib/inc/adder.h"
#include "./lib/inc/subtracter.h"
#include "./lib/inc/multiplier.h"
#include "./lib/inc/divider.h"
using namespace std;

int main(){
    int a,b,choice,answer;
    printhw();
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
            answer = alex_divide(a,b);
            std::cout<<"Your numbers divde to "<<answer<<endl;
            break;
    }
}