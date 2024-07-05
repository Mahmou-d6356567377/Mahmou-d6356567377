import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/utils/constants.dart';
import 'package:mybook/utils/routes.dart';

class BookListItem extends StatelessWidget {
  const BookListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRoutes.BD);
      },
      child: ClipRRect(
        child: SizedBox(
          height: 150,
          width: 150,
          child: Image.asset(KtestImage, fit: BoxFit.fill,)),
      ),
    );
  }
}