//
//  UILabel+Attribute.m
//  KKOL
//
//  Created by MK on 15/6/8.
//  Copyright (c) 2015年 2291108617@qq.com. All rights reserved.
//

#import "UILabel+Attribute.h"



@implementation UILabel (Attribute)



- (void)setAttribute:(NSString *)mainStr ChangeStr:(NSString *)changeStr Color:(UIColor *)color
{
    NSArray * rangeArr = [self selectRange:mainStr ChangeStr:changeStr];
    
    NSMutableAttributedString * noteStr = [[NSMutableAttributedString alloc] initWithString:mainStr];
    for (NSString * rangeStr in rangeArr) {
        NSRange range = NSRangeFromString(rangeStr);
        [noteStr addAttribute:NSForegroundColorAttributeName value:color range:range];
    }
    [self setAttributedText:noteStr];
}

- (NSArray *)selectRange:(NSString *)mainStr ChangeStr:(NSString *)changeStr
{
    NSMutableArray * rangeArr = [[NSMutableArray alloc] init];
    for (NSInteger num = 0; ; num ++) {
        NSRange range = [mainStr rangeOfString:changeStr];
        if (range.location != NSNotFound) {
            mainStr = [mainStr substringFromIndex:range.location + range.length];
            NSString * lastStr = [rangeArr lastObject];
            if (lastStr != nil) {
                NSRange lastRange = NSRangeFromString(lastStr);
                range.location = range.location + lastRange.location + lastRange.length;
            }
            [rangeArr addObject:NSStringFromRange(range)];
        }else
        {
            break;
        }
    }

    return rangeArr;
}


@end
