import 'dart:math';

import 'package:flutter/material.dart';
import 'private.dart';

class Figure {
   num area = 0;
}

mixin Angles { 
   num angles = 4;
   double a = 45.0;
   void geom() {
     print(sin(a));
   }
}

class Quadrangle extends Figure with Angles{ 
   num left, top, width, height; 
   Quadrangle(this.left, this.top, this.width, this.height);
    
   num get right => left + width; 
   set right(num value) => left = value - width; 
   num get bottom => top + height; 
   set bottom(num value) => top = value - height; 
} 

int sum (int a, int b, {int c = 12}) {
      return a + b + c; }

int factorial(int n)
{
  assert(n >= 0);
  assert(n <= 10);

  if (n < 2) {
    return 1;
  }

  return factorial(n - 1) * n;
}
void main() {
  runApp(MaterialApp(home: Text('Inna Glushchenko'), ));
  var Rect1 = Quadrangle(12, 30, 28, 67);
  Rect1.geom();

  PrivateClass obj = PrivateClass.fromVal(1);
  obj.val = -1;
  print(obj.val);

  var result = sum(1, 2, c: 0);
  print(result);

  print(factorial(3));

  var objects = [1, "a", 2, "b", 3];
  print(objects.where((e) => e is int));

  var list = <int>[];
  list.add(88);
  list.add(8);
  list.add(59);
  list.add(3);
  list.sort();
  list.forEach(print);
  

}

