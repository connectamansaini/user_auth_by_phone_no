import 'package:flutter/material.dart';
import 'package:user_auth_by_phone_no/Screens/auth_phone.dart';
import 'package:user_auth_by_phone_no/constants.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  static const String id = 'select_language';

  @override
  State<SelectLanguage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SelectLanguage> {
  String dropdownValue = kLangList.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/background.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Icon(
                Icons.image_outlined,
                // color: Colors.pink,
                size: 80.0,
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                'Please Select your Language',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 100.0),
                child: Text(
                  textAlign: TextAlign.center,
                  'You can change the language at any time.',
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: DropdownButton(
                  isExpanded: true,
                  value: dropdownValue,
                  elevation: 16,
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items:
                      kLangList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        textAlign: TextAlign.center,
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 98.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AuthPhone.id);
                  },
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.black,
                    minimumSize: const Size(100.0, 45.0),
                    backgroundColor: const Color.fromARGB(255, 46, 59, 98),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
