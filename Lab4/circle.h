#ifndef CIRCLE_H
#define CIRCLE_H

#include "shape.h"

namespace Shapes
{
class Circle : public Shape
{
    private:
        int xCenter,yCenter,radius;

    public:
        ~Circle() {};
        Circle(int xCenter, int yCenter, int radius);

        int getX() const { return xCenter; } 
        int getY() const { return yCenter; }
        int getRadius() const { return radius; }

        bool isIn(int x, int y) const override;
};
} // namespace Shapes

#endif // CIRCLE_H
