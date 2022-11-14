class Employee {
  Employee._new({this.model});

  Model? model;
  static Employee constant = Employee._new();
  List<Model> list = [];
  void add(Model model) {
    list.add(model);
  }

  factory Employee._ok() {
    return Employee._new();
  }
}

class Model {
  Model({this.name, this.salary});
  final String? name;
  final double? salary;
}
