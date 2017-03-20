//
//  MyListViewController.m
//  TestNet0315
//
//  Created by 홍정기 on 2017. 3. 15..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "MyListViewController.h"

@interface MyListViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myListImage;
@property (weak, nonatomic) IBOutlet UIImageView *myListImage1;
@property (weak, nonatomic) IBOutlet UIImageView *myListImage2;

@end

@implementation MyListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myListImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2016/04/11/5bLvBK1mPTlM635959649933217789.jpg"]]];
    
    self.myListImage1.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile9.uf.tistory.com/image/111757204C6338F870AB95"]]];
    
    self.myListImage2.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile26.uf.tistory.com/image/2411254F571EE4C3107A1E"]]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
