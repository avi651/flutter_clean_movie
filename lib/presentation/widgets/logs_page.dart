import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_clean/domain/logger/log_data.dart';
import 'package:movie_clean/domain/logger/logger_cubit.dart';

class LogPage extends StatefulWidget {
  static const String path = '/logs';
  const LogPage({super.key});

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  final dataFormat = DateFormat("HH:mm:ss dd/MM/yy");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Logs')),
      body: BlocBuilder<LoggerCubit, List<LogData>>(
        builder: (context, logs) {
          return ListView.builder(
            itemCount: logs.length,
            itemBuilder: (context, index) {
              final logData = logs[logs.length - index - 1];
              return Text(logData.toString());
            },
          );
        },
      ),
    );
  }
}
