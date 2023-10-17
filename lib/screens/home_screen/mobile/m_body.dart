import 'package:flutter/material.dart';
import 'package:joblistapp/models/job_data.dart';
import 'package:joblistapp/screens/home_screen/widgets/joblist_tile.dart';
import 'package:joblistapp/utils/data_handler.dart';

class MBody extends StatefulWidget {
  const MBody({super.key});

  @override
  State<MBody> createState() => _MBodyState();
}

class _MBodyState extends State<MBody> {
  List<Map<String, dynamic>> _joblist = [];

  Future<void> refreshItems() async {
    setState(() {
      _joblist.shuffle();
    });
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: refreshItems,
        child: FutureBuilder<List<Map<String, dynamic>>>(
          future: _joblist.isEmpty ? DataHandler().loadJobData() : null,
          builder: (BuildContext context,
              AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              _joblist = snapshot.data!;
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return JoblistTile(
                    title: snapshot.data![index]['title'],
                    employmentType: snapshot.data![index]['employment_type'],
                    location: snapshot.data![index]['location'],
                    actionButtonOnPressed: () async => Navigator.pushNamed(
                      context,
                      '/apply',
                      arguments: JobData(
                        id: snapshot.data![index]['id'],
                        title: snapshot.data![index]['title'],
                        description: snapshot.data![index]['description'],
                        employmentType: snapshot.data![index]
                            ['employment_type'],
                        location: snapshot.data![index]['location'],
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
