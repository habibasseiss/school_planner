import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String? name;
  final Function? error;
  const CustomTextForm({Key? key, @required this.name, this.error})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(),
          hintText: '$name',
          border: const OutlineInputBorder()),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return "Por favor insira $name!";
        }
        return null;
      },
    );
  }
}
