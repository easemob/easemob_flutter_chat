import 'package:flutter/material.dart';
import 'package:im_flutter_sdk/im_flutter_sdk.dart';

class ChatRoomPage extends StatefulWidget {
  const ChatRoomPage({Key? key}) : super(key: key);

  @override
  State<ChatRoomPage> createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage>
    implements EMChatRoomEventListener {
  @override
  void initState() {
    EMClient.getInstance.chatRoomManager.addChatRoomChangeListener(this);
    super.initState();
  }

  @override
  void dispose() {
    EMClient.getInstance.chatRoomManager.removeChatRoomListener(this);
    super.dispose();
  }

  void testCode() async {
    EMOptions options = EMOptions(
      appKey: "appKey",
      deleteMessagesAsExitChatRoom: true,
    );

    String groupId = "";
    List<String> members = [];
    String newOwner = "";
    String memberId = "";
    String adminId = "";
    List<String> blockIds = [];
    int pageSize = 0;
    int pageNum = 0;
    String newName = "";
    String newDesc = "";
    String newAnnouncement = "";
    String filePath = "";
    String fileId = "";
    String extension = "";
    String name = "";
    String roomId = "";
    String cursor = "";
    String newSubject = "";
    try {
      await EMClient.getInstance.chatRoomManager.changeChatRoomDescription(
        roomId,
        newDesc,
      );
    } on EMError catch (e) {
      // 更新聊天室描述失败，错误代码: e.code, 错误描述: e.description
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void onAdminAddedFromChatRoom(String roomId, String admin) {}

  @override
  void onAdminRemovedFromChatRoom(String roomId, String admin) {}

  @override
  void onAllChatRoomMemberMuteStateChanged(String roomId, bool isAllMuted) {}

  @override
  void onAnnouncementChangedFromChatRoom(String roomId, String announcement) {}

  @override
  void onChatRoomDestroyed(String roomId, String? roomName) {}

  @override
  void onMemberExitedFromChatRoom(
      String roomId, String? roomName, String participant) {}

  @override
  void onMemberJoinedFromChatRoom(String roomId, String participant) {}

  @override
  void onMuteListAddedFromChatRoom(
      String roomId, List<String> mutes, String? expireTime) {}

  @override
  void onMuteListRemovedFromChatRoom(String roomId, List<String> mutes) {}

  @override
  void onOwnerChangedFromChatRoom(
      String roomId, String newOwner, String oldOwner) {}

  @override
  void onRemovedFromChatRoom(
      String roomId, String? roomName, String? participant) {}

  @override
  void onWhiteListAddedFromChatRoom(String roomId, List<String> members) {}

  @override
  void onWhiteListRemovedFromChatRoom(String roomId, List<String> members) {}
}
