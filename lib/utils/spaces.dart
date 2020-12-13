import 'package:flutter/cupertino.dart';

class InputDoneView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromRGBO(240, 240, 240, 1),
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          child: CupertinoButton(
            padding: EdgeInsets.only(right: 24.0, top: 8.0, bottom: 8.0),
            onPressed: () {
              var focus = new FocusNode();
              FocusScope.of(context).requestFocus(focus);
              focus.unfocus();
            },
            child: Text(
              'Done',
              style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(20, 137, 241, 1),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

OverlayEntry showOverlay(BuildContext context, OverlayEntry overlayEntry) {
  if (overlayEntry != null) return overlayEntry;
  OverlayState overlayState = Overlay.of(context);
  overlayEntry = OverlayEntry(builder: (context) {
    return Positioned(
      bottom: MediaQuery.of(context).viewInsets.bottom,
      right: 0.0,
      left: 0.0,
      child: InputDoneView(),
    );
  });

  overlayState.insert(overlayEntry);

  return overlayEntry;
}

OverlayEntry removeOverlay(OverlayEntry overlayEntry) {
  if (overlayEntry != null) {
    overlayEntry.remove();
    overlayEntry = null;
  }
  return overlayEntry;
}
