import 'package:ecommerce/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/reusable_components/btn.dart';

class MYAPPBAR extends StatelessWidget implements PreferredSizeWidget {
  const MYAPPBAR({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 3,

      title: const Text(
        "Home",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),

      actions: [
        Btn(type: Btntype.icon, icontype: Icons.search, nextscreen: Login()),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: ClipOval(
              child: Image.asset(
                "assets/AdidasLogo.png",
                width: 35,
                height: 35,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
