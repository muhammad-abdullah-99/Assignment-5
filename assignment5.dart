// Answer 1

void main() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  if (expenses.containsKey('fri')) {
    expenses['fri'] = 5000.0;
  } else {
    expenses['fri'] = 5000.0;
  }

  print(expenses);
}

// Answer 1
// Answer 2

import 'dart:io';
import 'dart:math';

void main() {
  double radius = getRadius();
  double area = calculateArea(radius);
  print('The area of the circle is $area');
}

double getRadius() {
  stdout.write('Enter the radius of the circle: ');
  double radius = double.parse(stdin.readLineSync()!);
  return radius;
}

double calculateArea(double radius) {
  double area = pi * pow(radius, 2);
  return area;
}

// Answer 2
// Answer 3

import 'dart:io';
import 'dart:math';

void main() {
  double a = getSideLength('a');
  double b = getSideLength('b');
  double c = calculateHypotenuse(a, b);
  print('The length of the hypotenuse is $c');
}

double getSideLength(String name) {
  stdout.write('Enter the length of side $name: ');
  double sideLength = double.parse(stdin.readLineSync()!);
  return sideLength;
}

double calculateHypotenuse(double a, double b) {
  double c = sqrt(pow(a, 2) + pow(b, 2));
  return c;
}

// Answer 3 
// Answer 4

import 'dart:io';

void main() {
  String text = getText();
  String reversedText = reverseText(text);
  print('The reversed text is: $reversedText');
}

String getText() {
  stdout.write('Enter a text: ');
  String text = stdin.readLineSync()!;
  return text;
}

String reverseText(String text) {
  String reversedText = '';
  for (int i = text.length - 1; i >= 0; i--) {
    reversedText += text[i];
  }
  return reversedText;
}

// Answer 4
// Answer 5

import 'dart:io';

void main() {
  // Sign up three users
  Map<String, dynamic> user1 = signUpUser();
  Map<String, dynamic> user2 = signUpUser();
  Map<String, dynamic> user3 = signUpUser();

  // Login with correct and incorrect credentials
  print('Login with correct credentials:');
  bool success1 = loginUser(user1['email'], user1['password']);
  bool success2 = loginUser(user2['email'], user2['password']);

  print('\nLogin with incorrect credentials:');
  bool success3 = loginUser(user1['email'], 'wrongpassword');
  bool success4 = loginUser('wrongemail@example.com', user2['password']);
}

Map<String, dynamic> signUpUser() {
  stdout.write('Enter your username: ');
  String username = stdin.readLineSync()!;

  stdout.write('Enter your email: ');
  String email = stdin.readLineSync()!;

  stdout.write('Enter your password: ');
  String password = stdin.readLineSync()!;

  stdout.write('Enter your phone number (optional): ');
  String? phoneNumber = stdin.readLineSync();

  Map<String, dynamic> user = {'username': username, 'email': email, 'password': password, 'phoneNumber': phoneNumber};
  print('User signed up successfully!\n');
  return user;
}

bool loginUser(String email, String password) {
  // Check if there is a user with the given email and password
  // Here, we assume that there is a list of registered users named 'users'
  List<Map<String, dynamic>> users = [
    {'username': 'alice', 'email': 'alice@example.com', 'password': 'password1'},
    {'username': 'bob', 'email': 'bob@example.com', 'password': 'password2', 'phoneNumber': '1234567890'},
    {'username': 'charlie', 'email': 'charlie@example.com', 'password': 'password3'},
  ];

  bool foundUser = false;
  for (Map<String, dynamic> user in users) {
    if (user['email'] == email && user['password'] == password) {
      foundUser = true;
      break;
    }
  }

  // Print a message based on whether the user was found or not
  if (foundUser) {
    print('Login successful!');
    return true;
  } else {
    print('Login failed. Please check your email and password.');
    return false;
  }
}


// Answer 5
// Answer 6

import 'dart:io';

void main() {
  stdout.write('Enter the base number: ');
  int base = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the exponent: ');
  int exponent = int.parse(stdin.readLineSync()!);

  int result = power(base, exponent);
  print('$base ^ $exponent = $result');
}

int power(int base, int exponent) {
  if (exponent < 0) {
    return 1 / positivePower(base, -exponent);
  } else {
    return positivePower(base, exponent);
  }
}

int positivePower(int base, int exponent) {
  if (exponent == 0) {
    return 1;
  } else if (exponent == 1) {
    return base;
  } else {
    return base * positivePower(base, exponent - 1);
  }
}

// Answer 6
// Answer 7

int[] countVowelsAndConsonants(String str) {
  int vowels = 0;
  int consonants = 0;

  for (int i = 0; i < str.length; i++) {
    String char = str[i].toLowerCase();
    if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
      vowels++;
    } else if (char >= 'a' && char <= 'z') {
      consonants++;
    }
  }

  return [vowels, consonants];
}

// Answer 7