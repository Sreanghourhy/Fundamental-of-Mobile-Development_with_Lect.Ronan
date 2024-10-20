enum Skill { FLUTTER, DART, OTHER }
enum City { Phnom_Penh, US, France }

class Address {
  City city;
  String street;
  String zipcode;

  Address(this.city, this.street, this.zipcode);
}

class Yearofexperience {
  int year;
  String description;

  Yearofexperience(this.description, this.year);
}

class Employee {
  String name;
  Address address;
  Skill skill;
  double baseSalary;
  Yearofexperience yearofexperience;
  List<Skill> skills = [];

  Employee(this.name, this.yearofexperience, this.address, this.baseSalary, this.skill) {
    this.baseSalary = setBaseSalary(this.skill); // Update baseSalary based on skill
  }

  // Adjust base salary based on the employee's skill
  double setBaseSalary(Skill skill) {
    if (skill == Skill.FLUTTER) {
      return baseSalary * 5 + 2000; // Increase for FLUTTER skill
    } else if (skill == Skill.DART) {
      return baseSalary * 3+2000; // Increase for DART skill
    } else {
      return baseSalary + 2000; // No change for OTHER skill
    }
  }

  void printDetails() {
    print(
        'Employee: $name, Address: ${address.street}, ${address.zipcode}, City: ${address.city}, Skill: $skill, Year of Experience: ${yearofexperience.year}, Base Salary: \$${baseSalary}');
  }
}

void main() {
  var address1 = Address(City.Phnom_Penh, 'Street 123', '12345');
  var yearExp1 = Yearofexperience('Senior Developer', 5);
  var emp1 = Employee('Sokea', yearExp1, address1, 1000, Skill.FLUTTER); // Pass base salary
  emp1.printDetails();

  var address2 = Address(City.US, 'Main St', '67890');
  var yearExp2 = Yearofexperience('Mid-level Developer', 3);
  var emp2 = Employee('Ronan', yearExp2, address2, 1000, Skill.DART); // Pass base salary
  emp2.printDetails();

  var address3 = Address(City.France, 'Rue de Paris', '54321');
  var yearExp3 = Yearofexperience('Beginner Developer', 2);
  var emp3 = Employee('Alex', yearExp3, address3, 1000, Skill.OTHER); // Pass base salary
  emp3.printDetails();
}
