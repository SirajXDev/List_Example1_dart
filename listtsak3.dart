import 'dart:io';

void main() {
 int numElements;
 do {
   stdout.write("Enter a positive integer: ");
   numElements = int.parse(stdin.readLineSync().toString());
 } while (numElements <= 0);

 List<int> numbers = [];
 int sumAll = 0, sumEven = 0, sumOdd = 0;

 for (int i = 0; i < numElements; i++) {
   stdout.write("Enter element $i: ");
   int element = int.parse(stdin.readLineSync().toString());
   numbers.add(element);
   sumAll += element;

   if (element % 2 == 0) {
     sumEven += element;
   } else {
     sumOdd += element;
   }
 }

 print("The list is: $numbers");
 print("Sum of all elements: $sumAll");
 print("Sum of even elements: $sumEven");
 print("Sum of odd elements: $sumOdd");

 if (sumAll == sumEven + sumOdd) {
   print("The sum of all elements is equal to the sum of even and odd elements.");
 } else {
   print("The sum of all elements is not equal to the sum of even and odd elements.");
 }
}
