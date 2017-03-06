//
//  ViewController.m
//  Testview0212
//
//  Created by 홍정기 on 2017. 2. 12..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate,UIScrollViewDelegate>
@property UILabel *mainLable;
@property UIScrollView *scrollview;
@property UITextField *loginField;
@property UITextField *loginField1;
@property UILabel *lable1;
@property UILabel *lable2;
@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
// 메인뷰
    CGSize mainView = self.view.frame.size;
    UIView *uimain = [[UIView alloc] initWithFrame:CGRectMake(0, 0, mainView.width, mainView.height)];
    [uimain setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:uimain];
// 이미지
    UIImageView *mainImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,mainView.width, mainView.height)];
    [mainImage setImage:[UIImage imageNamed:@"homepageImage.jpg"]];
    [mainImage setContentMode:UIViewContentModeScaleToFill];
    [uimain addSubview:mainImage];
//메인 레이블 뷰
    
    UIView *mainLableView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, mainView.width,mainView.height/4)];
    //[mainLableView setBackgroundColor:[UIColor whiteColor]];
    [uimain addSubview:mainLableView];
//메인 레이블 텍스트
    self.mainLable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, mainLableView.frame.size.width,mainLableView.frame.size.height )];
    self.mainLable.text = @"diary";
    self.mainLable.font = [UIFont systemFontOfSize:50];
    self.mainLable.textColor = [UIColor whiteColor];
    [self.mainLable setTextAlignment:NSTextAlignmentCenter];
    [mainLableView addSubview:self.mainLable];
// 스크롤뷰
    self.scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0,(mainView.width/2)+20, mainView.width, 200)];
    [self.scrollview setContentSize:CGSizeMake(self.scrollview.frame.size.width,mainView.height)];
    self.scrollview.delegate = self;
    self.scrollview.scrollEnabled = NO;
    //[self.scrollview setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:self.scrollview];
// 추가뷰
    UIView *newView = [[UIView alloc] initWithFrame:CGRectMake(0, 0,self.scrollview.frame.size.width, self.scrollview.frame.size.height + 60)];
    [self.scrollview addSubview:newView];
    [self.scrollview setContentSize:CGSizeMake(newView.frame.size.width, newView.frame.size.height)];
//로그인 텍스트
    self.loginField = [[UITextField alloc] initWithFrame:CGRectMake(50,((self.scrollview.frame.size.height/2)/3)+30,self.scrollview.frame.size.width-100, 40)];
    self.loginField.font = [UIFont systemFontOfSize:13];
    self.loginField.textColor = [UIColor redColor];
    self.loginField.textAlignment = NSTextAlignmentCenter;
    self.loginField.borderStyle = UITextBorderStyleLine;
    self.loginField.placeholder = @"I D";
    [self.loginField setBackgroundColor:[UIColor colorWithRed:288.0/255.0 green:212.0/255.0 blue:176.0/255.0 alpha:0.3]];
    self.loginField.delegate = self;
    self.loginField.tag = 100;
    [newView addSubview:self.loginField];
//암호 입력
    self.loginField1 = [[UITextField alloc] initWithFrame:CGRectMake(50,(self.scrollview.frame.size.height/2)+30,self.scrollview.frame.size.width-100, 40)];
    self.loginField1.font = [UIFont systemFontOfSize:13];
    self.loginField1.textColor = [UIColor whiteColor];
    self.loginField1.textAlignment = NSTextAlignmentCenter;
    self.loginField1.borderStyle = UITextBorderStyleLine;
    self.loginField1.placeholder = @"passward";
    [self.loginField1 setBackgroundColor:[UIColor colorWithRed:288.0/255.0 green:212.0/255.0 blue:176.0/255.0 alpha:0.3]];
    self.loginField1.delegate = self;
    self.loginField1.tag = 200;
    [newView addSubview:self.loginField1];
//로그인 레이블
    self.lable1 = [[UILabel alloc] initWithFrame:CGRectMake(50,(self.scrollview.frame.size.height/2)+70, (self.scrollview.frame.size.width-100)/2, 40)];
     self.lable1.textAlignment = NSTextAlignmentCenter;
    [self.scrollview addSubview:self.lable1];
//암호 레이블
    self.lable2 = [[UILabel alloc] initWithFrame:CGRectMake(self.scrollview.frame.size.width/2,(self.scrollview.frame.size.height/2)+70, (self.scrollview.frame.size.width-100)/2, 40)];
    self.lable2.textAlignment = NSTextAlignmentCenter;
    [self.scrollview addSubview:self.lable2];

    
    
    
}
- (void)textFieldDidBeginEditing:(UITextField *)textField {
       [self.scrollview setContentOffset:CGPointMake(0, 30) animated:YES];
        self.loginField .text = @"";
        self.loginField1 .text = @"";
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
        [self.scrollview setContentOffset:CGPointMake(0, 0) animated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if ([self inLoginNum]) {
       
        [self.lable1 setText:@"일치"];
        [self.loginField  becomeFirstResponder];
           } else {
        [self.lable2 setText:@"불일치"];
        [textField resignFirstResponder];
           }
        return YES;
}
- (BOOL)inLoginNum{
    NSString *inputText = self.loginField.text;
    NSString *inputPassd = self.loginField1.text;
    if ([inputText isEqualToString:@"hjk"]||[inputPassd isEqualToString:@"2021"])
        
    {
        return YES;

    }else {
        return NO;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
