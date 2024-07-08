import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/utils/constants.dart';
import 'package:mybook/utils/routes.dart';
import 'package:mybook/utils/styles.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animcontroller;
  late Animation<Offset> animationSlidercontroller;
  @override
  void initState() {
    slidingAnimation();
    hidsplash();
    super.initState();
  }

  @override
  void dispose() {
    animcontroller.dispose();
    super.dispose();
  }

  void hidsplash() {
    Timer(const Duration(seconds: 1), () {
      GoRouter.of(context).push(AppRoutes.hs);
    });
  }

  void slidingAnimation() {
    animcontroller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    animationSlidercontroller =
        Tween<Offset>(begin: const Offset(0, 9), end: Offset.zero)
            .animate(animcontroller);
    animcontroller.forward();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(backgroundColor1),
                Color(backgroundColor0),
                Color(backgroundColor2),
                Color(backgroundColor3),
                Color(backgroundColor4),
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              KlogoImage,
              fit: BoxFit.fill,
            ),
            SlideTransition(
              position: animationSlidercontroller,
              child: Text(
                'Read as you are in heaven 😊',
                style: style14.copyWith(color: const Color(backgroundColor6)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
