//
//  XHPicModel.m
//  MoreTool
//
//  Created by 吴朋 on 2016/12/8.
//  Copyright © 2016年 吴朋. All rights reserved.
//

#import "XHPicModel.h"

@implementation XHPicModel

+ (instancetype)initTheModelWithDic:(NSDictionary *)dic {
    XHPicModel *model = [[XHPicModel alloc] init];
    model.idInfo = dic[@"id"];
    model.ctime = dic[@"ct"];
    model.imgUrlStr = dic[@"img"];
    model.titleStr = dic[@"title"];
    model.type = [dic[@"type"] intValue];
    return model;
}

@end
