import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class PrintWebView extends StatefulWidget {
  static String routeName = '/PrintWebView';

  @override
  _PrintWebViewState createState() => _PrintWebViewState();
}

class _PrintWebViewState extends State<PrintWebView> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  void initState(){
    super.initState();
    flutterWebviewPlugin.evalJavascript("alert('Inducesmile.com')");


  }
  @override
  void dispose() {
    flutterWebviewPlugin.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      hidden: true,
    allowFileURLs: true,

    url: 'https://mawasmbookstore.com/product/%D8%B7%D8%A8%D8%A7%D8%B9%D8%A9/',
    );

  }
}
