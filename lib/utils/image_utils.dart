
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:hjtv_flutter/analytics/analytics.dart';
import 'package:path_provider/path_provider.dart';

Image ImageUtils(String imageName,{String format:'png',double? width,double? height,BoxFit fit = BoxFit.fill,Color? color}){



  String name = 'assets/images/$imageName.$format';
  if (width != null && height != null) {
    return Image.asset(name,width:width ,height:height,fit: fit,color:color,);
  }
  return Image.asset(name,fit: fit,);

}

Widget CachedNetworkImageUtils(String? imageUrl,{double? width,double? height,BoxFit fit = BoxFit.cover,String placeholder = 'user_icon',bool bigImageenabled = true,String event = ''}){

   if(imageUrl == null || imageUrl.length ==0){
     return ImageUtils(placeholder,width: width,height: height,fit: BoxFit.fill);
   }

   Widget image = ExtendedImage.network(imageUrl,width: width,height: height,fit: fit,retries:3,loadStateChanged: (ExtendedImageState state) {

     switch (state.extendedImageLoadState) {
       case LoadState.loading:
         return ImageUtils(placeholder,width: width,height: height,fit: BoxFit.fill);
         break;
       case LoadState.completed:
         return null;
         break;
       case LoadState.failed:
         return ImageUtils(placeholder,width: width,height: height,fit: BoxFit.fill);
         break;
     }
   },
     cache: true,
   );

   if(bigImageenabled == true){
     return GestureDetector(
       child:image,
       onTap: (){
         Analytics.onEvent(event,
             {AnalyticsEvent.EVENT_NAME:AnalyticsEvent.USER_ICON});
       },
     );
   } else {
     return image;
   }
}

// // 把图片ByteData写入File，并触发微信分享
// Future<File?> CreateShareImage(GlobalKey repaintWidgetKey ) async {
//
//   ByteData? sourceByteData = await _capturePngToByteData(repaintWidgetKey);
//   if(sourceByteData == null){
//     return null;
//   }
//   Uint8List sourceBytes = sourceByteData.buffer.asUint8List();
//   Directory tempDir = await getTemporaryDirectory();
//
//   String storagePath = tempDir.path;
//   final tag = DateTime.now().millisecondsSinceEpoch;
//   File file = new File('$storagePath/$tag.JPEG');
//
//   if (!file.existsSync()) {
//     file.createSync();
//   }
//   file.writeAsBytesSync(sourceBytes);
//
//   return file;
//
// }

Future<ByteData?> _capturePngToByteData(GlobalKey repaintWidgetKey) async {
  try {
    RenderRepaintBoundary boundary = repaintWidgetKey.currentContext!
        .findRenderObject()! as RenderRepaintBoundary;
    double dpr = ui.window.devicePixelRatio; // 获取当前设备的像素比
    ui.Image image = await boundary.toImage(pixelRatio: dpr);
    ByteData? _byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    return _byteData;
  } catch (e) {
    print(e);
  }
  return null;
}


