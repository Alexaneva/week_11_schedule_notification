import 'package:flutter/material.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:week_14_schedule_notification/screens/home_page.dart';
import 'package:week_14_schedule_notification/services/notification_service.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  tz.initializeTimeZones();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notifications',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Flutter Local Notifications'),
    );
  }
}