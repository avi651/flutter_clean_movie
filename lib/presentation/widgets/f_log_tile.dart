import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:movie_clean/domain/logger/log_data.dart';

class FLogTile extends StatefulWidget {
  final LogData logData;
  final DateFormat dateFormat;

  const FLogTile({required this.logData, required this.dateFormat, super.key});

  @override
  State<FLogTile> createState() => _FLogTileState();
}

class _FLogTileState extends State<FLogTile> {
  late final LogData logData;
  bool showDetails = false;

  @override
  void initState() {
    logData = widget.logData;
    super.initState();
  }

  void toggleDetails() {
    setState(() {
      showDetails = !showDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleDetails,
      onLongPress: () async {
        await Clipboard.setData(
          ClipboardData(text: logData.toJson().toString()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: logData.level.color),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _buildContent().toList(),
          ),
        ),
      ),
    );
  }

  Iterable<Widget> _buildContent() sync* {
    yield Row(
      children: [
        Flexible(
          child: Text(
            "[$logData.level.name.toUpperCase())] ${logData.context}",
            style: TextStyle(color: logData.level.color),
          ),
        ),
        Expanded(
          child: Text(
            widget.dateFormat.format(logData.datetime),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );

    yield const SizedBox(height: 2);
    yield Text(logData.message);
    final details = _buildDetails().toList();
    if (details.isNotEmpty) {
      yield const SizedBox(height: 8);
    }
  }

  Iterable<Widget> _buildDetails() sync* {
    if (logData.details != null) {
      yield Text("Details");
    }
    if (logData.payload != null) {
      yield Text("Payload");
    }
    if (logData.stacktrace != null) {
      yield Text("Stacktrace");
    }
  }
}
