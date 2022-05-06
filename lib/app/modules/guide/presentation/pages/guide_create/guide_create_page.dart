import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as ql;

import '../../../../../common/presentation/widgets/rich_text_editor_widget.dart';
import '../../widgets/guide_app_bar_widget.dart';

class GuideCreatePage extends StatefulWidget {
  const GuideCreatePage({Key? key}) : super(key: key);

  @override
  State<GuideCreatePage> createState() => _GuideCreatePageState();
}

class _GuideCreatePageState extends State<GuideCreatePage> {
  final ql.QuillController controller = ql.QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: GuideAppBarWidget(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Row(
            children: [
              const Text(
                'Crie um novo conteúdo',
              ),
              TextButton(
                  onPressed: () {
                    var json =
                        jsonEncode(controller.document.toDelta().toJson());
                    print(json);
                  },
                  child: const Text('GetJson')),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Save',
                ),
              ),
            ],
          )),
          Expanded(
            child: RichTextEditorWidget(
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
