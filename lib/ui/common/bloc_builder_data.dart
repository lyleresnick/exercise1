import 'package:flutter/cupertino.dart';
import 'constants.dart';
import 'loading_overlay.dart';
import 'bloc_builder.dart';
import 'starter_bloc.dart';

class BlocBuilderData<SomeBloc extends StarterBloc<BlocOutput>, BlocOutput>
    extends StatelessWidget {
  final SomeBloc bloc;
  final Widget Function(BuildContext, BlocOutput) builder;
  BlocBuilderData({required this.bloc, required this.builder});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SomeBloc, BlocOutput>(
        bloc: bloc,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return LoadingOverlay(color: Constants.colorOverlay);
          }
          final data = snapshot.data!;
          return builder(context, data);
        });
  }
}
