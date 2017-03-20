//
//  NetWorkDataCenter.m
//  TestNet0315
//
//  Created by 홍정기 on 2017. 3. 16..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "NetWorkDataCenter.h"
#import "SingupViewController.h"
@implementation NetWorkDataCenter

- (void)signUpRequestWithName:(NSString *)name password:(NSString *)password rePassword:(NSString *)repassword{
    
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:@"https://fc-ios.lhy.kr/api/member/signup/"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSString *username = name;
    NSString *password1 = password;
    NSString *password2 = repassword;
    
    NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password1=%@&password2=%@",username,password1,password2];
    
    request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    NSURLSessionUploadTask *task = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (error ==nil) {
            
            NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
            
            NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            
            if (statusCode ==201) {
                
                NSLog(@"%@",responsData);
                NSLog(@"회원가입 시도 성공");
                
            }else {
                
                NSString *token = [responsData objectForKey:@"key"];
                NSLog(@"%@",token);
                NSLog(@"회원가입 시도 실패");
            }
        }
        
    }];
    [task resume];
}
- (void)loginRequestWithName:(NSString *)name password:(NSString *)password1{
    
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *url = [NSURL URLWithString:@"https://fc-ios.lhy.kr/api/member/login/"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSString *username = name;
    NSString *password = password1;
    
    
    NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password=%@",username,password];
    
    request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    NSURLSessionUploadTask *task = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (error ==nil) {
            
            NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
            
            NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            
            if (statusCode ==200) {
                
                [[NSUserDefaults standardUserDefaults] setObject:[responsData objectForKey:@"key"] forKey:@"userToken"];
                
                NSLog(@"%@",responsData);
                NSLog(@"로그인 시도 성공");
                
            }else {
                
                NSString *token = [responsData objectForKey:@"key"];
                NSLog(@"%@",token);
                NSLog(@"로그인 시도 실패");
            }
            
            NSString *statusCondeStr = [NSString stringWithFormat:@"%ld", statusCode];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"loginNoti" object:statusCondeStr userInfo:responsData];
        }
        
    }];
    [task resume];
}

@end
