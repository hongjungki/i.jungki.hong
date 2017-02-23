//
//  BlogViewController.m
//  Exam0207-2
//
//  Created by 홍정기 on 2017. 2. 20..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "BlogViewController.h"
#import "ViewController.h"
#import "MainViewController.h"
#import "LogViewController.h"
#import "AlogViewController.h"
@interface BlogViewController ()
<UIScrollViewDelegate,UITextFieldDelegate>
@property UIScrollView *scrollView;
@property UITextField *loginField;
@property UITextField *loginField1;
@property UITextField *loginField2;
@property UIButton *btn;
@property UIButton *btn1;
@end

@implementation BlogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *newImage = [[UIImageView alloc] initWithFrame:CGRectMake(30, 80,150, 200)];
   // [newImage setCenter:CGPointMake(self.view.center.x, self.view.center.y/3)];
    [newImage setImage:[UIImage imageNamed:@"images 3.jpeg"]];
    [newImage setContentMode:UIViewContentModeScaleToFill];
    [self.view addSubview:newImage];

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
