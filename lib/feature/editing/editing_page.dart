import 'package:flutter/material.dart';
import 'package:text_edditer/core/implementations/text_edditer_core/edditer_monitor.dart';
import 'package:text_edditer/core/implementations/text_edditer_core/text_edditer_controller.dart';
import 'package:text_edditer/core/widgets/edditer_base_widget.dart';
import 'package:text_edditer/core/widgets/paper_card.dart';

class EditingPage extends StatelessWidget {
  final EdditerMonitor _edditerMonitor = EdditerMonitor.newDocument();
   late final TextEdditerController _controller;
   EditingPage({super.key});

  @override
  Widget build(BuildContext context) {
    _controller = _edditerMonitor.controller;
    return EdditerBaseWidget(
        selectedIndex: 0,
        child: PaperCard(
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 30,
                child: ElevatedButton(onPressed: (){
                  _controller.enableHighlightColor();
                }, child: Text('highlight',style: Theme.of(context).textTheme.titleLarge,)),
              ),
              Expanded(
                child: TextField(
                  controller: _controller,
                  expands: true,

                  maxLines: null,
                  minLines: null,
                  cursorColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ));
  }
}
