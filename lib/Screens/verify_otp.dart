import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:user_auth_by_phone_no/Screens/home_screen.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({super.key});
  static const String id = 'verify_otp';
  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Verify Phone',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                textAlign: TextAlign.center,
                'Code is sent to 987654321',
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Pinput(
                length: 6,
                defaultPinTheme: PinTheme(
                  height: 48.0,
                  width: 48.0,
                  decoration: BoxDecoration(
                    color: Color(0xff93D2F3),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  textAlign: TextAlign.center,
                  'Didn’t receive the code? Request Again',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.black,
                    minimumSize: const Size(100.0, 50.0),
                    backgroundColor: const Color.fromARGB(255, 46, 59, 98),
                  ),
                  child: const Text(
                    'VERIFY AND CONTINUE',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
