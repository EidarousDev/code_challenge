import 'package:code_challenge/first_view.dart';
import 'package:code_challenge/second_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(IGrooveCodeChallenge());
}

class IGrooveCodeChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CodeChallenge(
        title: 'iGroove CodeChallenge',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CodeChallenge extends StatefulWidget {
  CodeChallenge({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;

  @override
  _CodeChallengeState createState() => _CodeChallengeState();
}

class _CodeChallengeState extends State<CodeChallenge> {
  bool _showExample = true;

  List<Widget> cashboardItems = [];

  @override
  void initState() {
    super.initState();
  }

  void switchView() {
    setState(() {
      _showExample = !_showExample;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5855DC),
        title: Text(
          widget.title!,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: _showExample ? FirstView() : SecondView(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          switchView();
        },
        child: const Icon(Icons.swap_horiz),
        backgroundColor: const Color(0xff5855DC),
      ),
    );
  }
}
