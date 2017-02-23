//
//  FriendViewController.m
//  Assignment2021
//
//  Created by 홍정기 on 2017. 2. 22..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "FriendViewController.h"
#import "MainViewController.h"
#import "LogViewController.h"
#import "BlogViewController.h"
#import "AlogViewController.h"
@interface FriendViewController ()
<UIScrollViewDelegate,UITextFieldDelegate>
@property UIScrollView *scrollView;
@property UITextField *loginField;
@property UITextField *loginField1;
@property UIButton *btn;
@property UIButton *btn1;
@end

@implementation FriendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @" 친구 목록 새로고침  ";
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]] ;
    
    
    UIButton *back = [[UIButton alloc]initWithFrame:CGRectMake(100,100, 50, 40)];
    [back setBackgroundImage:[UIImage imageNamed:@"images-2.png"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:back];
    self.navigationItem.leftBarButtonItem = item;
    [self.view setBackgroundColor:[UIColor redColor]];
    
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
    UIImageView *newImage1 = [[UIImageView alloc] initWithFrame:CGRectMake(10, 150,framMainView.width-10, 320)];
    //[newImage1 setCenter:CGPointMake(self.view.center.x, self.view.center.y/4)];
    [newImage1 setImage:[UIImage imageNamed:@"mid_c1.png"]];
    [newImage1 setContentMode:UIViewContentModeScaleToFill];
    [newView1 addSubview:newImage1];
//스크롤 뷰1
    //CGSize mainScrollView = self.scrollView.frame.size;
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0,(framMainView.width/2)+20, framMainView.width, 200)];
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
    self.loginField = [[UITextField alloc] initWithFrame:CGRectMake(50,((self.scrollView.frame.size.height/2)/3)+30,self.scrollView.frame.size.width-100, 40)];
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
    self.loginField1 = [[UITextField alloc] initWithFrame:CGRectMake(50,(self.scrollView.frame.size.height/2)+30,self.scrollView.frame.size.width-100, 40)];
    self.loginField1.font = [UIFont systemFontOfSize:13];
    self.loginField1.textColor = [UIColor whiteColor];
    self.loginField1.textAlignment = NSTextAlignmentCenter;
    self.loginField1.borderStyle = UITextBorderStyleLine;
    self.loginField1.placeholder = @"passward";
    [self.loginField1 setBackgroundColor:[UIColor colorWithRed:122.0/255.0 green:209.0/255.0 blue:208.0/255.0 alpha:0.3]];
    self.loginField1.delegate = self;
    self.loginField1.tag = 200;
    [newView addSubview:self.loginField1];
    //버튼 뷰
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(50, (self.scrollView.frame.size.height/2)+70, self.scrollView.frame.size.width-100, 30)];
    [view1 setBackgroundColor:[UIColor whiteColor]];
    [newView addSubview:view1];
    //버튼 1
    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0,view1.frame.size.width/2, view1.frame.size.height)];
    [self.btn setTitle:@" login " forState:UIControlStateNormal];
    [self.btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    //[self.btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.btn addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:self.btn];
    [self.btn setTag:31];
    //버튼 2
    self.btn1 = [[UIButton alloc] initWithFrame:CGRectMake(view1.frame.size.width/2, 0, view1.frame.size.width/2, view1.frame.size.height)];
    [self.btn1 setTitle:@" Sign up " forState:UIControlStateNormal];
    [self.btn1 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    //[self.btn1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.btn1 addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.btn1 setTag:30];
    [view1 addSubview:self.btn1];
   
}
- (void)backBtnClick:(UIButton *)sender {
    NSLog(@"back log");
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)onSelectedBtn:(UIButton *)sender{
    //UIStoryboard *storybord = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    if(sender.tag == 30) {
        MainViewController *sVc = [self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
        [self.navigationController pushViewController:sVc animated:YES];
        
    } else if(sender.tag == 31) {
        LogViewController *sVc = [self.storyboard instantiateViewControllerWithIdentifier:@"LogViewController"];
        [self.navigationController pushViewController:sVc animated:YES];
    }
    
    
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
