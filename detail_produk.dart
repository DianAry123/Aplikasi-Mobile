import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewInFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://drive.google.com/file/d/0B6Xt6_s0nQtWU2dISmhaTXNyUkE/view",
      hidden: true,
      appBar: AppBar(title: Text("Tere Liye's book!")),
    );
  }
}

class WebViewInFlutter2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://drive.google.com/file/d/0B-oNczV9fMcfOHVpRWk3WTl0eGc/view",
      hidden: true,
      appBar: AppBar(title: Text("Tere Liye's book!")),
    );
  }
}

class WebViewInFlutter3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url:
          "https://drive.google.com/file/d/1brM3NrL_s4VyoNEqRUqCgho1iEWFRwqZ/view",
      hidden: true,
      appBar: AppBar(title: Text("Tere Liye's book!")),
    );
  }
}

class WebViewInFlutter4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://drive.google.com/file/d/0B6Xt6_s0nQtWTjY4cGRkU3BNd3c/view",
      hidden: true,
      appBar: AppBar(title: Text("Tere Liye's book!")),
    );
  }
}
