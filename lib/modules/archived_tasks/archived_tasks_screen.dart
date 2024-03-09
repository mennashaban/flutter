import 'package:flutter/cupertino.dart';

class archivedTaskScreen extends StatelessWidget {
  const archivedTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'archived tasks',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
