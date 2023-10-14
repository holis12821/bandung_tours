import 'package:flutter/material.dart';

class ExpandedFlexibleScreen extends StatelessWidget {
  const ExpandedFlexibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                _ExpandedWidget(),
                _FlexibleWidget(),
              ],
            ),
            Row(
              children: [
                _ExpandedWidget(),
                _ExpandedWidget(),
              ],
            ),
            Row(
              children: [
                _FlexibleWidget(),
                _FlexibleWidget(),
              ],
            ),
            Row(
              children: [
                _FlexibleWidget(),
                _ExpandedWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _ExpandedWidget extends StatelessWidget {
  const _ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Expanded',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}

class _FlexibleWidget extends StatelessWidget {
  const _FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
          border: Border.all(color: Colors.white),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Flexible',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
