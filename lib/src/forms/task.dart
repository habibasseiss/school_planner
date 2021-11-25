import 'package:flutter/material.dart';
import 'package:school_planner/src/helpers/custom_text_form.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({Key? key}) : super(key: key);

  @override
  _TaskFormState createState() => _TaskFormState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _TaskFormState extends State<TaskForm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Expanded(
              child: CustomTextForm(name: "O Titulo da Tarefa"),
            ),
            const Expanded(
              child: CustomTextForm(name: "A Descricao da tarefa"),
            ),
            const Expanded(
              child: CustomTextForm(name: "A data da tarefa"),
            ),
            const Expanded(
              child: CustomTextForm(name: "O Status da tarefa"),
            ),
            const Expanded(
              child: CustomTextForm(name: "O Tipo"),
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
      ),
    );
  }
}
