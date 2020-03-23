#ifndef FRACTION_H
#define FRACTION_H

class Fraction
{
       private:
              int num;
              int den;
       public:
              Fraction(int num = 0, int den = 1);
              void setNumerator(int num) { this->num = num; }
              void setDenominator(int den);
              int getNumerator() const { return num; }
              int getDenominator() const { return den; }

              Fraction operator+(const Fraction &f);
              Fraction operator*(const Fraction &f);
};

#endif // FRACTION_H
