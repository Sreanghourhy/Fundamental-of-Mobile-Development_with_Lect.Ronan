
## **SELF-LEARNING 1 - Dart Syntax & Concepts**
 
To assess your understanding, you need to complete and submit this handout on MS Team
Name Hy Sreanghour (Group 1)
### **Objectives**
By completing this handout, you will:
1. Apply type inference for variable declarations.
2. Handle nullable and non-nullable variables.
3. Differentiate between `final` and `const`.
4. Manipulate strings, lists, and maps.
5. Use loops and conditions to control flow.
6. Define and call functions with positional and named arguments, understand arrow syntax 


### **Resources**
To help you complete this handout, use the following resources:
- [Variables](https://dart.dev/language/variables)
- [Null Safety](https://dart.dev/null-safety)
- [Built-in types](https://dart.dev/language/built-in-types)
- [Lists](https://dart.dev/language/collections)
- [Loops](https://dart.dev/language/loops)
- [Conditions](https://dart.dev/language/branches)
- [Functions](https://dart.dev/guides/language/language-tour#functions)

You can write you code on VS Code, or using this online editor
- [Install Dart and Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Online Dart Compiler](https://dartpad.dev/)

### **What You Need to Do**
1. For each `EXPLAIN`: Answer the question your own words, and illutrate with a code example
2. For each `CODE`: Provide code examples that illustrate the concepts.
---

### **Handout Structure: Dart Syntax and Concepts**

#### **1. Type Inference**


`EXPLAIN` : Explain how Dart infers the type of a variable.

=> Because Dart automatically knows the type of a variable based on the value you assign to it. For example, when we declare a variable like age with a number, Dart knows it's an int. Similarly, if we declare name with text, Dart knows it's a String.

`CODE` : Complete the bellow code to illustrate the concepts:

  ```dart
// Declare a int variable and let Dart infer its type
var age =20;
// Define a variable with an explicit String typ
var name = 'Hy Sreanghour';
  ```

---

#### **2. Nullable and Non-Nullable Variables**

`EXPLAIN` : Explain nullable vs non-nullable variables.

nullable is can hold the value or null. example you set age=20 after you can set back age to null.
non-nullable is can hold the value but it can't return back to null.

`EXPLAIN` : When is it useful to have nullable variables?
use it when need to represent the undefined value of an underlying value type or handle option data.
`CODE` : Complete the bellow code to illustrate the concepts:

  ```dart
// Declare a nullable integer variable and assign it a null value
int? myage; // Declare a nullable integer variable
myage = null; // Assign it a null value
// Declare a non-nullable integer variable and assign it a value
int age =20;
// Assign a new value to the nullable variable
myage = 30;
  ```

---

#### **3. Final and const**

`EXPLAIN` : Describe the difference between `final` and `const`.

`const` for values that are known and fixed before running the program.
<!-- need to value when runtime -->
`final` for values that can be set once, but only known during runtime.
<!-- need value after running time -->

`CODE` : Complete the bellow code to illustrate the concepts:


  ```dart
// Declare a final variable and assign it the current date and time
final current_date = DateTime.now();
print(current_date);
// Can you declare this variable as const? Why?
  No, you cannot declare this variable as const because the value of DateTime.now() is determined at runtime, not at compile time.
// Declare a const variable with a integer value
const int age = 20;
print (age);
// Can you reassign the value of this final variable? Why?
  ```
  No, you cannot reassign the value of this final variable because final variables can only be assigned once and cannot be changed afterward.

---

#### **4. Strings, Lists and Maps**

`CODE` : Complete the bellow code to illustrate the concepts:

  - **Strings:**
    ```dart
    // Declare two strings: firstName and lastName and an integer:age
    String firstName = "Hy";
    String lastName = "Sreanghour";
    int age = 20;
    // Concatenate the 2 strings and the age 
    String fullName = "$firstName $lastName, $age years old";
    print(fullName);
    // Print result
    print(fullName);
    //Hy Sreanghour, 20 years old
    ```

  - **Lists:**
    ```dart
    // Create a list of integers 
    List<int> numbers = [1, 2, 3, 4, 5];
    // Add a number to the list
    numbers.add(10);
    // Remove a number from the list
    numbers.remove(2);
    // Insert a number at a specific index in the list
    numbers.insert(0, 0);
    // Iterate over the list and print each number
    for (var number in numbers) {
      print(number);
    }
    ```

  - **Maps:**
    ```dart
    // Create a map with String keys and integer values
    final map = {'i':1,'o':2}
    // Add a new key-value pair to the map
    map['p'] = 3;
    // Remove a key-value pair from the map
    map.remove('i');
    // Iterate over the map and print each key-value pair
      map.forEach((key, value) {
    print('$key: $value');
  });
  
    ```

---

#### **5. Loops and Conditions**

`CODE` : Complete the bellow code to illustrate the concepts:

  ```dart
  // Use a for-loop to print numbers from 1 to 5
  for(int i=0, i<10, i++) {
    print('$i');
  }
  // Use a while-loop to print numbers while a condition is true
  int i
  while(i<=10){
    print('$i');
    i++;
  }
  // Use an if-else statement to check if a number is even or odd
  ```
    if(number % 2 ==0){
      print('it is even');
    }else{
      print('it is odd');
    }
---

#### **6. Functions**

`EXPLAIN` : Compare positional and named function arguments

Positional arguments: Must be passed in the order they are defined.
Named arguments: Can be passed in any order, using their names. They can be made optional or required.

`EXPLAIN` : Explain when and how to use arrow syntax for functions
We use arrow syntax (=>) for simple functions with a single expression. It’s a shorthand that eliminates the need for curly braces.
`CODE` : Complete the bellow code to illustrate the concepts:

  - **Defining and Invoking a Function:**
    ```dart
    // Define a function that takes two integers and returns their sum
    int sum(var a, var b){
      return a+b;
    }
    // Call the function and print the result
    print(sum(a+b));
    ```

  - **Positional vs Named Arguments:**
    ```dart
    // Define a function that uses positional arguments
    int multiply(int a, int b) 
    return a * b;

    // Define another function that uses named arguments with the required keyword (ex: getArea with rectangle arguments)
    int getArea({required int width, required int height})
    return width * height;
    // Call both functions with appropriate arguments
    int square(int number)
    return number * number;

    ```

`EXPLAIN` : Can positional arguement be ommited? Show an example4

No, positional arguments cannot be omitted unless they are marked as optional.

`EXPLAIN` : Can named arguement be ommited? Show an example
Yes, if they are not marked as required. Optional named arguments can be omitted.

  - **Arrow Syntax:**
    ```dart
    // Define a function using arrow syntax that squares a number
    int add(int a, int b) => a + b;

    // Call the arrow function and print the result
    print(add(a+b));
    ```

---
 