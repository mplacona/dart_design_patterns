import 'package:unittest/unittest.dart';
import '../bin/singleton_pattern.dart';

void main(){
  test("'new' shouldn't be able to create a new instance of SingleObject", (){  
    expect(() => (new SingleObject()), throwsA(new isInstanceOf<NoSuchMethodError>()));
  });
  
  test("Should return and instance of SingleObject", (){
    expect(() => SingleObject.getInstance(), returnsNormally);
  });
  
  test("Calling getInstance() always returns the same instance of the object", (){
    expect(identical(SingleObject.getInstance().hashCode, SingleObject.getInstance().hashCode), isTrue);
  });
}