import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildMobileLayout() {
    return Column(
      children: const [
        Center(
          child: Text('Mobile Layout'),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout() {
    return Column(
      children: const [
        Center(
          child: Text('Desktop Layout'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return _buildMobileLayout();
            } else {
              return _buildDesktopLayout();
            }
          },
        ),
      ),
    );
  }
}
