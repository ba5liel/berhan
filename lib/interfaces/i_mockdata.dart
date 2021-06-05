import 'package:berhan/models/channel_message_model.dart';
import 'package:berhan/models/direct_message_model.dart';

abstract class IMockData{


  Future<List<ChannelModel>>getHomeDrawerListData();

  Future<List<DirectMessageModel>>getDirectMessageListData();
}
