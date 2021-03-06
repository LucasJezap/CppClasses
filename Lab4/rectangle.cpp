#ifndef RECTANGLE_S
#define RECTANGLE_S

#include "rectangle.h"

namespace Shapes
{

Rectangle::Rectangle(int xFrom, int yFrom, int xTo, int yTo):
xFrom(xFrom), yFrom(yFrom), xTo(xTo), yTo(yTo)
{
}

bool Rectangle::isIn(int x, int y) const {
    bool isX = (x >= xFrom and x <= xTo);
    return (isX)? (y >= yFrom and y <= yTo): false;
}

} // namespace Shapes

#endif // RECTANGLE_S
