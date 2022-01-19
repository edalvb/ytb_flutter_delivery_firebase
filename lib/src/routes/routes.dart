import 'package:flutter/widgets.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/filter_page/view/filter_page.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/forgot_password_page/view/forgot_password.dart';

// Pages
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/login_page/view/login_page.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/search_page/view/search_page.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/sign_up_page/view/sign_up_page.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/tabs/tabs_page/view/tabs_page.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/welcome_page/view/welcome_page.dart';

final routes = <String, WidgetBuilder>{
  'login': (BuildContext context) => LoginPage(),
  'welcome': (BuildContext context) => WelcomePage(),
  'forgot_password': (BuildContext context) => ForgotPassword(),
  'sign_up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage(),
  'search': (BuildContext context) => SearchPage(),
  'filter': (BuildContext context) => FilterPage(),
};
