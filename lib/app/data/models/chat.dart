
import 'message.dart';

class Chat {
  int? id;
  String? senderName;
  String? senderAvatar;
  String? createdAt;
  List<Message>? messages;
  bool? seen;
  Chat(
      { this.id,
        this.senderName,
        this.senderAvatar,
        this.createdAt,
        this.seen,
        this.messages});

}
