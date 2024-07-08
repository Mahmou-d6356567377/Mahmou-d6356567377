import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/utils/routes.dart';

import '../../../../../utils/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        color: const Color(backgroundColor0),
        child: Row(
          children: [
            Image.asset(
              KlogoImage, width: 100, // Adjust the width as needed
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRoutes.ss);
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
