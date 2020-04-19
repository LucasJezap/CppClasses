#ifndef MY_SORTING_H
#define MY_SORTING_H

#include "mylist.h"

template <class T>
void mySort(T &arr) {
    int length = std::size(arr);

    for(int i=0; i<length; i++) {
        for (int j=0; j<length-1; j++)
            if(arr[j] > arr[j+1]) {
                auto tmp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = tmp;
            }
    }
}

template <typename T>
void mySort(MyList<T> &arr) {
    int length = arr.size();
    if (length == 0 or length == 1) return;

    for(int i=0; i<length; i++) {
        auto next = arr.begin();
        ++next;
        for (auto it=arr.begin(); next != arr.end(); ++it) {
            if (*it > *next) {
                auto tmp = *it;
                *it = *next;
                *next = tmp;
            }
            ++next;
        }
    }
}

template <int m, int n>
void mySort(char (&arr)[m][n]) {
    for (int i=0; i<m; i++) {
        for(int j=0; j<m-1; j++) {
            char tmp1[n],tmp2[n];
            snprintf(tmp1,n+1,"%s",arr[j]);
            snprintf(tmp2,n+1,"%s",arr[j+1]);
            for(int i=0; i<m; i++) {
                tmp1[i] = ::toupper(tmp1[i]);
                tmp2[i] = ::toupper(tmp2[i]);
            }
            if (strcmp(tmp1,tmp2) > 0) {
                char tmp[n];
                snprintf(tmp,n+1,"%s",arr[j]);
                snprintf(arr[j],n+1,"%s",arr[j+1]);
                snprintf(arr[j+1],n+1,"%s",tmp);
            }
        }
    }
}

#endif // MY_SORTING_H