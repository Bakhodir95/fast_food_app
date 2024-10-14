import 'dart:async';
import 'package:fast_food_app/utils/app_colors.dart';
import 'package:fast_food_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationWidget extends StatelessWidget {
  LocationWidget({super.key});
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(41.285868, 69.203974),
    zoom: 11.5,
  );

  final LatLng _markerPosition = LatLng(41.285834, 69.203533);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 15.5.w),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Row(
              children: [
                Container(
                  width: 1.w,
                  height: 25.h,
                  decoration:
                      const BoxDecoration(color: AppColors.mainButtonColor),
                ),
                const Gap(2),
                Text(
                  "Na'jot Ta'lim",
                  style: CustomFonts.inriaSans18maingrey,
                ),
              ],
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.watch_later_outlined,
                  size: 14.sp,
                  color: AppColors.mainGrey,
                ),
                Gap(3.w),
                Text(
                  "09:00 - 03:00",
                  style: CustomFonts.inriaSans14,
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 652.h,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: GoogleMap(
            myLocationEnabled: true,
            compassEnabled: true,
            markers: {
              Marker(
                markerId: const MarkerId('1'),
                rotation: 2,
                position: _markerPosition,
                infoWindow: const InfoWindow(
                  title: "Na'jot Ta'lim",
                ),
              ),
            },
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
      ],
    );
  }
}
