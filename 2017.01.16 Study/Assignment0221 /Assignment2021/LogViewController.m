//
//  LogViewController.m
//  Exam0207-2
//
//  Created by 홍정기 on 2017. 2. 20..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "LogViewController.h"
#import "BlogViewController.h"
#import "AlogViewController.h"
@interface LogViewController ()
<UIScrollViewDelegate,UITextFieldDelegate>
@property UIScrollView *scrollView;
@property UITextField *loginField;
@property UITextField *loginField1;
@property UITextField *loginField2;
@property UIButton *btn;
@property UIButton *btn1;
@end

@implementation LogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *newImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,150, 50)];
    [newImage setCenter:CGPointMake(self.view.center.x, self.view.center.y/3)];
    [newImage setImage:[UIImage imageNamed:@"logo.png"]];
    [newImage setContentMode:UIViewContentModeScaleToFill];
    [self.view addSubview:newImage];

//버튼 뷰
UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(50, 300,400, 50)];
[view1 setBackgroundColor:[UIColor whiteColor]];
[self.view addSubview:view1];
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
    self.btn1 = [[UIButton alloc] initWithFrame:CGRectMake(view1.frame.size.width/4, 0, view1.frame.size.width/2, view1.frame.size.height)];
    [self.btn1 setTitle:@" Sign up " forState:UIControlStateNormal];
    [self.btn1 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.btn1 setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    //[self.btn1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.btn1 addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:self.btn1];
    [self.btn1 setTag:30];

    }
- (void)onSelectedBtn:(UIButton *)sender{
    //UIStoryboard *storybord = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    [self.navigationController popViewControllerAnimated:YES];
//    [self dismissViewControllerAnimated:YES completion:nil];
    if(sender.tag == 30) {
        BlogViewController *sVc = [self.storyboard instantiateViewControllerWithIdentifier:@"BlogViewController"];
        [self.navigationController pushViewController:sVc animated:YES];
        
    } else if(sender.tag == 31) {
        AlogViewController *sVc = [self.storyboard instantiateViewControllerWithIdentifier:@"AlogViewController"];
        [self.navigationController pushViewController:sVc animated:YES];
    }

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
