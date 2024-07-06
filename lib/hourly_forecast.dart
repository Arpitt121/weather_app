import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  const HourlyForecastItem({
    super.key,
    required this.icon,
    required this.time,
    required this.temp,
  });
  final IconData icon;
  final String time;
  final String temp;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                time,
                style:const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 8,
              ),
              Icon(
                icon,
                size: 32,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(temp),
            ],
          ),
        ),
      ),
    );
  }
}
