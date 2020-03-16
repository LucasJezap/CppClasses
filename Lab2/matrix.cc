#include <iostream>

using namespace std;

#include "matrix.h"

TwoDimensionMatrix::TwoDimensionMatrix() {
    for(int i=0; i<size; i++) 
        for(int j=0; j<size; j++)
            matrix[i][j] = 0;
}

TwoDimensionMatrix::TwoDimensionMatrix(const TwoDimensionMatrix &m) {
    for(int i=0; i<size; i++)
        for(int j=0; j<size; j++)
            matrix[i][j] = m.matrix[i][j];
}

TwoDimensionMatrix::TwoDimensionMatrix(const MatrixElement matrix[size][size]) {
    for(int i=0; i<size; i++)
        for(int j=0; j<size; j++) 
            this->matrix[i][j] = matrix[i][j];
}

ostream& operator<<(ostream & out, TwoDimensionMatrix const &m) {
    for(int i=0; i<m.getSize(); i++) {
        for(int j=0; j<m.getSize(); j++)
            out << m.get(i,j) << " ";
    }

    return out;
}

TwoDimensionMatrix operator+(const TwoDimensionMatrix& matrix1, const TwoDimensionMatrix& matrix2) {
    int size = matrix1.getSize();
    TwoDimensionMatrix m;

    for(int i=0; i<size; i++)
        for(int j=0; j<size; j++)
            m.matrix[i][j] = matrix1.matrix[i][j] + matrix2.matrix[i][j];

    return m;
}

TwoDimensionMatrix& TwoDimensionMatrix::operator*=(MatrixElement number) {
    for(int i=0; i<size; i++)
        for(int j=0; j<size; j++)
            this->matrix[i][j] *= number;

    return *this;
}

TwoDimensionMatrix TwoDimensionMatrix::operator&&(const TwoDimensionMatrix& matrix) const{
    TwoDimensionMatrix m;

    for (int i=0; i<size; i++)
        for(int j=0; j<size; j++)
            m.matrix[i][j] = this->matrix[i][j] && matrix.matrix[i][j];

    return m;
}

TwoDimensionMatrix::operator size_t() const {
    size_t res = (size_t) size;
    
    return res;
}