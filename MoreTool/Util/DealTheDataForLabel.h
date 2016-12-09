//
//  DealTheDataForLabel.h
//  MoreTool
//
//  Created by 吴朋 on 2016/12/8.
//  Copyright © 2016年 吴朋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DealTheDataForLabel : NSObject
/**
 *  展示html字符串到lable上
 *
 *  @param label     label
 *  @param content   内容
 *  @param width     宽度
 *  @param font      字体
 *  @param linespace 行间距
 */
+ (void)labelContentForHtmlStringLineAttrabuteText:(UILabel *)label content:(NSString *)content contentWidth:(CGFloat)width font:(UIFont *)font lineSpace:(CGFloat)linespace;

+ (void)label:(UILabel *)label contentForHtmlString:(NSString *)content;

@end
