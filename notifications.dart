import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'localnotifications.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  _notification createState() => _notification();
}

class _notification extends State<notification> {
  String notificationMsg = "Waiting for notifications";
  @override
  void initState() {
    super.initState();

  LocalNotificationService.initilize();
    // Terminated State
    FirebaseMessaging.instance.getInitialMessage().then((event) {
      if (event != null) {
        setState(() {
          notificationMsg =
              "${event.notification!.title} ${event.notification!.body} I am coming from terminated state";
        });
      }
    });

    // Foregrand State
    FirebaseMessaging.onMessage.listen((event) {
      setState(() {
        notificationMsg =
            "${event.notification!.title} ${event.notification!.body} I am coming from foreground";
      });
    });

    // background State
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      setState(() {
              LocalNotificationService.showNotificationOnForeground(event);

        notificationMsg =
            "${event.notification!.title} ${event.notification!.body} I am coming from background";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Notifications"),
                backgroundColor:Color.fromARGB(255, 61, 110, 71) ,

      ),
      body: Center(
        child: Text(
          notificationMsg,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}