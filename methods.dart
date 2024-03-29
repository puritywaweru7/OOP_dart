class Student {
  late String std_name;
  late int age;
  late String grade;

  Student(this.std_name, this.age, this.grade);

  void stdInfo() {
    print("STUDENT'S INFORMATION");
    print("Your name is $std_name");
    print("Your age is $age");
    print("Your grade level is $grade");
    print("-------------------------------------");
  }
}

class Teacher {
  late String teach_name;
  late int teach_age;
  late String subject;

  Teacher(this.teach_name, this.teach_age, this.subject);

  void teachInfo() {
    print("TEACHER'S INFORMATION");
    print("Your name is $teach_name");
    print("Your age is $teach_age");
    print("The lesson you teach is $subject");
  }
}

class Information {
  late Student std;
  late Teacher teach;

  Information() {
    std = Student("Purity Waweru", 17, "Pass");
    std.stdInfo();
    teach = Teacher("John Doe", 37, "Dart programming");
    teach.teachInfo();
  }
}

void main() {
  var info = Information();
}
