class SingleObject{
  static final SingleObject _instance = new SingleObject._internal();

  static SingleObject getInstance(){
    return _instance;
  }
  
  void showMessage(){
    print("Hello World!");
  }
  
  SingleObject._internal();
}

void main() {
  //Get the only object available
  SingleObject object = SingleObject.getInstance();
  
  // this would cause a compilation error
  //SingleObject singleObject = new SingleObject();
  
  //show the message
  object.showMessage();
}