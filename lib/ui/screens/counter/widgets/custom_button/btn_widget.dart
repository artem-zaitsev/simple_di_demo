import 'package:di_demo/ui/screens/counter/widgets/custom_button/btn_vm.dart';
import 'package:flutter/material.dart';

class Btn extends StatefulWidget {
  final BtnVm? vm;
  final void Function(String) inc;

  const Btn({ 
    Key? key,
    this.vm,
    required this.inc,
   }):
    super(key: key);

  @override
  State<Btn> createState() => _BtnState();
}

class _BtnState extends State<Btn> {

  late final _vm = widget.vm ?? BtnVm(widget.inc);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: _vm.inc);
  }
}