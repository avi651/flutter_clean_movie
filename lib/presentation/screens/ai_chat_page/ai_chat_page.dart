// presentation/ai_chat/ai_chat_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_clean/presentation/ai_chat_cubit/ai_chat_cubit.dart';
import 'package:movie_clean/presentation/ai_chat_cubit/ai_chat_state.dart';
import 'package:movie_clean/domain/ai/chat_message.dart';
import 'package:movie_clean/presentation/widgets/chat_bubble.dart';
import 'package:movie_clean/presentation/widgets/input_field.dart';

class AIChatPage extends StatefulWidget {
  const AIChatPage({super.key});

  @override
  State<AIChatPage> createState() => _AIChatPageState();
}

class _AIChatPageState extends State<AIChatPage> {
  final TextEditingController controller = TextEditingController();
  final ScrollController scrollController = ScrollController();

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AI Chat")),
      body: Column(
        children: [
          Expanded(
            child: BlocListener<AIChatCubit, AIChatState>(
              listener: (_, __) => _scrollToBottom(),
              child: BlocBuilder<AIChatCubit, AIChatState>(
                builder: (context, state) {
                  return ListView.builder(
                    controller: scrollController,
                    itemCount: state.messages.length,
                    itemBuilder: (_, index) {
                      final msg = state.messages[index];

                      return Align(
                        alignment: msg.type == MessageType.user
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: ChatBubble(message: msg),
                      );
                    },
                  );
                },
              ),
            ),
          ),

          BlocBuilder<AIChatCubit, AIChatState>(
            buildWhen: (prev, curr) => prev.isTyping != curr.isTyping,
            builder: (_, state) {
              if (!state.isTyping) return const SizedBox();

              return const Padding(
                padding: EdgeInsets.all(8),
                child: Text("Typing..."),
              );
            },
          ),

          InputField(controller: controller),
        ],
      ),
    );
  }
}
