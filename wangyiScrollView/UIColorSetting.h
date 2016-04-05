//
//  UIColorSetting.h
//  wangyiScrollView
//
//  Created by 无影 on 16/4/4.
//  Copyright © 2016年 macmini. All rights reserved.
//

#ifndef UIColorSetting_h
#define UIColorSetting_h

#ifdef __OBJC__
#import "UIColor+Hex.h"
#endif

#define WYColor(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define WYHexColor(hexcolor) [UIColor colorWithHexString:(hexcolor)]
//十六进制颜色值
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define NavigationBarColor WYColor(57,206,199);

#endif
