#ifndef MY_LIST_H
#define MY_LIST_H

#include <memory>
#include <iterator>

template <typename T> 
class MyList {

    protected:
        class Node {
            private:
                T data;
            public:
                Node *next;
                friend class MyList;

                Node() { this->data = nullptr; this->next = nullptr; }
                Node(T data) { this->data = data; this->next = nullptr; }
        };

    protected:
        int size_;
        Node *head;

    public:
        typedef T value_type;
        MyList() ;
        MyList(const MyList&) = delete;
        MyList & operator=(const MyList&) = delete;

        int size() const { return size_; }
        Node* getHead() const { return head; }
        
        class Iterator : public std::iterator<std::bidirectional_iterator_tag,int> {
            private: 
                Node *current;
            public:
                typedef T value_type;

                Iterator(): current(head) {};
                Iterator(Node *node): current(node) {};

                Iterator& operator=(Node *node) { this->current = node; return *this; }
                Iterator& operator++() { if(current) current = current->next; return *this; }
                Iterator operator++(int) { Iterator iterator = *this; ++*this; return iterator; }
                bool operator!=(const Iterator& iterator) { return current != iterator.current; }
                T& operator*() const { return current->data; }
        };
        
        Iterator begin() const { return Iterator(head); }
        Iterator end() const { return Iterator(nullptr); }
        
        void push_front(T element);
        T pop_front();

        T front();
        void remove(T element);

        template <class F>
        friend std::ostream& operator<<(std::ostream& os, const MyList<F>& ml);
};

template <class T> MyList<T>::MyList(): size_(0), head(nullptr) {
}

template <class T> void MyList<T>::push_front(T element) {
    Node *newOne = new Node(element);

    if (head == nullptr) {
        head = newOne;
    }
    else {
        newOne->next = head;
        head = newOne;
    }
    size_++;
}

template <class T> T MyList<T>::pop_front() {
    T val;

    if (head == nullptr) {
        throw std::out_of_range("Out of range!");
    }
    else {
        val = head->data;
        head = head->next;
    }
    size_--;
    return val;
}

template <class T> T MyList<T>::front() {
    T val = head->data;

    return val;
}

template <class T> void MyList<T>::remove(T element) {
    if(head == nullptr)
        return;

    auto curr = head;

    while (curr->data == element) {
        curr = curr->next;
        size_--;
    }

    head = curr;

    if(curr == nullptr) 
        return;
    
    auto nxt = curr->next;

    while (nxt != nullptr) {
        if (nxt->data == element) {
            curr->next = nxt->next;
            nxt = curr->next;
            size_--;
        }
        else {
            curr = curr->next;
            nxt = nxt->next;
        }
    }
}

template <class F>
std::ostream& operator<<(std::ostream &os, const MyList<F>& ml) {
    for (auto element : ml) {
        os << element << " ";
    }
    return os;
} 

#endif // MY_LIST_H