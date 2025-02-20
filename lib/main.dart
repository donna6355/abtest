import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:performance/widget_screen.dart';
import 'img_gradient/gradient_screen.dart';
import 'img_gradient/img_screen.dart';
import 'img_gradient/img_gradient_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Performance Test',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              elevation: WidgetStateProperty.all<double>(0),
              shape: WidgetStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
          )),
      routerConfig: GoRouter(
        routes: [
          GoRoute(path: '/', builder: (_, __) => const MainScreen()),
          GoRoute(
            path: '/imgGradient',
            builder: (_, __) => const ImgGradientScreen(),
            routes: [
              GoRoute(
                  path: 'fullImg', builder: (_, __) => const FullImgScreen()),
              GoRoute(
                  path: 'singleImg',
                  builder: (_, __) => const SingleImgScreen()),
              GoRoute(
                  path: 'multiImg', builder: (_, __) => const MultiImgScreen()),
              GoRoute(
                  path: 'fullGradient',
                  builder: (_, __) => const FullGradientScreen()),
              GoRoute(
                  path: 'singleGradient',
                  builder: (_, __) => const SingleGradientScreen()),
              GoRoute(
                  path: 'multiGradient',
                  builder: (_, __) => const MultiGradientScreen()),
            ],
          ),
          GoRoute(path: '/widgets', builder: (_, __) => const WidgetScreen()),
        ],
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => context.push('/imgGradient'),
            child: const Text('Img vs Gradient'),
          ),
          ElevatedButton(
            onPressed: () => context.push('/widgets'),
            child: const Text('Unfamilita Widgets'),
          ),
        ],
      ),
    );
  }
}
