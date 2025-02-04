import 'package:flutter/material.dart';

const BoxDecoration _bgGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0, 0.35, 0.75],
    colors: [Color(0xff0796BE), Color(0xff0F1A39), Color(0xff080706)],
  ),
);
const BoxDecoration _pinBackground = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Color(0xff0C0D40), Color(0xff000108)],
  ),
);
const BoxDecoration _navyOverlayBackground = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xff101735), Color(0x002F439B)],
  ),
);
const BoxDecoration _navBarBackground = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Color(0xff272727), Color(0xff404144)],
  ),
);

class FullGradientScreen extends StatelessWidget {
  const FullGradientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FULL GRADIENT'),
      ),
      body: const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: DecoratedBox(decoration: _bgGradient),
      ),
    );
  }
}

class SingleGradientScreen extends StatelessWidget {
  const SingleGradientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('100 x 100 SINGLE GRADIENT'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: DecoratedBox(decoration: _bgGradient),
          ),
        ],
      ),
    );
  }
}

class MultiGradientScreen extends StatelessWidget {
  const MultiGradientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('100 x 100 MULTI GRADIENT'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: DecoratedBox(decoration: _bgGradient),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 100,
            height: 100,
            child: DecoratedBox(decoration: _pinBackground),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 100,
            height: 100,
            child: DecoratedBox(decoration: _navyOverlayBackground),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 100,
            height: 100,
            child: DecoratedBox(decoration: _navBarBackground),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 100,
            height: 100,
            child: DecoratedBox(decoration: _bgGradient),
          ),
        ],
      ),
    );
  }
}
