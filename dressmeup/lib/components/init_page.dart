import 'package:dressmeup/components/init_home.dart';
import 'package:flutter/material.dart';
import 'package:dressmeup/components/changeModel/change_model.dart';

/// Flutter code sample for [Radio].

enum SingingCharacter { lafayette, jefferson }

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  SingingCharacter? _character = SingingCharacter.lafayette;

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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Male',
                        style: TextStyle(
                            fontSize: 25, color: Colors.grey.shade700),
                      ),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        activeColor: const Color(0xffF69A9A),
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Female',
                        style: TextStyle(
                            fontSize: 25, color: Colors.grey.shade700),
                      ),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        activeColor: const Color(0xffF69A9A),
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffA9DDF7),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChangeModel()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Select image for fitting',
                        style: TextStyle(
                            fontSize: 25, color: Colors.grey.shade700)),
                  )),
              const SizedBox(height: 40),
              SizedBox(
                  height: 250,
                  width: 250,
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))))),
              const SizedBox(height: 40),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffA9DDF7)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InitHome()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Finish',
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
