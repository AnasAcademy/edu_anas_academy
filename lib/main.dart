import 'package:edu_anas_academyy/views/login_view.dart';
// import 'package:edu_anas_academyy/views/services/web_view_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const LoginPageView(),
    ),
  );
}
