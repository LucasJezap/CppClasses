#ifndef CIRCLE_S
#define CIRCLE_S

#include <cmath>
#include "circle.h"

namespace Shapes
{

Circle::Circle(int xCenter, int yCenter, int radius):
xCenter(xCenter),yCenter(yCenter),radius(radius)
{
}

bool Circle::isIn(int x, int y) const {
    double dist = sqrt(pow(x-xCenter,2)+pow(y-yCenter,2));
    return dist <= radius;
}

} // namespace Shapes

#endif // CIRCLE_S
