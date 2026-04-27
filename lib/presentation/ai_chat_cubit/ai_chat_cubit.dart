import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_clean/domain/usecases/ai/send_message_usecase.dart';
import 'ai_chat_state.dart';
import '../../domain/ai/chat_message.dart';

class AIChatCubit extends Cubit<AIChatState> {
  final SendMessageUseCase useCase;

  AIChatCubit(this.useCase) : super(const AIChatState());

  Future<void> sendMessage(String text) async {
    if (text.trim().isEmpty) return;

    final userMessage = ChatMessage(text: text, type: MessageType.user);

    emit(
      state.copyWith(
        messages: [...state.messages, userMessage],
        isTyping: true,
        error: null,
      ),
    );

    final result = await useCase(text);

    result.fold(
      (failure) {
        emit(state.copyWith(isTyping: false, error: failure.toString()));
      },
      (response) async {
        final aiMessage = ChatMessage(text: "", type: MessageType.ai);

        emit(state.copyWith(messages: [...state.messages, aiMessage]));

        await _streamResponse(response);
      },
    );
  }

  Future<void> _streamResponse(String fullText) async {
    String current = "";

    final words = fullText.split(" ");

    for (final word in words) {
      await Future.delayed(const Duration(milliseconds: 35));

      current += "$word ";

      final msgs = [...state.messages];
      msgs[msgs.length - 1] = msgs.last.copyWith(text: current);

      emit(state.copyWith(messages: msgs));
    }

    emit(state.copyWith(isTyping: false));
  }
}
