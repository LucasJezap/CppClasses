#ifndef MY_STRING_S
#define MY_STRING_S

#include "mystring.h"

MyString::MyString(): size_(0), capacity_(initialBufferSize + my_string.capacity()) {
    my_string.reserve(initialBufferSize);
}

MyString::MyString(const char txt[]): my_string(std::string(txt)), size_(my_string.length()), capacity_(my_string.capacity()) {
}

MyString::MyString(const std::string s): my_string(s), size_(my_string.length()), capacity_(my_string.capacity()) {
}

void MyString::clear() {
    my_string.clear();
    size_ = 0;
    capacity_ = my_string.capacity();
}

std::ostream& operator<<(std::ostream& os, const MyString &ms) {
    os << ms.my_string;
    return os;
}

std::istream& operator>>(std::istream& is, MyString &ms) {
    std::string s;
    while (is >> s) {
        ms.my_string.append(s+' ');
    }
    ms.my_string.pop_back(); // extra ' '
    ms.size_ = ms.my_string.size();
    ms.capacity_ = ms.my_string.capacity();
    return is;
}

char MyString::operator[](size_t i) const {
    if (i >= size_)
        throw std::out_of_range("out of range!");
    return my_string.at(i);
}

MyString& MyString::operator+=(const char c) {
    my_string += c;
    size_ = my_string.size();
    capacity_ = my_string.capacity();
    return *this;
}

void MyString::trim() {
    auto left = std::find_if_not(my_string.begin(),my_string.end(),[](unsigned char c) {return std::isspace(c); });
    auto right = std::find_if_not(my_string.rbegin(),my_string.rend(),[](unsigned char c) {return std::isspace(c); }).base();
    my_string = std::string(left,right);
    size_ = my_string.size();
    capacity_ = my_string.capacity();
}

std::set<MyString> MyString::getUniqueWords() const {
    std::set<MyString> uniqueWords;
    std::string tmp = my_string;
    std::transform(tmp.begin(), tmp.end(), tmp.begin(), [](unsigned char c) {return std::tolower(c); });
    
    auto i = tmp.begin(), j = tmp.begin();

    while (i != tmp.end()) {
        i = std::find_if_not(i,tmp.end(),[](unsigned char c) {return std::isspace(c); });

        j = std::find_if(i,tmp.end(),[](unsigned char c) {return std::isspace(c); });
        
        auto left = std::distance(tmp.begin(),i);
        auto right = std::distance(tmp.begin(),j);

        std::string word = tmp.substr(left,right-left);

        MyString ms(word);

        uniqueWords.insert(ms);

        i = j;
    }

    return uniqueWords;
}

void MyString::toLower() {
    std::transform(my_string.begin(), my_string.end(), my_string.begin(), [](unsigned char c) {return std::tolower(c); });
}

std::map<MyString, size_t> MyString::countWordsUsage() const {
    std::map<MyString, size_t> wordsUsage;
    std::string tmp = my_string;
    
    auto i = tmp.begin(), j = tmp.begin();

    while (i != tmp.end()) {
        i = std::find_if_not(i,tmp.end(),[](unsigned char c) {return std::isspace(c); });

        j = std::find_if(i,tmp.end(),[](unsigned char c) {return std::isspace(c); });
        
        auto left = std::distance(tmp.begin(),i);
        auto right = std::distance(tmp.begin(),j);

        std::string word = tmp.substr(left,right-left);

        word.erase(std::remove_if(word.begin(),word.end(),[](int c) {return c < 97 or c > 122; }),word.end());

        MyString ms(word);

        auto f = wordsUsage.find(ms);

        if (f == wordsUsage.end())
            wordsUsage.insert(std::pair<MyString,int>(ms,1));
        
        else
            f->second++;

        i = j;
    }

    return wordsUsage;
}

char genChar() {
    return 97 + rand()%26;
}

MyString MyString::generateRandomWord(size_t len) {
    std::string s(10,' ');
    std::generate_n(s.begin(),len,genChar);
    
    MyString ms(s);
    return ms;
}

bool MyString::startsWith(std::string s) const {

    auto it = std::search(my_string.begin(),my_string.end(),s.begin(),s.end());

    return (it != my_string.end() and it == my_string.begin());
}

bool MyString::endsWith(std::string s) const {
    std::reverse(s.begin(),s.end());
    
    auto it = std::search(my_string.rbegin(),my_string.rend(),s.begin(),s.end());

    return (it != my_string.rend() and it == my_string.rbegin());
}

MyString MyString::join(const std::vector<MyString> ms) const {
    MyString result;

    for (MyString word: ms) {
        for (char c: word)
            result += c;
        for (char c: my_string)
            result += c;
    }
    for (size_t i=0; i<my_string.size(); i++)
        result.my_string.pop_back();


    return result;
}

bool MyString::all_of(int pred(int)) const {
    return std::all_of(my_string.cbegin(),my_string.cend(),pred);
}

#endif // MY_STRING_S