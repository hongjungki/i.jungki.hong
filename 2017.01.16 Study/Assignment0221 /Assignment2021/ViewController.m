//
//  ViewController.m
//  Assignment2021
//
//  Created by 홍정기 on 2017. 2. 21..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "ViewController.h"
#import "SubViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    
    
    UIImageView *mainImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [mainImage setImage:[UIImage imageNamed:@"IMG_0727.jpg"]];
    [mainImage setContentMode:UIViewContentModeScaleAspectFit];
    [mainImage setClipsToBounds:YES];
    [self.view addSubview:mainImage];
    
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)-4,( self.view.frame.size.height/3)+20, 42, 50)];
    [btn addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
      
    
    
}



- (void)viewWillAppear:(BOOL)animated{
    
    [self.navigationController setNavigationBarHidden:YES];
    
}



-(void)viewWillDisappear:(BOOL)animated{
    
    [self.navigationController setNavigationBarHidden:NO];
    
    
}



- (void)onSelectedBtn:(UIButton *)sender{
    
    SubViewController *subViewController = [[SubViewController alloc] init];
    
    [self.navigationController pushViewController:subViewController animated:YES];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
