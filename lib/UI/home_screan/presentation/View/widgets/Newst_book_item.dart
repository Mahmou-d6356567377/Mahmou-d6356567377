import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/UI/home_screan/presentation/View/widgets/rating_widget.dart';
import 'package:mybook/utils/routes.dart';
import 'package:mybook/utils/styles.dart';
import '../../../../../utils/constants.dart';

class NewestBookItem extends StatelessWidget {
  const NewestBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.BD);
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 21, 61, 86),
          borderRadius: BorderRadius.circular(17),
        ),
        height: 130,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 8,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                child: Image.asset(
                  KtestImage,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cross Platform UIs with Flutter ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: style18.copyWith(fontFamily: 'GT'),
                    ),
                    const Text('W.J. Tuovila',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: style12),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      children: [
                        Text(
                          'FREE',
                          style: style18,
                        ),
                        Spacer(),
                        RatingWidget(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
