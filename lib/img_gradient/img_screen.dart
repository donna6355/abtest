import 'package:flutter/material.dart';

class FullImgScreen extends StatelessWidget {
  const FullImgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FULL IMG'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'img/gradient.webp',
          fit: BoxFit.cover,
          cacheHeight: MediaQuery.of(context).size.height.truncate(),
        ),
      ),
    );
  }
}

class SingleImgScreen extends StatelessWidget {
  const SingleImgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('100 x 100 SINGLE IMG'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              'img/gradient.webp',
              fit: BoxFit.fill,
              cacheHeight: 100,
            ),
          ),
        ],
      ),
    );
  }
}

class MultiImgScreen extends StatelessWidget {
  const MultiImgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('100 x 100 MULTI IMG'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              'img/gradient.webp',
              fit: BoxFit.fill,
              cacheHeight: 100,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              'img/card_1.webp',
              fit: BoxFit.fill,
              cacheHeight: 100,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              'img/card_2.webp',
              fit: BoxFit.fill,
              cacheHeight: 100,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              'img/card_3.webp',
              fit: BoxFit.fill,
              cacheHeight: 100,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              'img/gradient.webp',
              fit: BoxFit.fill,
              cacheHeight: 100,
            ),
          ),
        ],
      ),
    );
  }
}
