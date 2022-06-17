import 'package:flutter/widgets.dart';
import 'package:im_flutter_sdk/im_flutter_sdk.dart';

class MultiDevicePage extends StatefulWidget {
  const MultiDevicePage({Key? key}) : super(key: key);

  @override
  State<MultiDevicePage> createState() => _MultiDevicePageState();
}

class _MultiDevicePageState extends State<MultiDevicePage>
    implements EMMultiDeviceListener {
  @override
  void initState() {
    EMClient.getInstance.addMultiDeviceListener(this);
    super.initState();
  }

  @override
  void dispose() {
    EMClient.getInstance.removeMultiDeviceListener(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void onContactEvent(
      EMMultiDevicesEvent event, String username, String? ext) {}

  @override
  void onGroupEvent(
      EMMultiDevicesEvent event, String groupId, List<String>? usernames) {}
}
