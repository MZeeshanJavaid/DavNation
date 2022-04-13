class ChatMessage {
  final String message;
  final bool isSentByMe;
  final String date;

  ChatMessage({
    required this.message,
    required this.isSentByMe,
    required this.date
  });
}