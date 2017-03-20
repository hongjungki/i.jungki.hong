//
//  NetWorkDataCenter.h
//  TestNet0315
//
//  Created by 홍정기 on 2017. 3. 16..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetWorkDataCenter : NSObject

- (void)signUpRequestWithName:(NSString *)name password:(NSString *)password rePassword:(NSString *)repassword;

- (void)loginRequestWithName:(NSString *)name password:(NSString *)password;

@end
