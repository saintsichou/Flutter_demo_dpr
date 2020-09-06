import 'dart:ui';

class MyBoxFit{
  static double physicalWidth;
  static double physicalHeight;
  static double dpr;
  static double width;
  static double height;
  static double status;

  static void initatal(){
    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;
  
    //2获取dpr
    dpr = window.devicePixelRatio;
  
    //3宽度
    width = physicalWidth / dpr;
    height = physicalHeight / dpr;

    //4状态栏高度
    status = window.padding.top /dpr;
  }
  

}