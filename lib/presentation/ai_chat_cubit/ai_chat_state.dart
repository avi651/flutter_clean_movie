import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/ai/chat_message.dart';

part 'ai_chat_state.freezed.dart';

@freezed
abstract class AIChatState with _$AIChatState {
  const factory AIChatState({
    @Default([]) List<ChatMessage> messages,
    @Default(false) bool isTyping,
    String? error,
  }) = _AIChatState;
}
