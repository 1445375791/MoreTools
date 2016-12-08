//
//  DealTheDataForLabel.m
//  MoreTool
//
//  Created by 吴朋 on 2016/12/8.
//  Copyright © 2016年 吴朋. All rights reserved.
//

#import "DealTheDataForLabel.h"

@implementation DealTheDataForLabel

+ (void)labelContentForHtmlStringLineAttrabuteText:(UILabel *)label content:(NSString *)content contentWidth:(CGFloat)width font:(UIFont *)font lineSpace:(CGFloat)linespace {
    
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithData:[content dataUsingEncoding:NSUnicodeStringEncoding] options:@{NSDocumentTypeDocumentAttribute : NSHTMLTextDocumentType } documentAttributes:nil error:nil];
        // 设置行间距
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    
    if (!linespace) {
        linespace = 5;
    }
    
    paragraph.lineSpacing = linespace;
    [attrStr addAttributes:@{NSFontAttributeName : font, NSParagraphStyleAttributeName : paragraph, NSForegroundColorAttributeName : [UIColor darkTextColor]} range:NSMakeRange(0, attrStr.length)];
    
    NSDictionary *dic = @{NSFontAttributeName : font, NSParagraphStyleAttributeName : paragraph};
    
    CGFloat labelHeight = [content boundingRectWithSize:CGSizeMake(width, 1000) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size.height;
    
        // 改变label的frame
    CGRect tempRect = label.frame;
    tempRect.size.height = labelHeight;
    label.frame = tempRect;
    label.attributedText = attrStr;
}

@end
