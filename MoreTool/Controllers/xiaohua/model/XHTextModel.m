//
//  XHTextModel.m
//  MoreTool
//
//  Created by 吴朋 on 2016/12/8.
//  Copyright © 2016年 吴朋. All rights reserved.
//

#import "XHTextModel.h"

@implementation XHTextModel

+ (instancetype)initTheModelWithDictionary:(NSDictionary *)dic {
    XHTextModel *model = [[XHTextModel alloc] init];
    model.infoID = dic[@"id"];
    model.ctime = dic[@"ct"];
    model.context = dic[@"text"];
    model.titleStr = dic[@"title"];
    model.type = [dic[@"type"] intValue];
    return model;
}


@end
