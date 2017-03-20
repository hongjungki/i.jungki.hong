//
//  ViewController.m
//  Network0315
//
//  Created by 홍정기 on 2017. 3. 15..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;
@property (weak, nonatomic) IBOutlet UIImageView *imageView4;
@property (weak, nonatomic) IBOutlet UIImageView *imageView5;
@property (weak, nonatomic) IBOutlet UIImageView *imageView6;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
    
    self.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2016/04/11/5bLvBK1mPTlM635959649933217789.jpg"]]];
    
     self.imageView1.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile9.uf.tistory.com/image/111757204C6338F870AB95"]]];
   
    self.imageView2.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile26.uf.tistory.com/image/2411254F571EE4C3107A1E"]]];
   
    self.imageView3.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.kmunews.co.kr/news/photo/201505/2391_2766_3948.jpg"]]];
  
    self.imageView4.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://pbs.twimg.com/media/CykbxO7UAAAzfXP.jpg"]]];
    
    self.imageView5.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://pbs.twimg.com/media/CykbxO7UAAAzfXP.jpg"]]];
    
    self.imageView6.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://ncache.ilbe.com/files/attach/new/20160216/14357299/5456895057/7524835844/ea67cddc56c51d7e5d2869eb57f1ea90.jpg"]]];

//    NSURL *imageUrl = [NSURL URLWithString:@""];
//    
//    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
//    
//    NSURLSessionTask *task = [session dataTaskWithURL:imageUrl
//                              completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//                                  if (data) {
//                                      UIImage *image = [UIImage imageWithData:data];
//                                      if (image) {
//                                          
//                                      }
//                                  }
//                              }]
//    
//    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
