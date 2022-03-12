class Employee{
  int? id;
  String? name;
  int? salary;
  int? age;
  String? image;
  Employee({this.id, this.name, this.salary, this.age,this.image});
  Employee.Id({this.id});
  Employee.Create({this.name, this.salary, this.age});
  Employee.fromJson(Map<String, dynamic> json):
        id = json['id'],
        name = json['name'],
        salary = json['salary'],
        age = json['age'],
        image = json['image'];
  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'salary' : salary,
    'age' : age,
    'image' : image
  };
}