import 'package:flutter/material.dart';
import 'package:joblistapp/models/job_data.dart';
import 'package:joblistapp/utils/app_text_style.dart';

class DJobDetail extends StatelessWidget {
  const DJobDetail({super.key, required this.jobData});
  final JobData jobData;

  @override
  Widget build(BuildContext context) {
    // job detail
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: Navigator.of(context).pop,
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
              const Center(
                child: Text('Job Details',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              Text('Position', style: AppTextStyle.applyScreenJobDetailTitle),
              const SizedBox(height: 5),
              Text(
                jobData.title,
                style: AppTextStyle.applyScreenJobDetailData,
              ),
              const SizedBox(height: 20),
              Text('Employment Type',
                  style: AppTextStyle.applyScreenJobDetailTitle),
              const SizedBox(height: 5),
              Text(
                jobData.employmentType,
                style: AppTextStyle.applyScreenJobDetailData,
              ),
              const SizedBox(height: 20),
              Text('Location', style: AppTextStyle.applyScreenJobDetailTitle),
              const SizedBox(height: 5),
              Text(
                jobData.location,
                style: AppTextStyle.applyScreenJobDetailData,
              ),
              const SizedBox(height: 20),
              Text('Description',
                  style: AppTextStyle.applyScreenJobDetailTitle),
              const SizedBox(height: 5),
              Text(
                jobData.description,
                style: AppTextStyle.applyScreenJobDetailData,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
