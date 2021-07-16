
import 'package:hjtv_flutter/utils/log_utils.dart';

class AnalyticsEvent{


  static const EVENT_NAME = 'envent_name';

  static const LOGIN_EVENTS = 'login_events';
  static const LOGIN_INFO_EVENTS = 'login_info_events';
  static const LOGIN_INFO_WEIXIN_EVENTS = 'login_info_weixin_events';
  static const TABBAR_EVENTS = 'tabbar_events';
  static const BUSINESS_EVENTS = 'business_events';
  static const BUSINESS_DETAIL_EVENTS = 'business_detail_events';
  static const BUSINESS_SEARCH_EVENTS = 'business_search_events';
  static const YELLOWPAGE_EVENTS = 'yellowpage_events';
  static const YELLOWPAGE_DETAIL_EVENTS = 'yellowpage_detail_events';
  static const YELLOWPAGE_SEARCH_EVENTS = 'yellowpage_search_events';
  static const PUBLISH_EVENTS = 'publish_events';
  static const INFOMATION_EVENTS = 'infomation_events';
  static const INFOMATION_DETAIL_EVENTS = 'infomation_detail_events';
  static const MINE_EVENTS = 'mine_events';
  static const MINE_CARD_EVENTS = 'mine_card_events';
  static const MINE_PUBLISH_EVENTS = 'mine_publish_events';
  static const MINE_COOPERATION_EVENTS = 'mine_cooperation_events';
  static const MINE_ENDORSE_EVENTS = 'mine_endorse_events';
  static const MINE_ABOUTUS_EVENTS = 'mine_about_us_events';
  static const MINE_CONTACT_EVENTS = 'mine_contact_events';
  static const MINE_MESSAGE_EVENTS = 'mine_message_events';
  static const AUTHENTICATION_EVENTS = 'authentication_events';
  static const MINE_MANAGE_EVENTS = 'mine_manage_events';
  static const ENDORSE_EVENTS = 'endorse_events';




  static const LABEL_FILTRATE = 'LableFiltrate';
  static const SENDCODE = 'sendCode';
  static const LOGIN = 'login';
  static const LOGOUT = 'logout';
  static const SERVICE_PROTOCOL = 'service_protocol';
  static const PRICACY_PROTOCOL = 'privacy_protocol';
  static const WEIXIN_LOGIN = 'weixin_login';


  static const ENTER_XIDONG = 'enter_xidong';


  static const BUSINESS = 'business';
  static const YELLOWPAGES = 'yellowpages';
  static const PUBLISH = 'publish';
  static const AUTHENTICATION_PUBLISH_CANCLE = 'authentication_publish_cancle';
  static const AUTHENTICATION_PUBLISH_CONFIRM = 'authentication_publish_confirm';
  static const INFORMATION = 'information';
  static const MINE = 'mine';

  static const CHANGE = 'change';
  static const SEARCH = 'search';
  static const CARD = 'card';
  static const PUBLISH_PROTOCOL = 'publish_protocol';
  static const USER_ICON = 'user_icon';
  static const ENDORSE_ICON = 'endorse_icon';
  static const REPORT = 'report';
  static const PHONE_COPY = 'play_phone';
  static const QQ_COPY = 'qq_copy';
  static const WEIXIN_COPY = 'weixin_copy';

  static const CLEAR_HISTORY = 'clear_history';

  static const GET_BUSINESS = 'get_business';
  static const GET_BUSINESS_SUCESS = 'get_business_sucess';
  static const NEED = 'need';
  static const SERVICE = 'service';

  static const GO_AUTHENTICATION = 'go_authentication';
  static const SYNC_CARD = 'sync_card_info';

  static const AFFIRM = 'affirm';
  static const CANCLE = 'cancle';

  static const MINE_MANAGE = 'mine_manage';
  static const MINE_AUTHENTICATION = 'mine_authentication';
  static const MINE_PUBLISH = 'mine_publish';
  static const MINE_COOPERATION = 'mine_cooperation';
  static const MINE_ENDORSE = 'mine_endorse';
  static const MINE_SUBSCRIPTION = 'mine_subscription';
  static const MINE_MESSAGE = 'mine_message';
  static const MINE_COLLECT = 'mine_collect';
  static const MY_CARD_NO_DISTURBIND = 'my_card_no_disturbing';

  static const NO_USER_ICON = 'no_user_icon';
  static const AFFIRMANDCOPY = 'affirm_and_copy';

  static const CHANGE_PHOTO = 'change_photo';
  static const CHANGE_PHOTO_CONFIRM = 'change_photo_confirm';
  static const COMMIT_AUTHENTICATION = 'commit_authentication';
  static const CHANGE_AUTHENTICATION = 'change_authentication';
  static const REVOCATION_AUTHENTICATION = 'revocation_authentication';

  static const ENDORSE_AFFIRM = 'endorse_affirm';
  static const ENDORSE_CANCLE = 'endorse_cancle';


  ///v1.6.0新增
  static const MEIN_SETTING_EVENTS = 'mine_setting_events';

  static const PRIVACY_SETTING_EVENTS = 'privacy_setting_events';

  static const MINE_SUBSCRIPTION_EVENTS = 'mine_subscription_events';

  static const OPERATION_DIALOG_EVENTS = 'operation_dialog_events';

  static const MINE_QUESTION = 'mine_question';
  static const MINE_SETTING = 'mine_setting';

  static const SETTING_CONTACT = 'setting_contact';
  static const SETTING_SHARE = 'setting_share';
  static const SETTING_ABOUTUS = 'setting_about_us';
  static const SETTING_PRIVACY = 'setting_privacy';


  static const MY_PUBLISH_NEED_ICON_CLICK = 'my_publish_need_icon_click';
  static const MY_PUBLISH_SERVICE_ICON_CLICK = 'my_publish_service_icon_click';

  static const MY_PUBLISH_NEED_MORE_CLICK = 'my_publish_need_more_click';
  static const MY_PUBLISH_SERVICE_MORE_CLICK = 'my_publish_service_more_click';

  static const COOPERATION_BUSINESS_CLICK = 'business_click';
  static const COOPERATION_YELLOWPAGES_CLICK = 'yellowpages_click';

  ///v1.8.0
  static const MINE_COLLECT_EVENTS = 'mine_collect_events';
  static const CREATE_PLACARD_EVENTS = 'create_placard_events';

  static const SETTING_PLACARD = 'setting_placard';

  static const COLLECT_CLICK = 'collect_click';

  static const SHARE_CLICK = 'share_click';

  static const SAVE_PHOTOS_CLICK = 'save_photos_click';
  static const SHARE_WEIXIN_CLICK = 'share_weixin_click';

  static const CREATE_PLACARD_CLICK = 'create_placard_click';
}


class Analytics {

  // 发送自定义事件（目前属性值支持字符、整数、浮点、长整数，暂不支持NULL、布尔、MAP、数组）
  static void onEvent(String? event,Map<String,dynamic> properties){
    Log.d('Log.d  event $event map $properties');
    if(event != null){

    }
  }
  // 设置用户账号
  // 如果需要使用页面统计，则先打开该设置
  static void setPageCollectionModeManual() {
  }
  // 进入页面统计
  static void onPageStart(String viewName) {
    print('进入页面  $viewName');
    if(viewName == null){
      return;
    }
  }

  // 离开页面统计
  static void onPageEnd(String viewName) {
    print('离开页面  $viewName');
    if(viewName == null){
      return;
    }
  }

  // 错误发送
  static void reportError(String error){

  }

}
