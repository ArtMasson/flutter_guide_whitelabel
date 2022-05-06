import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as ql;

class RichTextEditorWidget extends StatelessWidget {
  final ql.QuillController controller;
  final bool readOnly;

  const RichTextEditorWidget({
    required this.controller,
    this.readOnly = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!readOnly)
          ql.QuillToolbar.basic(
            controller: controller,
            multiRowsDisplay: false,
          ),
        Expanded(
          child: ql.QuillEditor.basic(
            controller: controller,
            readOnly: false, // true for view only mode
          ),
        )
      ],
    );
  }
}
