import 'package:flutter/material.dart';
import 'package:text_edditer/core/widgets/edditer_base_widget.dart';
import 'package:text_edditer/core/widgets/paper_card.dart';

class EditingPage extends StatelessWidget {
  const EditingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EdditerBaseWidget(
        selectedIndex: 0,
        child: PaperCard(
          child: TextField(
            maxLines: 400,
            minLines: 400,
            cursorColor: Theme.of(context).colorScheme.secondary,
          ),
        ));
  }
}
