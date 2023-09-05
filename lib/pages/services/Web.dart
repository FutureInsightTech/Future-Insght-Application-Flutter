// ignore: file_names
import 'package:flutter/material.dart';
import 'package:future_insight/widgets/WebViewWidget.dart';

// ignore: camel_case_types
class Web_Devlopment extends StatelessWidget {
  const Web_Devlopment({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return Future.value(false);
        },
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context)),
            title: const Text('Website Development'),
            backgroundColor: Theme.of(context).colorScheme.secondary,
          ),
          body: const WebViewWidget(
            url:
                'https://future-insight.blog/services/web-development/', // replace with your actual URL
          ),
        ));
  }
}
