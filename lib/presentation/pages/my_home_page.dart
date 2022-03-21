import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late QuillController _controller;

  @override
  void initState() {
    _controller = QuillController.basic();
    _controller.formatText(0, 0, Attribute.ul);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 113, left: 46, right: 5),
                child: QuillEditor.basic(
                  controller: _controller,
                  readOnly: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: QuillToolbar(
                children: [
                  IndentButton(
                    icon: Icons.chevron_right,
                    controller: _controller,
                    isIncrease: true,
                  ),
                  ToggleStyleButton(
                    attribute: Attribute.bold,
                    icon: Icons.format_bold,
                    controller: _controller,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
