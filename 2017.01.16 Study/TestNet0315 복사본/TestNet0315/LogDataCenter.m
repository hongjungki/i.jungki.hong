//
//  LogDataCenter.m
//  TestNet0315
//
//  Created by 홍정기 on 2017. 3. 15..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "LogDataCenter.h"

@implementation LogDataCenter

+ (instancetype)sharedData {
    static LogDataCenter *sharedData = nil;
    
    NSLog(@"호출");
    //한번만 이닛할 수 있도록 조치
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedData = [[LogDataCenter alloc] init];
    });
    
    return sharedData;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSLog(@"이닛");
        self.idStr = [[NSUserDefaults standardUserDefaults]objectForKey:@"idStr"];
        self.passwordStr = [[NSUserDefaults standardUserDefaults] objectForKey:@"passwordStr"];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(saveDatas) name:@"key" object:nil];
        
    }
    return self;
}

-(void)saveDatas {
    [[NSUserDefaults standardUserDefaults] setObject:self.idStr forKey:@"idStr"];
    [[NSUserDefaults standardUserDefaults] setObject:self.passwordStr forKey:@"passwordStr"];
}

@end
