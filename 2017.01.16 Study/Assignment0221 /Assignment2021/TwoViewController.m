//
//  TwoViewController.m
//  Assignment2021
//
//  Created by 홍정기 on 2017. 2. 22..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()


@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor yellowColor]];
    self.navigationItem.title = @" 친구 이름 동기화  ";
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]] ;
    
    
    UIButton *back = [[UIButton alloc]initWithFrame:CGRectMake(100,100, 50, 40)];
    [back setBackgroundImage:[UIImage imageNamed:@"images-2.png"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:back];
    self.navigationItem.leftBarButtonItem = item;
       
}
- (void)backBtnClick:(UIButton *)sender {
    NSLog(@"back log");
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
    [self.navigationController popViewControllerAnimated:YES];
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
