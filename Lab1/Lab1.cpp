#include <iostream>
#include <string>

using namespace std;


class Cone {
    private:
        const string name = "Cone number " + to_string(coneCount);
        inline static const double cHeight = 1;
        double radius;
        double height;
        inline static int coneCount = 0;
        inline static constexpr double cRadius = 1;
    public:
        Cone();

        Cone(double radius, double height = 1);

        void setRadius(double radius) { this->radius = radius; }
        void setHeight(double height) { this->height = height; }

        const double getRadius() { return this->radius; }
        const double getHeight() { return this->height; }

        const void toString() { cout << "Cone radius: " << this->radius << "\nCone height: " << this->height << "\n\n"; }

        static int getCount() { return coneCount; }

        void getData (istream &in);
        void putData (ostream &out);

        string getName() { return this->name; }
        int getCHeight() { return this->cHeight; }
        int getCRadius() { return this->cRadius; }
};

Cone :: Cone() {
    this->radius = getCRadius();
    this->height = getCHeight(); 
    coneCount++;
}

Cone :: Cone(double radius, double height) {
    this->radius = radius;
    this->height = height;
    coneCount++;
}

void Cone :: getData (istream &in) {
    in >> this->radius >> this->height;
}

void Cone :: putData (ostream &out) {
    out << "Cone radius: " << this->radius << "\nCone height: " << this->height << "\n\n";
}

int main() {
    Cone cone1;
    Cone cone2(2.5);
    Cone cone3(5.5,7);

    cout << "Testing toString method\n\n";

    cone1.toString();
    cone2.toString();
    cone3.toString();

    cout << "Testing setters for cone1(to values (20,10))\n\n";

    cone1.setHeight(10);
    cone1.setRadius(20);

    cone1.toString();

    cout << "Testing getters for cone2(values (2.5,1))\n\n";

    cout << cone2.getRadius() << " " << cone2.getHeight() << "\n\n";

    cout << "Testing static variable coneCount (should be 3)\n\n";

    cout << cone1.getCount() << "\n\n";

    cout << "Testing istream to cone4 (putting value (1,2))" << "\n\n";

    Cone cone4;
    cone4.getData(cin);

    cout << "Testing ostream to cone4 (should be (1,2))" << "\n\n";

    cone4.putData(cout);

    return 0;
}