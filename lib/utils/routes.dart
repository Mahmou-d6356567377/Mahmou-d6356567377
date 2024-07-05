

import 'package:go_router/go_router.dart';
import 'package:mybook/UI/book_details_screan/presentaion/views/book_details_screan.dart';
import 'package:mybook/UI/home_screan/presentation/View/home_screan.dart';
import 'package:mybook/UI/search_screan/presentation/view/search_screan.dart';
import 'package:mybook/UI/splash_screan/presentaion/splash_srean.dart';


abstract class AppRoutes {


static const hs = '/HomeScrean';
static const sps = '/SplashScrean';
static const BD = '/BookDetails';
static const ss = '/SearchScrean';

static final GoRouter approutes = GoRouter(

initialLocation: sps,
  routes:  <GoRoute>[
     GoRoute(path: sps, 
    builder: (context, state) {
      print('go to splash Screan');
      return const SplashScrean();
    }
     
    
    ),



   GoRoute(path: hs,
   builder:(context, state) {
    print('go to Home Screan');
    return const HomeScrean();
   }
   ),


   GoRoute(path: BD,
   builder:(context, state) {
    print('go to BookDetails  Screan');
    return const BookDetails();
   }
   ),

   GoRoute(path: ss,
   builder:(context, state) {
    print('go to Search Screan');
    return const  SeachScrean();
   }
   ),
   
  ]
);

}