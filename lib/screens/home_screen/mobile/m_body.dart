import 'package:flutter/material.dart';

class MBody extends StatefulWidget {
  const MBody({super.key});

  @override
  State<MBody> createState() => _MBodyState();
}

class _MBodyState extends State<MBody> {
  final List<String> _joblist = List<String>.generate(100, (i) => "job $i");
  // late List<Map<String, dynamic>> _joblist;

  Future<void> refreshItems() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _joblist.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: refreshItems,
        child: ListView.builder(
          itemCount: _joblist.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_joblist[index]),
            );
          },
        ),
      ),
    );
  }
}
