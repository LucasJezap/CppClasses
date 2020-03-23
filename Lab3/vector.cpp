#include "vector.h"
#include <cstring>
#include <stdexcept>

Vector::Vector(int dataNumber): size_(0), capacity_(dataNumber) {
    data = new Fraction[dataNumber];
}

Vector::Vector(const Vector &v): size_(v.size()), capacity_(v.capacity()) {
    this->data = new Fraction[v.size()];
    std::memcpy(data, v.data, sizeof(Fraction)*v.size());
}

Vector::Vector(Vector &&v): data(v.data), size_(v.size()), capacity_(v.capacity()) {
    v.data = nullptr;
    v.size_ = v.capacity_ = 0;
}

Vector::~Vector() {
    delete[] data;
    size_ = capacity_ = 0;
}

Vector& Vector::operator = (const Vector &v) {
    if (this != &v) {
        data = v.data;
        size_ = v.size_;
        capacity_ = v.capacity_;
    }
    return *this;
}

Vector& Vector::operator = (Vector &&v) {
    if (this != &v) {
        delete[] data;
        data = v.data;
        size_ = v.size_;
        capacity_ = v.capacity_;
        v.data = nullptr;
        v.size_ = v.capacity_ = 0;
    }
    return *this;
}

void Vector::push_back(const Fraction &f) {
    if (this->size_ == this->capacity_) {
        data = (Fraction *)realloc(data,capacity()+1);
        this->capacity_++;
    }
    
    data[this->size_++] = f;
}


Fraction& Vector::operator[](size_t index) {
    if(index >= this->size_) {
        throw std::out_of_range("This index is out of range!");
    }
    else {
        return data[index];
    }
}

const Fraction& Vector::operator[](size_t index) const {
    if(index >= this->size_) {
        throw std::out_of_range("This index is out of range!");
    }
    else {
        return data[index];
    }
}
