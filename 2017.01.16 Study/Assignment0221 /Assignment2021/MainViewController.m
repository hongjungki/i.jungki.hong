//
//  MainViewController.m
//  Exam0207-2
//
//  Created by 홍정기 on 2017. 2. 20..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "MainViewController.h"
#import "BlogViewController.h"
#import "AlogViewController.h"
@interface MainViewController ()
<UIScrollViewDelegate,UITextFieldDelegate>
@property UIScrollView *scrollView;
@property UITextField *loginField;
@property UITextField *loginField1;
@property UITextField *loginField2;
@property UIButton *btn;
@property UIButton *btn1;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //메인 뷰
    CGSize framMainView = self.view.frame.size;
    UIView *uiMainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0,framMainView.width, framMainView.height)];
    [uiMainView setBackgroundColor:[UIColor whiteColor]];
    //    [uiMainView setBackgroundColor:[UIColor colorWithRed:206.0/255.0 green:252.0/255.0 blue:253.0/255.0 alpha:0.5]];
    [self.view addSubview:uiMainView];
    //이미지(타임맨 로고)
    UIImageView *newImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,(framMainView.width/2)+50, 50)];
    [newImage setCenter:CGPointMake(self.view.center.x, self.view.center.y/3)];
    [newImage setImage:[UIImage imageNamed:@"logo.png"]];
    [newImage setContentMode:UIViewContentModeScaleToFill];
    [uiMainView addSubview:newImage];
    
    
    //서브 뷰
    UIView *newView1= [[UIView alloc] initWithFrame:CGRectMake(0, (framMainView.height/2),framMainView.width, framMainView.height)];
    [newView1 setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:newView1];
    
    // 추가 이미지
//    UIImageView *newImage1 = [[UIImageView alloc] initWithFrame:CGRectMake(10, 150,framMainView.width-10, 320)];
//    //[newImage1 setCenter:CGPointMake(self.view.center.x, self.view.center.y/4)];
//    [newImage1 setImage:[UIImage imageNamed:@"mid_c1.png"]];
//    [newImage1 setContentMode:UIViewContentModeScaleToFill];
//    [newView1 addSubview:newImage1];
    
    
    
    
    
    
    //스크롤 뷰1
    //CGSize mainScrollView = self.scrollView.frame.size;
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0,(framMainView.width/2)-20, framMainView.width, 300)];
    [self.scrollView setContentSize:CGSizeMake(self.scrollView.frame.size.width,framMainView.height)];
    self.scrollView.delegate = self;
    self.scrollView.scrollEnabled = NO;
    [self.scrollView setBackgroundColor:[UIColor whiteColor]];
    
    [self.view addSubview:self.scrollView];
    //추가뷰
    UIView *newView = [[UIView alloc] initWithFrame:CGRectMake(0, 0,self.scrollView.frame.size.width, self.scrollView.frame.size.height + 60)];
    [self.scrollView addSubview:newView];
    [self.scrollView setContentSize:CGSizeMake(newView.frame.size.width, newView.frame.size.height)];
    //로그인 텍스트
    self.loginField = [[UITextField alloc] initWithFrame:CGRectMake(50,30,self.scrollView.frame.size.width-100,40)];
    self.loginField.font = [UIFont systemFontOfSize:13];
    self.loginField.textColor = [UIColor redColor];
    self.loginField.textAlignment = NSTextAlignmentCenter;
    self.loginField.borderStyle = UITextBorderStyleLine;
    self.loginField.placeholder = @"I D";
    [self.loginField setBackgroundColor:[UIColor colorWithRed:122.0/255.0 green:209.0/255.0 blue:208.0/255.0 alpha:0.3]];
    self.loginField.delegate = self;
    self.loginField.tag = 100;
    [newView addSubview:self.loginField];
    //암호 입력
    self.loginField1 = [[UITextField alloc] initWithFrame:CGRectMake(50,100,self.scrollView.frame.size.width-100, 40)];
    self.loginField1.font = [UIFont systemFontOfSize:13];
    self.loginField1.textColor = [UIColor whiteColor];
    self.loginField1.textAlignment = NSTextAlignmentCenter;
    self.loginField1.borderStyle = UITextBorderStyleLine;
    self.loginField1.placeholder = @"passward";
    [self.loginField1 setBackgroundColor:[UIColor colorWithRed:122.0/255.0 green:209.0/255.0 blue:208.0/255.0 alpha:0.3]];
    self.loginField1.delegate = self;
    self.loginField1.tag = 200;
    [newView addSubview:self.loginField1];
    
    //회원 가입
    self.loginField2 = [[UITextField alloc] initWithFrame:CGRectMake(50,170,self.scrollView.frame.size.width-100, 40)];
    self.loginField2.font = [UIFont systemFontOfSize:13];
    self.loginField2.textColor = [UIColor whiteColor];
    self.loginField2.textAlignment = NSTextAlignmentCenter;
    self.loginField2.borderStyle = UITextBorderStyleLine;
    self.loginField2.placeholder = @" RE";
    [self.loginField2 setBackgroundColor:[UIColor colorWithRed:122.0/255.0 green:209.0/255.0 blue:208.0/255.0 alpha:0.3]];
    self.loginField2.delegate = self;
    self.loginField2.tag = 300;
    [newView addSubview:self.loginField2];

    
    
    //버튼 뷰
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(50, (self.scrollView.frame.size.height/2)+70, self.scrollView.frame.size.width-100, 30)];
    [view1 setBackgroundColor:[UIColor whiteColor]];
    [newView addSubview:view1];
//    //버튼 1
//    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0,view1.frame.size.width/2, view1.frame.size.height)];
//    [self.btn setTitle:@" login " forState:UIControlStateNormal];
//    [self.btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//    [self.btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
//    //[self.btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    [self.btn addTarget:self action:@selector(addAction:) forControlEvents:UIControlEventTouchUpInside];
//    [view1 addSubview:self.btn];
    //버튼 2
    self.btn1 = [[UIButton alloc] initWithFrame:CGRectMake(view1.frame.size.width/4, 0, view1.frame.size.width/2, view1.frame.size.height)];
    [self.btn1 setTitle:@" Sign up " forState:UIControlStateNormal];
    [self.btn1 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    //[self.btn1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.btn1 addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:self.btn1];
}
//- (void)onSelectedBtn:(UIButton *)sender{
//    UIStoryboard *storybord = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    
//    MainViewController *sVc = [self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
//    [self.navigationController pushViewController:sVc animated:YES];
//}
- (void)onSelectedBtn:(UIButton *)sender{
    
    [self.navigationController popViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"ttt");
    [self.scrollView setContentOffset:CGPointMake(0, 30) animated:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"qqq");
    [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"bbb");
    if (textField.tag == 100) {
        [self.loginField1 becomeFirstResponder];
    } else {
        [textField resignFirstResponder];
    }
    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
