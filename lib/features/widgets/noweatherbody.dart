import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Theare is no weather 😔,start search now🔎",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
