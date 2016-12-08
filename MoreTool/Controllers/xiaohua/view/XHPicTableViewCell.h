//
//  XHPicTableViewCell.h
//  MoreTool
//
//  Created by 吴朋 on 2016/12/8.
//  Copyright © 2016年 吴朋. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XHPicModel;
@interface XHPicTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *ctimeLabel;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
- (void)buildTheViewWithModel:(XHPicModel *)model;
@end
