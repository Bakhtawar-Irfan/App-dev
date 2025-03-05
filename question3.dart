import 'dart:io';

void main() {
  print("Enter your age:");
  
  String? input = stdin.readLineSync(); // Reading user input
  
  try {
    int age = int.parse(input!); // Convert input to integer
    int yearsLeft = 100 - age;
    
    if (age < 0) {
      print("Age cannot be negative. Please enter a valid age.");
    } else {
      print("You have $yearsLeft years left until you turn 100.");
    }
  } catch (e) {
    print("Invalid input. Please enter a valid number for age.");
  }
}
