
// ignore_for_file: prefer_function_declarations_over_variables


import 'package:flutter/material.dart';
import 'package:jdshop/pages/search_page.dart';
import 'package:jdshop/pages/tabs/tabs_pages.dart';

//配置路由
final routes = {
  '/': (context) => const Tabs(),
  '/search': (context) => const SearchPage(),
};


// 固定写法
var onGenerateRoute = (RouteSettings settings) {
// 统一处理
  final String? name = settings.name;
  final Function pageContentBuilder = routes[name]!;
  if (settings.arguments != null) {
    final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments));
    return route;
  } else {
    final Route route =
        MaterialPageRoute(builder: (context) => pageContentBuilder(context));
    return route;
  }
};