import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class BaseView<T extends Store> extends StatefulWidget {
  final Widget Function(BuildContext context, T value) onPageBilder;
  final T viewModel;
  final Function(T model) onModelReady;
  final VoidCallback onDispose;

  const BaseView(
      {super.key,
      required this.onPageBilder,
      required this.viewModel,
      required this.onModelReady,
      required this.onDispose});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    super.initState();
    if (widget.onModelReady != null) widget.onModelReady(widget.viewModel);
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.onDispose != null) widget.onDispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBilder(context, widget.viewModel);
  }
}
