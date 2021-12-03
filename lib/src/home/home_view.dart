import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_planner/src/home/components/task_list_tile.dart';
import 'package:school_planner/src/home/components/week_day_box.dart';
import 'package:school_planner/src/models/task.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final String logoPath = Theme.of(context).brightness == Brightness.dark
        ? 'assets/icons/logo-dark.svg'
        : 'assets/icons/logo.svg';
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(logoPath, height: 40),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          
          const SizedBox(height: 20),
          Text(
            'Atividades atrasadas',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 10),
          const TaskListTile(
            title: 'Prova',
            subtitle: 'Algoritmos 2',
            type: TaskType.meeting,
            alert: true,
          ),
          const Divider(),
          const TaskListTile(
            title: 'Trabalho de Redes Neurais',
            subtitle: 'Inteligência Artificial',
            type: TaskType.homework,
            alert: true,
          ),
          const SizedBox(height: 30),
          Text(
            'Próximas atividades',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 10),
          const TaskListTile(
            title: 'Reunião de Projeto',
            subtitle: 'Aplicativos Móveis',
            type: TaskType.meeting,
          ),
          const Divider(),
          const TaskListTile(
            title: 'Prova',
            subtitle: 'Inteligência Artificial',
            type: TaskType.test,
          ),
          const Divider(),
          const TaskListTile(
            title: 'Trabalho de Computação em Nuvem',
            subtitle: 'Tópicos Especiais em TI',
            type: TaskType.homework,
          ),
          const Divider(),
          const TaskListTile(
            title: 'Prova de recuperação',
            subtitle: 'Estrutura de Dados 2',
            type: TaskType.test,
          ),
        ],
      ),
    );
  }
}
