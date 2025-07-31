import 'package:agri_fi/utilities/app_text.dart';
import 'package:agri_fi/widget/farm_info_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Team Members', style: AppText.kAppBarText),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: FarmInfoCard(
          farmName: 'Eden 1',
          location: 'Kafancha, Jema\'a, Kaduna',
          cropType: 'Wheat',
          numberOfWorkers: 8,
        ),
      ),
    );
  }
}


