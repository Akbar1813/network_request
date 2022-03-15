import 'package:flutter/material.dart';
import 'package:network_request/services/http_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String? data;
  void _apiDataList() {
    Network.GET(Network.API_GET, Network.paramsEmpty()).then((response) => {
    print(response),
    _showResponse(response!),
    });
  }
  void _showResponse(String response){
    setState(() {
      data = response;
    });
  }

    @override
    initState() {
      super.initState();
       _apiDataList();
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