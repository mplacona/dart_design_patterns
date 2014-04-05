class IShape{
  //void draw(){}
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
    if(type == "rectangle"){
      return new Rectangle();
    }
    else if(type == "circle"){
      return new Circle();
    }
    else if(type == "square"){
      return new Square();
    }
    
    return null;
  }
}

void main() {
  print("Hello, World!");
  var factory = new ShapeFactory();
  var rectangle = factory.getShape('rectangle');
  rectangle.draw();
}
