class Stack { 
  int? _maxSize;
  List<int?>? _stackArray;
 late int _top;

  Stack(int maxSize) {
    this._maxSize = maxSize;
    this._stackArray = List<int>.filled(maxSize, 0);
    this._top = -1;
  }

  bool isEmpty() {
    return _top == -1;
  }

  bool isFull() {
    return _top == _maxSize !- 1;
  }

  void push(int value) {
    if (isFull()) {
      throw Exception("Stack overflow");
    } else {
      _top++;
      _stackArray![_top] = value;
    }
  }

  int  pop() {
    if (isEmpty()) {
      throw Exception("Stack underflow");
    } else {
      int poppedValue = _stackArray![_top]!;
      _top--;
      return poppedValue;
    }
  }

  int peek() {
    if (isEmpty()) {
      throw Exception("Stack is empty");
    } else {
      return _stackArray![_top]!;
    }
  }
display(){
  for (var i = _top; i >=0; i--) {
    print("[${_stackArray![i]}]");
  }
}
}

void main(List<String> args) {
  var s = Stack(10);
  s.push(10);
  s.push(20);
  s.push(30);
 print("before pop");
  s.display();
   s.pop();
   print("after pop");
   s.display();
}