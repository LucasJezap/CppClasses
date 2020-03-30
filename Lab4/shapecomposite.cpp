#ifndef SHAPECOMPOSITE_S
#define SHAPECOMPOSITE_S

#include <memory>

#include "shapecomposite.h"

namespace Shapes
{

ShapeComposite::ShapeComposite(std::shared_ptr<Shape> shape1, std::shared_ptr<Shape> shape2, ShapeOperation operation):
shape1(shape1), shape2(shape2), operation(operation)
{
}

bool ShapeComposite::isIn(int x, int y) const {
    bool isInFirst = shape1->isIn(x,y);
    bool isInSecond = shape2->isIn(x,y);
    switch(operation) {
        case ShapeOperation::SUM: {
            return isInFirst or isInSecond;
        }
        case ShapeOperation::INTERSECTION: {
            return isInFirst and isInSecond;
        }
        case ShapeOperation::DIFFERENCE: {
            return isInFirst and !isInSecond;
        }
        default: {
            return true;
        }
    }
}

} // namespace Shapes

#endif // SHAPECOMPOSITE_S
