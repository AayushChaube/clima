import 'package:clima/services/location.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getLocationData();
          },
          child: const Text('Get Location'),
        ),
      ),
    );
  }
  
  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    print('Latitude:  ${location.latitude}');
    print('Longitude:  ${location.longitude}');
  }
}
