import 'package:dressmeup/components/init_home.dart';
import 'package:dressmeup/components/SIgnin/init_setting.dart';
import 'package:flutter/material.dart';
import 'package:dressmeup/components/changeModel/change_model.dart';

/// Flutter code sample for [Radio].

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final idController = TextEditingController();
  final pwController = TextEditingController();
  final cpwController = TextEditingController();
  final nickController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            children: [
              const Image(image: AssetImage('lib/assets/appIcon.png')),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: idController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'ID'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  controller: pwController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  controller: cpwController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Check Password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: nickController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Nickname'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Phone Number'),
                ),
              ),
              const SizedBox(height: 40),
              const SizedBox(height: 40),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffA9DDF7)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InitPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('SignUp',
                        style: TextStyle(
                            fontSize: 25, color: Colors.grey.shade700)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
