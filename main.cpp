#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;

    int a = 2; 
    int b = 1; 

    std::cout << "Add: " << calc.add(a, b) << std::endl;        
    std::cout << "Subtract: " << calc.sub(a, b) << std::endl; 

    return 0;
}
