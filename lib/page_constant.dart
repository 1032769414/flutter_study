import 'package:flutter/cupertino.dart';

class PageConstant {
  static String WELCOME_PAGE = '/';
  static String HOME_PAGE='/home';

  static Map<String,WidgetBuilder> getRoutes(){
    var route={
      HOME_PAGE:(BuildContext contex){

        return MyHomePage(title:'demo');


    }
  };
}
