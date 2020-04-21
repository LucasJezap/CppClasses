#ifndef MY_STRING_H
#define MY_STRING_H

#include <vector>
#include <bits/stdc++.h>
#include <string>

class MyString {
    private:
        std::string my_string;
        size_t size_;
        size_t capacity_;

    public:
        static const int initialBufferSize = 20;
        MyString();
        MyString(const char txt[]);
        MyString(const std::string s);

        size_t size() const { return size_; }
        size_t capacity() const { return capacity_; }
        bool empty() const { return size_ == 0; }

        void clear();

        friend std::ostream& operator<<(std::ostream& os, const MyString& ms);
        friend std::istream& operator>>(std::istream& is, MyString& ms);

        bool operator==(const MyString &ms) const { return my_string.compare(ms.my_string) == 0; }
        bool operator!=(const MyString &ms) const { return my_string.compare(ms.my_string) != 0; }
        bool operator>(const MyString &ms) const { return my_string.compare(ms.my_string) > 0; }
        bool operator<(const MyString &ms) const { return my_string.compare(ms.my_string) < 0; }

        char operator[](size_t i) const;
        MyString& operator+=(const char c);

        std::string::const_iterator begin() const { return my_string.begin(); }
        std::string::const_iterator end() const { return my_string.end(); }

        std::set<MyString> getUniqueWords() const;
        std::map<MyString, size_t> countWordsUsage() const;

        static MyString generateRandomWord(size_t len);

        bool startsWith(std::string s) const;
        bool endsWith(std::string s) const;

        MyString join(const std::vector<MyString> ms) const;

        bool all_of(int pred(int)) const;

        void toLower();

        void trim();
};

#endif // MY_STRING_H