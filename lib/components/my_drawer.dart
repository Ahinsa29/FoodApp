import 'package:flutter/material.dart';
import 'package:food/components/my_drawer_tile.dart';
import 'package:food/pages/home_page.dart';
import 'package:food/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  void logout() {
    final _authService = AuthService();
    _authService.singOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_outline_rounded,
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          MyDrawerTile(
            text: "S E T T I N G",
            icon: Icons.settings,
            onTap: () {},
          ),
          MyDrawerTile(text: "L O G O U T", icon: Icons.logout, onTap: () {}),
        ],
      ),
    );
  }
}
