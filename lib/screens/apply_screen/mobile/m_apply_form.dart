import 'package:flutter/material.dart';
import 'package:joblistapp/screens/apply_screen/widgets/text_form.dart';

class MApplyForm extends StatelessWidget {
  const MApplyForm({super.key});

  Future<void> showSuccessDialog(context) async {
    // show dialog
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          title: const Text('Success'),
          content: const Text('Application has been submitted successfully.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Apply Form',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const TextForm(labelText: 'Name'),
            const SizedBox(height: 20),
            const TextForm(labelText: 'E-mail'),
            const SizedBox(height: 20),
            const TextForm(labelText: 'Phone'),
            const SizedBox(height: 40),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () async =>
                    await showSuccessDialog(context).whenComplete(
                  () => Navigator.of(context).pop(),
                ),
                child: const Text('Apply'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
