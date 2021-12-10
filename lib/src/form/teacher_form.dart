import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TeacherForm extends StatefulWidget {
  const TeacherForm({Key? key}) : super(key: key);

  @override
  State<TeacherForm> createState() => _TeacherFormState();
}

class _TeacherFormState extends State<TeacherForm> {
  final nameController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const MyTextForm(
                  nome: "Nome prof",
                ),
                const Spacer(),
                ElevatedButton(onPressed: () {}, child: const Text("Pudim"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextForm extends StatelessWidget {
  final String? nome;
  final Function? error;
  const MyTextForm({Key? key, @required this.nome, this.error})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(),
          hintText: '$nome',
          border: const OutlineInputBorder()),
    );
  }
}
