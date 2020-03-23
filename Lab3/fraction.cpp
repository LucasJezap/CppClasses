#include "fraction.h"
#include <iostream>

Fraction::Fraction(int num, int den): num(num), den(den) {
    if (den == 0) 
        throw std::invalid_argument("Invalid argument! Denominator can't be 0!");
}

void Fraction::setDenominator(int den) {
    if (den == 0) {
        throw std::invalid_argument("Invalid argument! Denominator can't be 0!");
    }
    else 
        this->den = den;
}

int gcd(int a, int b) {
    while(a  != b) {
        if (a > b) a -= b;
        else b -= a;
    }
    return a;
}

Fraction Fraction::operator+(const Fraction& f) {
    int newNum = num*f.den + den*f.num;
    int newDen = den * f.den;
    int newGCD = gcd(newNum, newDen);
    Fraction p(newNum/newGCD,newDen/newGCD);
    return p;
}

Fraction Fraction::operator*(const Fraction& f) {
    int newNum = num * f.num;
    int newDen = den * f.den;
    int newGCD = gcd(newNum, newDen);
    Fraction p(newNum/newGCD,newDen/newGCD);
    return p;   
}