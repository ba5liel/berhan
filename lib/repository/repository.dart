import 'package:berhan/interfaces/i_mockdata.dart';
import 'package:berhan/interfaces/i_repository.dart';
import 'package:berhan/locator.dart';
import 'package:berhan/models/channel_message_model.dart';
import 'package:berhan/models/direct_message_model.dart';

class Repository implements IRepository{

    IMockData iMockData = locator<IMockData>();

  @override
  Future<List<ChannelModel>> getHomeData() {
   
    return iMockData.getHomeDrawerListData();
  }

  @override
  Future<List<DirectMessageModel>> getDirectMessageData() async{
    
    return iMockData.getDirectMessageListData();
  }




}

