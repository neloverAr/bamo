class Message {
  int? id;
  int? chatId;
  String? message;
  bool? read;
  int? senderName;
  String? senderAvatar;
  String? createdAt;
  String? readName;
  String? createdTime;

  Message(
      {this.id,
        this.chatId,
        this.message,
        this.read,
        this.senderName,
        this.senderAvatar,
        this.createdAt,
        this.readName,
        this.createdTime});

}