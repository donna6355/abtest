import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ImgGradientScreen extends StatelessWidget {
  const ImgGradientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image vs Gradient'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
                '그라데이션을 화면에 그리는 경우는 크게 두가지로 나눌 수 있다.\nImage.asset을 이용하여 이미지를 그대로 보여주는 방법과 DecoratedBox를 이용하는 방법이다.\n각각의 장단점과 한계 그리고 성능을 비교해 보는 것이 이 테스트의 목적이다.'),
            const Divider(),
            ElevatedButton(
              onPressed: () => context.push('/imgGradient/fullImg'),
              child: const Text('Full Img'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/imgGradient/fullGradient'),
              child: const Text('Full Gradient'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/imgGradient/singleImg'),
              child: const Text('Single Img'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/imgGradient/singleGradient'),
              child: const Text('Single Gradient'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/imgGradient/multiImg'),
              child: const Text('Multi Img'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/imgGradient/multiGradient'),
              child: const Text('Multi Gradient'),
            ),
          ],
        ),
      ),
    );
  }
}
