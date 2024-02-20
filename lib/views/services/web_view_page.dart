import 'package:edu_anas_academyy/views/services/web_view_stack.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://anasacademy.uk/platform/'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) async {
        if (await controller.canGoBack()) {
          controller.goBack();
        }
      },
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: MediaQuery.paddingOf(context),
        child: WebViewStack(
          controller: controller,
        ),
      ),
    );
  }
}
      //       canPop: false,
      // onPopInvoked: (didPop) => false,
