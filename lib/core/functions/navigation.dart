import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

pushto(BuildContext context, Widget Screen) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Screen),
  );
}

pushrplc(BuildContext context, Widget Screen) {
  return Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => Screen),
  );
}

pushrmv(BuildContext context, Widget Screen){
  return Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => Screen),
        (route) => false,
  );
}

pop(BuildContext context) {
  return Navigator.pop(context);
}
