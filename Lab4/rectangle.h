#ifndef RECTANGLE_H
#define RECTANGLE_H

#include "shape.h"

namespace Shapes
{
class Rectangle : public Shape
{
    private:
        int xFrom,yFrom,xTo,yTo;

    public:
        ~Rectangle() {};

        Rectangle(int xFrom, int yFrom, int xTo, int yTo);

        int getX() const { return xFrom; } 
        int getY() const { return yFrom; }
        int getXTo() const { return xTo; }
        int getYTo() const { return yTo; }

        bool isIn(int x, int y) const override;


};
} // namespace Shapes

#endif // RECTANGLE_H
