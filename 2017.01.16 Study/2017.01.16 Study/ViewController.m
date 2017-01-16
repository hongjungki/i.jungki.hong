//
//  ViewController.m
//  2017.01.16 Study
//
//  Created by 홍정기 on 2017. 1. 16..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
  
    NSLog(@"브레이크 포인트 전");
    
    NSLog(@"브레이크 포인트 후");
    
    NSLog(@"중간 공백.....");
    
    NSLog(@"다음 브레이크 포인트 전");
    
    NSLog(@"다음 브레이크 포인트 후");
    
    



}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnAction
{
    [self.titleLB setText:@"걱정따원 없어!\n 내친구와 힘내니까"];

}
- (IBAction)btnAction1
{
    [self.titieLB1 setText:@"열심히 하다보면 되것지...ㅋㅋ"];
    
}

@end
