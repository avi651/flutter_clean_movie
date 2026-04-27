import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/presentation/ai_chat_cubit/ai_chat_cubit.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;

  const InputField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(hintText: "Ask something..."),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              //context.read<AIChatCubit>().sendMessage(controller.text);
              Modular.get<AIChatCubit>().sendMessage(controller.text);
              controller.clear();
            },
          ),
        ],
      ),
    );
  }
}
