import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';

import 'package:wether_app/components/custom_icon_button.dart';

import 'package:wether_app/constats/api_const.dart';
import 'package:wether_app/constats/app_colors.dart';
import 'package:wether_app/constats/app_text.dart';
import 'package:wether_app/constats/app_text_style.dart';
import 'package:wether_app/models.dart/weather.dart';

const List cities = <String>[
  'Bishkek',
  'Osh',
  'Jalal-abad',
  'Batken',
  'Naryn',
  'Talas',
  'tokmok',
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Weather? weather;

  Future<void> weatherLocation() async {
    setState(() {
      weather = null;
    });
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.always &&
          permission == LocationPermission.whileInUse) {
        Position position = await Geolocator.getCurrentPosition();
        final dio = Dio();
        final response = await dio
            .get(ApiConst.latLongaddres(position.latitude, position.longitude));
        if (response.statusCode == 200) {
          weather = Weather(
            id: response.data['current']['weather'][0]['id'],
            main: response.data['current']['weather'][0]['main'],
            description: response.data['current']['weather'][0]['description'],
            icon: response.data['current']['weather'][0]['icon'],
            city: response.data['timezone'],
            temp: response.data['current']['temp'],
          );
        }

        setState(() {});
      }
    } else {
      Position position = await Geolocator.getCurrentPosition();
      final dio = Dio();
      final response = await dio
          .get(ApiConst.latLongaddres(position.latitude, position.longitude));
      if (response.statusCode == 200) {
        weather = Weather(
          id: response.data['current']['weather'][0]['id'],
          main: response.data['current']['weather'][0]['main'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'],
          city: response.data['timezone'],
          temp: response.data['current']['temp'],
        );
      }

      setState(() {});
    }
  }

  Future<void> weatherName([String? name]) async {
    // await Future.delayed(const Duration(seconds: 3));
    final dio = Dio();
    final response = await dio.get(ApiConst.address(name ?? 'bishkek'));
    if (response.statusCode == 200) {
      weather = Weather(
        id: response.data['weather'][0]['id'],
        main: response.data['weather'][0]['main'],
        description: response.data['weather'][0]['description'],
        icon: response.data['weather'][0]['icon'],
        city: response.data['name'],
        temp: response.data["main"]['temp'],
        country: response.data['sys']['country'],
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    weatherName();
  }

  @override
  Widget build(BuildContext context) {
    log('max W ==> ${MediaQuery.of(context).size.width}');
    log('max H ==> ${MediaQuery.of(context).size.height}');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: const Text(AppText.appBarTitle, style: AppTextStyle.appBar),
      ),
      body: weather == null
          ? const Center(child: CircularProgressIndicator())
          : Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/weather.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(
                        icon: Icons.near_me,
                        onPressed: () async {
                          await weatherLocation();
                        },
                      ),
                      CustomIconButton(
                        icon: Icons.location_city,
                        onPressed: () {
                          showBottom();
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      Text('${(weather!.temp - 274.15).floorToDouble()}',
                          style: AppTextStyle.body1),
                      Image.network(
                        ApiConst.getIcon(weather!.icon, 4),
                        height: 160,
                        fit: BoxFit.fitHeight,
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FittedBox(
                          child: Text(
                            // "You'll need and".replaceAll(' ', '\n'),
                            weather!.description.replaceAll(' ', '\n'),
                            textAlign: TextAlign.right,
                            style: AppTextStyle.body2((90)),
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: FittedBox(
                      child: Text(
                        weather!.city,
                        textAlign: TextAlign.right,
                        style: AppTextStyle.body1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  void showBottom() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.7,
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 7),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 19, 15, 2),
            border: Border.all(color: AppColors.white),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: ListView.builder(
            itemCount: cities.length,
            itemBuilder: (BuildContext context, int index) {
              final city = cities[index];
              return Card(
                child: ListTile(
                  onTap: () async {
                    setState(() {
                      weather = null;
                    });
                    weatherName(city);
                    Navigator.pop(context);
                  },
                  title: Text(city),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
