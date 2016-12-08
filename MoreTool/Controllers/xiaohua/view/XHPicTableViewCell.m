//
//  XHPicTableViewCell.m
//  MoreTool
//
//  Created by 吴朋 on 2016/12/8.
//  Copyright © 2016年 吴朋. All rights reserved.
//

#import "XHPicTableViewCell.h"
#import "XHPicModel.h"
@implementation XHPicTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *identifier = @"XHPicTableViewCell";
    XHPicTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"XHPicTableViewCell" owner:self options:nil] firstObject];
    }
    return cell;
}

-(void)buildTheViewWithModel:(XHPicModel *)model {
    self.titleLabel.text = model.titleStr;
    self.ctimeLabel.text = model.ctime;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
