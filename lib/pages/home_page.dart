import 'package:flutter/material.dart';
import 'package:network_request/models/employee_model.dart';
import 'package:network_request/services/http_service.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String? data;
  // 1.Get Data
  void _apiDataList() {
    Network.GET(Network.API_GET, Network.paramsEmpty()).then((response) => {
    print(response),
    _showResponse(response!),
    });
  }


  // 2.Get data with ID
  /*void _apiDataListId(Employee employee) {
    Network.GET(Network.API_GET_ID+employee.id.toString(), Network.paramsEmpty()).then((response) => {
      print(response),
      _showResponse(response!),
    });
  }*/

  // 3.Create Data
  /*void _apiDataCreate(Employee employee) {
    Network.POST(Network.API_CREATE, Network.paramsCreate(employee)).then((response) => {
      print(response),
      _showResponse(response!),
    });
  }*/

  // 4.Update data
  /*void _apiDataUpdate(Employee employee) {
    Network.PUT(Network.API_UPDATE+employee.id.toString(), Network.paramsUpdate(employee)).then((response) => {
      print(response),
      _showResponse(response!),
    });
  }*/

  // 5.Delete Data
  /*void _apiDataDelete(Employee employee) {
    Network.DELETE(Network.API_DELETE+employee.id.toString(), Network.paramsEmpty()).then((response) => {
      print(response),
      _showResponse(response!),
    });
  }*/


  void _showResponse(String response){
    setState(() {
      data = response;
    });
  }

    @override
    initState() {
      super.initState();
      // 1.Get data
       _apiDataList();

      // 2.get Data with ID
      /*var employee = Employee.Id(id: 24);
      _apiDataListId(employee);*/

      // 3.Create data
      /*var employee = Employee.Create(name: 'test', salary: 123, age: 23);
      _apiDataCreate(employee);*/

      // 4.Update data
      /*var employee = Employee(id: 12,name: 'Akbar',salary: 3000,age: 22,image: "personal");
      _apiDataUpdate(employee);*/

      // 5.Delete Data
      /*var employee = Employee.Id(id: 12,);
      _apiDataDelete(employee);*/
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Text(data != null ? data! : "NO Data",
              style: TextStyle(color: Colors.black)),
        ),
      );
    }
  }