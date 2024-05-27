// ignore_for_file: public_member_api_docs, sort_constructors_first
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Weather? weather;

  Future<void> weatherLocation() async {
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
      print(weather);
      setState(() {});
      // await fetchData(ApiConst.latLongaddres(position.latitude, position.longitude));
    }
  }

  Future<void> fetchData([String? url]) async {
    // await Future.delayed(const Duration(seconds: 3));
    final dio = Dio();
    final response = await dio.get(url ?? ApiConst.address);
    if (response.statusCode == 200) {
      final Weather weather = Weather(
        id: response.data['weather'][0]['id'],
        main: response.data['weather'][0]['main'],
        description: response.data['weather'][0]['description'],
        icon: response.data['weather'][0]['icon'],
        city: response.data['name'],
        temp: response.data["main"]['temp'],
        country: response.data['sys']['country'],
      );
      print(weather);
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    log('max w = ${MediaQuery.of(context).size.width}');
    log('max h = ${MediaQuery.of(context).size.height}');
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          centerTitle: true,
          title: const Text(
            AppText.appBarTitle,
            style: AppTextStyle.appBar,
          ),
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
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Text('${(weather!.temp - 273.15).floorToDouble()}',
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
                          Expanded(
                            child: Text(
                              "${weather!.description}".replaceAll(' ', '\n'),
                              textAlign: TextAlign.right,
                              style: AppTextStyle.body2(80),
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FittedBox(
                            child: Text(weather!.city,
                                textAlign: TextAlign.right,
                                style: AppTextStyle.body1),
                          ),
                          const SizedBox(width: 10)
                        ],
                      ),
                    ),
                  ],
                ),
              ));
    // body: FutureBuilder<Weather?>(
    //   future: fetchData(),
    //   builder: (context, joop) {
    //     if (joop.connectionState == ConnectionState.waiting) {
    //       return const Center(child: CircularProgressIndicator());
    //     } else if (joop.connectionState == ConnectionState.none) {
    //       return const Text('Internet bailanyshynda kata bar');
    //     } else if (joop.connectionState == ConnectionState.done) {
    //       if (joop.hasError) {
    //         return Text('${joop.error}');
    //       } else if (joop.hasData) {
    //         final weather = joop.data!;

//             } else {
//               return const Text('Белгисиз ката болду сураныч кайра кириниз...');
//             }
//           } else {
//             return const Text('Белгисиз ката болду сураныч кайра кириниз...');
  }
}
//       ),
//     );
//   }
// }

// body: Center(
      //   child: FutureBuilder(
      //     future: fetchData(),
      //     builder: (ctx, sn) {
      //       if (sn.hasData) {
      //         return Column(
      //           children: [
      //             Text(sn.data!.id.toString()),
      //             Text(sn.data!.description),
      //             Text(sn.data!.main),
      //             Text(sn.data!.icon),
      //             Text(sn.data!.city),
      //             Text(sn.data!.country),
      //             Text(sn.data!.temp.toString()),
      //           ],
      //         );
      //       } else if (sn.hasError) {
      //         return Text(sn.error.toString());
      //       } else {
      //         return CircularProgressIndicator();
      //       }
      //     },
      //   ),
      // ),