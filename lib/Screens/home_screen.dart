// ignore_for_file: false
import 'package:flutter/material.dart';
import 'package:user_auth_by_phone_no/Screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = 'home_screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedGroupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home Screen',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                CustomCircleButton(
                  icon: Icons.account_box,
                  label: 'Profile',
                  onPressed: () {
                    Navigator.pushNamed(context, ProfileScreen.id);
                  },
                ),
                CustomCircleButton(
                  icon: Icons.event,
                  label: 'Events',
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                CustomCircleButton(
                  icon: Icons.local_offer,
                  label: 'Offers',
                  onPressed: () {},
                ),
                CustomCircleButton(
                  icon: Icons.groups,
                  label: 'Members',
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(20),
      ),
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 90,
      ),
      label: Text(label),
    );
  }
}
