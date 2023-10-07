
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/data/models/chat.dart';
import 'package:bamo/app/data/models/message.dart';
import 'package:get/get.dart';
class ChatController extends GetxController {
  List<Chat> todayChats = [
    Chat(senderName: "Hachemi Mouhamed",createdAt: "Nov 03, 2023",seen: false,
        senderAvatar: AppImage.sender,
        messages: [
          Message(message: "Hi what is the location of your Stand",isSentByMe: false,createdAt: DateTime.now().toString()),
          Message(message: "Stand number D12",isSentByMe: true,createdAt: DateTime.now().toString()),
          Message(message: "Thank you so much i will make sure to give you a visit",isSentByMe: false,createdAt: DateTime.now().toString()),
          Message(message: "I will send you my stand location now Thank you !",isSentByMe: true,createdAt: DateTime.now().toString()),
          Message(message: "Thanks i will be waiting for you",isSentByMe: true,createdAt: DateTime.now().toString()),
          Message(message: "Hello Sir !!",createdAt: DateTime.now().toString()),
        ]),
    Chat(senderName: "Salim Ahmed",createdAt: "Nov 01, 2023",seen: false,
        messages: [
          Message(message: "okay no pronlem imma send you the files no problem",
              isSentByMe: true,createdAt: DateTime.now().toString())
        ]),
    Chat(senderName: "Wail Abdeslam",createdAt: "Oct 29, 2023",seen: true,
        messages: [Message(message: "Yes no prob.",isSentByMe: true,
            createdAt: DateTime.now().toString())]),
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