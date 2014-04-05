import 'package:unittest/unittest.dart';
import '../bin/factory_pattern.dart';

void main(){
  test("new instance of Shape is created", (){
    var shape = new IShape();
    expect(shape is IShape, isTrue);
  });
  
  test("new instance os Rectangle is created", (){
    var rectangle = new Rectangle();
    expect(rectangle is IShape, isTrue);
  });
  
  test("new instance os Circle is created", (){
    var circle = new Circle();
    expect(circle is IShape, isTrue);
  });
  
  test("new instance os Square is created", (){
    var circle = new Square();
    expect(circle is IShape, isTrue);
  });
  
  test("new instance of ShapeFactory is created", (){
    var shape_factory = new ShapeFactory();
    expect(shape_factory is ShapeFactory, isTrue);
  });
  
  test("Shape:getShape() returns null if null passed", (){
    var shape_factory = new ShapeFactory();
    expect(shape_factory.getShape(null), isNull);
  });
  
  test("Shape:getShape() returns null if invalid passed", (){
    var shape_factory = new ShapeFactory();
    expect(shape_factory.getShape('invalid'), isNull);
  });
  
  test("Shape::getShape() returns a shape of type", (){
    var shape_factory = new ShapeFactory();
    expect(shape_factory.getShape('RECTANGLE') is Rectangle, isTrue);
    expect(shape_factory.getShape('CIRCLE') is Circle, isTrue);
    expect(shape_factory.getShape('SQUARE') is Square, isTrue);
  });
  
  test("Shape::draw() returns the null output", (){
    var shape_factory = new ShapeFactory();
    var rectangle = shape_factory.getShape("RECTANGLE");
    var draw_response = rectangle.draw();
    expect(draw_response, isNull);
  });
}
