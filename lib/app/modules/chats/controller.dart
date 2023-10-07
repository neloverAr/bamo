
import 'package:bamo/app/data/models/chat.dart';
import 'package:bamo/app/data/models/message.dart';
import 'package:get/get.dart';
class ChatController extends GetxController {
  List<Chat> todayChats = [
    Chat(senderName: "Hachemi Mouhamed",createdAt: "Nov 03, 2023",seen: false,
        messages: [Message(message: "Hello Sir !!")]),
    Chat(senderName: "Salim Ahmed",createdAt: "Nov 01, 2023",seen: false,
        messages: [Message(message: "okay no pronlem imma send you the files no problem")]),
    Chat(senderName: "Wail Abdeslam",createdAt: "Oct 29, 2023",seen: true,
        messages: [Message(message: "Yes no prob.")]),
  ];

  List<Chat> weekChats = [
    Chat(senderName: "Alex Rodriguez",createdAt: "Nov 03, 2023",seen: true,
        messages: [Message(message: "Hello Sir !!")]),
    Chat(senderName: "Jordan Belfort",createdAt: "Nov 01, 2023",seen: true,
        messages: [Message(message: "okay no pronlem imma send you the files no problem")]),
    Chat(senderName: "Christina Merdina",createdAt: "Oct 29, 2023",seen: true,
        messages: [Message(message: "Yes no prob.")]),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}