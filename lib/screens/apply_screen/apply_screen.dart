import 'package:flutter/material.dart';
import 'package:joblistapp/models/job_data.dart';
import 'package:joblistapp/screens/apply_screen/desktop/d_apply_form.dart';
import 'package:joblistapp/screens/apply_screen/desktop/d_job_detail.dart';
import 'package:joblistapp/screens/apply_screen/mobile/m_apply_form.dart';
import 'package:joblistapp/screens/apply_screen/mobile/m_job_detail.dart';

class ApplyScreen extends StatelessWidget {
  const ApplyScreen({super.key});

  Widget _buildMobileLayout(JobData jobData) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MJobDetail(jobData: jobData),
        const MApplyForm(),
      ],
    );
  }

  Widget _buildDesktopLayout(JobData jobData) {
    return Column(
      children: [
        DJobDetail(jobData: jobData),
        const DApplyForm(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final dynamic jobData = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return _buildMobileLayout(jobData);
              } else {
                return _buildDesktopLayout(jobData);
              }
            },
          ),
        ),
      ),
    );
  }
}
