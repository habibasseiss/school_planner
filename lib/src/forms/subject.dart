import 'package:flutter/material.dart';

class TeacherForm extends StatefulWidget {
  const TeacherForm({Key? key}) : super(key: key);

  @override
  _TeacherFormState createState() => _TeacherFormState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _TeacherFormState extends State<TeacherForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Insira o titulo",
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Por favor insira o titulo";
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Process data. (Save the data)
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
