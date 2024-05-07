import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wether_app/constats/api_const.dart';
import 'package:wether_app/models.dart/weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Weather?> fetchData() async {
    final dio = Dio();
    final res = await dio.get(ApiConst.address);
    if (res.statusCode == 200) {
      final Weather weather = Weather(
        id: res.data['weather'][0]['id'],
        main: res.data['weather'][0]['main'],
        description: res.data['weather'][0]['description'],
        icon: res.data['weather'][0]['icon'],
      );
      // print(weather);
      return weather;
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HomePage'),
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (ctx, sn) {
            if (sn.hasData) {
              return Column(
                children: [
                  Text(sn.data!.id.toString()),
                ],
              );
            } else if (sn.hasError) {
              return Text(sn.error.toString());
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
