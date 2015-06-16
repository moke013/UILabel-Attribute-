//
//  UILabel+Attribute.h
//  KKOL
//
//  Created by MK on 15/6/8.
//  Copyright (c) 2015年 2291108617@qq.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Attribute)

/**
 *  把一段文字里的所有的某段文字变色
 *
 *  @param mainStr   整段文字
 *  @param changeStr 需要变色的文字
 *  @param color     需要变的颜色
 */
- (void)setAttribute:(NSString *)mainStr ChangeStr:(NSString *)changeStr Color:(UIColor *)color;

@end
