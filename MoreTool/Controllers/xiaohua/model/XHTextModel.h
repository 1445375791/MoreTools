//
//  XHTextModel.h
//  MoreTool
//
//  Created by 吴朋 on 2016/12/8.
//  Copyright © 2016年 吴朋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XHTextModel : NSObject

/**
 笑话ID
 */
@property (nonatomic, copy) NSString *infoID;

/**
 创建时间
 */
@property (nonatomic, copy) NSString *ctime;

/**
 内容
 */
@property (nonatomic, copy) NSString *context;

/**
 标题
 */
@property (nonatomic, copy) NSString *titleStr;

/**
 类型
 */
@property (nonatomic, assign) int type;


/**
 根据数据字典创建对象

 @param dic 字典类型的数据
 @return model
 */
+ (instancetype)initTheModelWithDictionary:(NSDictionary *)dic;

@end
