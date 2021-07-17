import 'package:exercise1/ui/common/constants.dart';
import 'package:exercise1/ui/common/loading_overlay.dart';
import 'package:exercise1/ui/common/waiting_overlay.dart';
import 'package:exercise1/ui/name_picker/presenter/name_picker_view_model.dart';
import 'package:exercise1/ui/name_picker/view/ex1_button.dart';
import 'package:exercise1/ui/name_picker/view/ex1_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:exercise1/ui/name_picker/presenter/name_picker_presenter.dart';
import 'package:exercise1/ui/name_picker/presenter/name_picker_presenter_output.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NamePickerScene extends StatelessWidget {
  final NamePickerPresenter presenter;
  static final interFieldGap = 12.0;

  NamePickerScene(this.presenter) {
    presenter.eventReady();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Constants.primaryColor,
          title: Text("Startup Names"),
        ),
        body: BlocBuilder<NamePickerPresenter, NamePickerPresenterOutput>(
            bloc: presenter,
            builder: ((context, output) {
              return output.when(
                  showLoading: () => LoadingOverlay(
                        color: Constants.colorOverlay,
                      ),
                  showModel: (viewModel) {
                    if (viewModel.selectedName != null) {
                      WidgetsBinding.instance!
                          .addPostFrameCallback((timeStamp) async {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return _Alert(text: viewModel.selectedName!);
                            });
                      });
                    }
                    return WaitingOverlay(
                      isWaiting: viewModel.isWaiting,
                      child: SingleChildScrollView(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Center(
                          child: Column(
                            children: [
                              IntrinsicWidth(
                                child: Column(children: [
                                  SizedBox(height: 16),
                                  for (var index = 0;
                                      index < viewModel.pageSubset.length;
                                      index += 1)
                                    _RadioButtonWithSpace(
                                        presenter: presenter,
                                        viewRowModel:
                                            viewModel.pageSubset[index],
                                        ordinal: index),
                                ]),
                              ),
                              SizedBox(height: interFieldGap),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Ex1Button(
                                        label: "/\\",
                                        onPressed: presenter.eventGoUp,
                                        enabled: viewModel.canGoUp),
                                    Ex1Button(
                                        label: "\\/",
                                        onPressed: presenter.eventGoDown,
                                        enabled: viewModel.canGoDown),
                                    Ex1Button(
                                        label: "More",
                                        onPressed: presenter.eventMoreNames,
                                        enabled: !viewModel.canGoDown)
                                  ]),
                              SizedBox(height: interFieldGap * 2),
                              Ex1Button(
                                  label: "Show Selection",
                                  onPressed: presenter.eventShowName,
                                  enabled: viewModel.isNameSelected),
                            ],
                          ),
                        ),
                      )),
                    );
                  });
            })));
  }
}

class _Alert extends StatelessWidget {
  final String text;
  const _Alert({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
            child: Container(
                decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                height: 100,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ))));
  }
}

class _RadioButtonWithSpace extends StatelessWidget {
  final NamePickerPresenter presenter;
  final ViewRowModel viewRowModel;
  final int ordinal;

  _RadioButtonWithSpace(
      {required this.presenter,
      required this.viewRowModel,
      required this.ordinal});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Ex1RadioButton(
          label: viewRowModel.startupName,
          ordinal: ordinal,
          isSelected: viewRowModel.isSelected,
          onPressed: presenter.eventNameSelected),
      SizedBox(height: NamePickerScene.interFieldGap),
    ]);
  }
}
