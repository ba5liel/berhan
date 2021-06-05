import 'package:berhan/models/channel_message_model.dart';
import 'package:berhan/models/direct_message_model.dart';

abstract class IRepository{

  Future<List<ChannelModel>> getHomeData();

  Future<List<DirectMessageModel>> getDirectMessageData();
}