import 'package:flutter/material.dart';

import 'package:curso_flutter_2/pages/alert_page.dart';
import 'package:curso_flutter_2/pages/avatar_page.dart';
import 'package:curso_flutter_2/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationsRoutes(){
return <String, WidgetBuilder> {
        '/'     : (BuildContext context)=> HomePage(),
        'alert' : (BuildContext context)=> AlertPage(),
        'avatar': (BuildContext context)=> AvatarPage()
      };
}