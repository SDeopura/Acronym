//
//  AcromineClient.h
//  acronymlookup
//
//  Created by zhen tan on 7/2/15.
//  Copyright (c) 2015 zhen tan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface AcromineClient : NSObject

+ (AcromineClient *)instance;
+ (void)getAcronym:(NSString *)acronym success:(void (^)(NSURLSessionDataTask *task, id response))success failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure;
@end
