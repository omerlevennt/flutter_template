import 'package:flutter/material.dart';
import 'package:flutter_template/core/base/state/base_state.dart';
import 'package:flutter_template/core/base/view/base_view.dart';
import 'package:flutter_template/view/authenticate/test/viewmodel/test_view_model.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  // TestViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeData.primaryColor,
      height: dynamicHeight(0.1),
    );
    /*return BaseView<TestViewModel>(
        onPageBilder: (context, value) => Text("data"),
        viewModel: TestViewModel(),
        onModelReady: (model) {
          viewModel = model;
        },
        onDispose: "onDispose");*/
  }
}
