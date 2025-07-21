import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:veejay_rides_app/utils/device_helper.dart'; // This should contain isHuaweiDevice()

import 'package:google_maps_flutter/google_maps_flutter.dart' as gmaps;
import 'package:huawei_map/huawei_map.dart' as hmaps;
import 'dart:io';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool? isHuawei;

  @override
  void initState() {
    super.initState();
    _detectDevice();
  }

  Future<void> _detectDevice() async {
    final result = await isHuaweiDevice(); // <- calling from your helper
    setState(() {
      isHuawei = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isHuawei == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Veejay Rides Map')),
      body: isHuawei!
          ? const hmaps.HuaweiMap(
              initialCameraPosition: hmaps.CameraPosition(
                target: hmaps.LatLng(-33.918861, 18.4233),
                zoom: 12,
              ),
            )
          : const hmaps.HuaweiMap(
  initialCameraPosition: hmaps.CameraPosition(
    target: hmaps.LatLng(-33.918861, 18.4233),
    zoom: 14.0,
              ),
            ),
    );
  }
}
