import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class NoInternetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error, size: 48, color: Colors.red),
              SizedBox(height: 16),
              Text(
                "No internet connection .",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Connectivity().checkConnectivity().then((connectivityResult) {
                    if (connectivityResult != ConnectivityResult.none) {
                      runApp(MyApp());
                    }
                  });
                },
                child: Text("Retry"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}