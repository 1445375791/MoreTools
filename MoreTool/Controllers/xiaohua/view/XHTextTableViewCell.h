//
//  XHTextTableViewCell.h
//  MoreTool
//
//  Created by 吴朋 on 2016/12/8.
//  Copyright © 2016年 吴朋. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XHTextModel;
@interface XHTextTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *contextLabel;
@property (weak, nonatomic) IBOutlet UILabel *ctimeLabel;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

- (void)buildTheViewWithModel:(XHTextModel *)model;

@end
