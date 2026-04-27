enum MessageType { user, ai }

class ChatMessage {
  final String text;
  final MessageType type;

  const ChatMessage({required this.text, required this.type});

  ChatMessage copyWith({String? text}) {
    return ChatMessage(text: text ?? this.text, type: type);
  }
}
