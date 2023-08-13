import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/home.dart';
import 'package:uni_links/uni_links.dart';

void main() {
  runApp(const MyApp());
  handleDeepLink(); // Xử lý deep link khi ứng dụng khởi chạy
}

Future<void> handleDeepLink() async {
  String? initialLink;
  try {
    initialLink = await getInitialLink();
    // Xử lý initialLink tại đây (nếu có)
  } on PlatformException {
    initialLink = null;
  }

  if (initialLink != null) {
    // Xử lý initialLink
  }

  // Xử lý các link sau khi ứng dụng đã khởi chạy
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
