import 'package:flutter/material.dart';

class JoblistTile extends StatelessWidget {
  const JoblistTile({
    super.key,
    required this.title,
    required this.employmentType,
    required this.location,
    required this.actionButtonOnPressed,
  });
  final String title;
  final String employmentType;
  final String location;
  final VoidCallback actionButtonOnPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.work,
          color: Colors.white70,
        ),
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          const Icon(
            Icons.access_time,
            size: 14,
          ),
          const SizedBox(width: 3),
          Text(employmentType),
          const SizedBox(width: 10),
          const Icon(
            Icons.location_on,
            size: 14,
          ),
          const SizedBox(width: 3),
          Text(location),
        ],
      ),
      trailing: ElevatedButton(
        onPressed: () => actionButtonOnPressed(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: const Text('Apply'),
      ),
    );
  }
}
