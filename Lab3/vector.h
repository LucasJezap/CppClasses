#ifndef VECTOR_H
#define VECTOR_H

#include "fraction.h"
#include "utils/memoryManagement.h"

class Vector
{
    private:
        Fraction *data;
        int capacity_;
        int size_;

    public:
        Vector(int dataNumber = 0);
        Vector(const Vector &v);
        Vector(Vector &&v);

        ~Vector();

        int size() const { return size_; }
        int capacity() const { return capacity_; }

        Vector& operator = (const Vector &v);
        Vector& operator = (Vector &&v);

        void push_back(const Fraction &f);

        Fraction& operator[](size_t index);
        const Fraction& operator[](size_t index) const;
};

#endif // VECTOR_H
