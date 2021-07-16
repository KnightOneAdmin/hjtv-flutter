
import 'package:get/get.dart';

class Messages extends Translations{


  static const String USER_NAME = 'user_name';
  static const String USER_PWD = 'user_pwd';


  static String user_name(){
    return USER_NAME.tr;
  }

  @override
  Map<String, Map<String, String>> get keys => {
    'zh_CN':{
      USER_NAME: '用户名',
      USER_PWD: '密码',

    },
    'en_US':{
      USER_NAME: 'user name',
      USER_PWD: 'password',
    }

  };

}