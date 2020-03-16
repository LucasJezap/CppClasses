#ifndef MATRIX_H
#define MATRIX_H

#include <iosfwd>

#include "matrixElement.h"


class TwoDimensionMatrix
{
    private:
    
        const static int size = 2;
        MatrixElement matrix[size][size];

    public:

        TwoDimensionMatrix();
        TwoDimensionMatrix(const TwoDimensionMatrix &m);
        TwoDimensionMatrix(const MatrixElement matrix[size][size]);

        MatrixElement get(int i, int j) const { return matrix[i][j]; }
        int static constexpr getSize() { return size; }

        friend std::ostream& operator<<(std::ostream & out, const TwoDimensionMatrix &m);

        friend TwoDimensionMatrix operator+(const TwoDimensionMatrix& matrix1, const TwoDimensionMatrix& matrix2);
        TwoDimensionMatrix& operator*=(MatrixElement number);

        TwoDimensionMatrix operator&&(const TwoDimensionMatrix& matrix) const;

        const MatrixElement* operator[](size_t i) const { return matrix[i]; }
        MatrixElement* operator[](size_t i) { return matrix[i]; }

        operator size_t () const;
};

#endif // MATRIX_H
