import 'package:flutter/material.dart';

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80),
        child: Column(
          children: [
            GridPaper(
              color: Colors.blue,
              divisions: 4,
              interval: 100,
              subdivisions: 2,
              child: Center(child: Text("GridPaper Example")),
            ),
            SizedBox(
              width: 300,
              height: 400,
              child: Flow(
                delegate: FlowDelegateExample(),
                children: List.generate(5, (index) {
                  return Container(
                    width: 50,
                    height: 50,
                    color: Colors.primaries[index % Colors.primaries.length],
                  );
                }),
              ),
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: MySearchDelegate());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FlowDelegateExample extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    for (int i = 0; i < context.childCount; i++) {
      final x = i * 60.0;
      final y = i * 60.0;
      context.paintChild(i, transform: Matrix4.translationValues(x, y, 0));
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) => false;
}

class MySearchDelegate extends SearchDelegate {
  final List<String> data = ["Apple", "Banana", "Orange", "Grapes"];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: () => query = '', icon: Icon(Icons.clear))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, null), icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text("You selected: $query"));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = data.where((item) => item.contains(query)).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]),
          onTap: () => query = suggestions[index],
        );
      },
    );
  }
}
