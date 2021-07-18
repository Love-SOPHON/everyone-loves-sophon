import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'We Love Sophon',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Everyone Loves GOD SOPHON'),
          centerTitle: true
        ),
        body: Center(
          child: StfW(),
        ),
      ),
    );
  }
}

class StfW extends StatefulWidget {
  const StfW({Key? key}) : super(key: key);

  @override
  _StfWState createState() => _StfWState();
}

//to make the main things
class _StfWState extends State<StfW> {
  final words = <WordPair>[];

  @override
  Widget build(BuildContext context) => showLove();


  Widget showLove() =>
      ListView.builder(itemBuilder: (context, a) {
        if (a.isOdd) return const Divider(color: Colors.green,);
        final shit = a ~/ 2;

        if (shit >= words.length) {
          words.addAll(generateWordPairs().take(20)); /*4*/
        }

        if (shit == 0)
          return  ListTile(
              title: Text(words[shit].asPascalCase + " loves Sophon"));
        else
          return  ListTile(
              title: Text(words[shit].asPascalCase + " also loves Sophon"));
      });

}
