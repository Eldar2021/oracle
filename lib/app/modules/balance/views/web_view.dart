import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
  @override
  MyWebViewState createState() => MyWebViewState();
}

class MyWebViewState extends State<MyWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: buildWebView(),
      ),
    );
  }

  WebView buildWebView() {
    return WebView(
      initialUrl: 'https://anons.kg/kg',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Пополнение баланса"),
      centerTitle: true,
    );
  }
}
