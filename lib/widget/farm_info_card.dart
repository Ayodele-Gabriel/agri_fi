import 'package:agri_fi/utilities/app_colors.dart';
import 'package:agri_fi/utilities/app_text.dart';
import 'package:flutter/material.dart';

class FarmInfoCard extends StatelessWidget {
  const FarmInfoCard({
    super.key,
    required this.farmName,
    required this.location,
    required this.cropType,
    required this.numberOfWorkers,
  });

  final String farmName;
  final String location;
  final String cropType;
  final int numberOfWorkers;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      elevation: 8.0,
      color: AppColors.kBaseWhite,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  color: AppColors.kPrimaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Icon(Icons.perm_identity, color: AppColors.kBaseWhite),
                  ),
                ),
                Badge(
                  backgroundColor: Colors.transparent,
                  alignment: Alignment.bottomLeft,
                  label: Text(cropType, style: AppText.kSecondaryText),
                  child: Icon(Icons.home_work, size: 40.0, color: AppColors.kPrimaryColor),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Icon(Icons.motorcycle_rounded, color: AppColors.kPrimaryColor, size: 30.0),
                    SizedBox(width: 5.0),
                    Text(farmName, style: AppText.kPrimaryText),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.gps_fixed_rounded, color: AppColors.kPrimaryColor, size: 30.0),
                    SizedBox(width: 5.0),
                    Text(location, style: AppText.kSecondaryText),
                  ],
                ),
              ],
            ),
            Divider(thickness: 2.0),
            Row(
              children: [
                Icon(Icons.people, color: AppColors.kPrimaryColor, size: 20.0),
                SizedBox(width: 5.0),
                Text('$numberOfWorkers ${numberOfWorkers <= 1 ? 'farmer' : 'farmers'}', style: AppText.kSecondaryText),
              ],
            ),
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: AppColors.kContainerColor,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  'You are viewing this farm',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.kPrimaryColor,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}