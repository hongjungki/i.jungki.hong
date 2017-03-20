//
//  LogDataCenter.h
//  TestNet0315
//
//  Created by 홍정기 on 2017. 3. 15..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LogDataCenter : NSObject

@property NSString *idStr;
@property NSString *passwordStr;

+ (instancetype)sharedData;

@end
