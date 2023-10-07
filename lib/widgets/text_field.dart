import 'package:flutter/material.dart';

TextField textfield({
  void Function(String)? onChanged,
  TextEditingController? controller,
  InputDecoration? decoration = const InputDecoration(),
  void Function(String)? onSubmitted,
}
) {
  return TextField(
    controller: controller,
    onChanged: onChanged,
    onSubmitted: onSubmitted,
  );
}