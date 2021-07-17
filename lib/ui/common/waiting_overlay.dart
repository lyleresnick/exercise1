import 'package:flutter/cupertino.dart';

import 'loading_overlay.dart';

class WaitingOverlay extends StatelessWidget {
  final Widget child;
  final bool isWaiting;

  const WaitingOverlay({required this.child, required this.isWaiting});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(child: child),
        if(isWaiting)
            LoadingOverlay(),
      ],
    );
  }
}
