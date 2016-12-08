//
//  XHPicModel.h
//  MoreTool
//
//  Created by 吴朋 on 2016/12/8.
//  Copyright © 2016年 吴朋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XHPicModel : NSObject

/**
 图片笑话ID
 */
@property (nonatomic, copy) NSString *idInfo;
/**
 创建时间
 */
@property (nonatomic, copy) NSString *ctime;

/**
 图片地址
 */
@property (nonatomic, copy) NSString *imgUrlStr;


/**
 标题
 */
@property (nonatomic, copy) NSString *titleStr;

/**
 类型
 */
@property (nonatomic, assign) int type;


/**
 常见对象

 @param dic 字典数据
 @return model
 */
+ (instancetype)initTheModelWithDic:(NSDictionary *)dic;

@end
