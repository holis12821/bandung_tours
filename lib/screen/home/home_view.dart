import 'package:bandung_tours/widgets/text_field.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _controller = TextEditingController();

  //  String _name = "";
  bool lightOn = false;
  bool? agree = false;

  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('First Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            textfield(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Write your name here...',
                labelText: 'Your Name',
              ),
              /*onChanged: (value) {
                setState(
                  () {
                    _name = value;
                  },
                );
              }*/
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Hello, ${_controller.text}'),
                    );
                  },
                );
              },
              child: const Text('Submit'),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text('Switching'),
                const SizedBox(width: 10),
                Switch(
                  value: lightOn,
                  onChanged: (value) {
                    setState(
                      () {
                        lightOn = value;
                      },
                    );
                    showSnackbar(lightOn ? 'Light on' : 'Light off');
                  },
                )
              ],
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Dart',
                groupValue: language,
                onChanged: (String? value) {
                  setState(
                    () {
                      language = value;
                      showSnackbar('$language selected');
                    },
                  );
                },
              ),
              title: const Text('Dart'),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Kotlin',
                groupValue: language,
                onChanged: (String? value) {
                  setState(
                    () {
                      language = value;
                      showSnackbar('$language selected');
                    },
                  );
                },
              ),
              title: const Text('Kotlin'),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Swift',
                groupValue: language,
                onChanged: (String? value) {
                  setState(
                    () {
                      language = value;
                      showSnackbar('$language selected');
                    },
                  );
                },
              ),
              title: const Text('Swift'),
            ),
            ListTile(
              leading: Checkbox(
                value: agree,
                onChanged: (bool? value) {
                  setState(
                    () {
                      agree = value;
                      showSnackbar((agree == true) ? 'Setuju' : 'Tidak');
                    },
                  );
                },
              ),
              title: const Text('Agree / Disagree'),
            )
          ],
        ),
      ),
    );
  }

  void showSnackbar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
