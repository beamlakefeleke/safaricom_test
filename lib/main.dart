import 'package:flutter/material.dart';
import 'pos_outlet_home_page.dart';
import 'pos_outlet_general_info_page.dart';
import 'pos_outlet_owner_detail_page.dart';
import 'pos_outlet_capture_image_page.dart';
import 'merchants_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POS Outlet App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const POSOutletHomePage(),
        '/general-info': (context) => const POSOutletGeneralInfoPage(),
        '/owner-detail': (context) => const POSOutletOwnerDetailPage(),
        '/capture-image': (context) => const POSOutletCaptureImagePage(),
        '/merchants': (context) => const MerchantsPage(),
      },
    );
  }
}
