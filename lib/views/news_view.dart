import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class WebView extends StatelessWidget {
  const WebView({
    super.key,
    required this.link,
  });
  final String link;
  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..loadRequest(
        Uri.parse(link),
      );
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'Cloud',
                style:
                    TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          centerTitle: true,
        ),
      body: WebViewWidget(controller: controller),
    );
  }
}