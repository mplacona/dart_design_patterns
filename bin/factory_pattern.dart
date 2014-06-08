class IShape{
  void draw(){}
}

class Rectangle implements IShape{
  void draw(){
    print("Inside Rectangle::draw() method.");  
  }
}

class Square implements IShape{
  void draw(){
    print("Inside Square::draw() method.");
  }
}

class Circle implements IShape{
  void draw(){
    print("Inside Circle::draw() method.");
  }
}

class ShapeFactory{
  IShape getShape(String shapeType){
    // check for nulls being passed
    if(shapeType == null){
      return null;
    }
    
    // check for types
    var type = shapeType.toLowerCase();
    switch(type){
      case "rectangle":
        return new Rectangle();
      case "circle":
        return new Circle();
      case "square":
        return new Square();
    }  
    // we always return null if there are no matches
    return null;
  }
}

void main() {
  var factory = new ShapeFactory();
  var rectangle = factory.getShape('rectangle');
  rectangle.draw();
}
