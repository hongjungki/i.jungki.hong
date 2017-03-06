//
//  ViewController.m
//  Exam0205
//
//  Created by 홍정기 on 2017. 2. 5..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSInteger balance;
@property UILabel *displayView1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.balance = 0;
//전체뷰
    UIView *allView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [allView setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:allView];
//1번 뷰
    UIView *imageView = [[UIView alloc] initWithFrame:CGRectMake(10, 17, (allView.frame.size.width/2)-13, 210)];
    [imageView setBackgroundColor:[UIColor lightGrayColor]];
    [allView addSubview:imageView];
    [imageView.layer setCornerRadius:15.0];
    [imageView setClipsToBounds:YES];
//1번 이미지
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,imageView.frame.size.width, (imageView.frame.size.height/3)*2)];
    //[imageView1 setBackgroundColor:[UIColor redColor]];
    [imageView1 setImage:[UIImage imageNamed:@"images.jpeg"]];
    [imageView1 setContentMode:UIViewContentModeScaleToFill];
    [imageView addSubview:imageView1];
//1번 버튼
    UIButton *imageViewBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    imageViewBtn.frame = CGRectMake(0, (imageView.frame.size.height/3)*2, imageView.frame.size.width,(imageView.frame.size.height)-(imageView.frame.size.height/3)*2 );
    //[imageView setBackgroundColor:[UIColor grayColor]];
    [imageViewBtn setTitle:@"  USA 2500 원" forState:UIControlStateNormal];
    [imageViewBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [imageViewBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [imageViewBtn addTarget:self action:@selector(addAction:) forControlEvents:UIControlEventTouchUpInside];
    [imageView addSubview:imageViewBtn];
//2번 뷰
    UIView *imageView2 = [[UIView alloc] initWithFrame:CGRectMake((allView.frame.size.width)/2+3, 17, (allView.frame.size.width/2)-13,210)];
    [imageView2 setBackgroundColor:[UIColor lightGrayColor]];
    [allView addSubview:imageView2];
    [imageView2.layer setCornerRadius:15.0];
    [imageView2 setClipsToBounds:YES];
//2번 이미5
    UIImageView *imageView3 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,imageView2.frame.size.width, (imageView2.frame.size.height/3)*2)];
    //[imageView1 setBackgroundColor:[UIColor redColor]];
    [imageView3 setImage:[UIImage imageNamed:@"images 2.jpeg"]];
    [imageView3 setContentMode:UIViewContentModeScaleToFill];
    [imageView2 addSubview:imageView3];
//2번 버튼
    UIButton *imageViewBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    imageViewBtn2.frame = CGRectMake(0, (imageView2.frame.size.height/3)*2, imageView2.frame.size.width,(imageView2.frame.size.height)-(imageView2.frame.size.height/3)*2 );
    //[imageView setBackgroundColor:[UIColor grayColor]];
    [imageViewBtn2 setTitle:@"  jamaica 1000 원" forState:UIControlStateNormal];
    [imageViewBtn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [imageViewBtn2 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [imageViewBtn2 addTarget:self action:@selector(addAction01:) forControlEvents:UIControlEventTouchUpInside];
    [imageView2 addSubview:imageViewBtn2];
//3번 뷰
    UIView *imageView4 = [[UIView alloc] initWithFrame:CGRectMake(10, 233, (allView.frame.size.width/2)-13,210)];
    [imageView4 setBackgroundColor:[UIColor lightGrayColor]];
    [allView addSubview:imageView4];
    [imageView4.layer setCornerRadius:15.0];
    [imageView4 setClipsToBounds:YES];
//3번 이미지
    UIImageView *imageView5 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,imageView4.frame.size.width, (imageView4.frame.size.height/3)*2)];
    //[imageView1 setBackgroundColor:[UIColor redColor]];
    [imageView5 setImage:[UIImage imageNamed:@"images 3.jpeg"]];
    [imageView5 setContentMode:UIViewContentModeScaleToFill];
    [imageView4 addSubview:imageView5];
//3번 버튼
    UIButton *imageViewBtn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    imageViewBtn3.frame = CGRectMake(0, (imageView4.frame.size.height/3)*2, imageView4.frame.size.width,(imageView4.frame.size.height)-(imageView4.frame.size.height/3)*2 );
    //[imageView setBackgroundColor:[UIColor grayColor]];
    [imageViewBtn3 setTitle:@"  Brazil 1500 원" forState:UIControlStateNormal];
    [imageViewBtn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [imageViewBtn3 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [imageViewBtn3 addTarget:self action:@selector(addAction02:) forControlEvents:UIControlEventTouchUpInside];
    [imageView4 addSubview:imageViewBtn3];
//4번 뷰
    UIView *imageView6 = [[UIView alloc] initWithFrame:CGRectMake((allView.frame.size.width)/2+3, 233, (allView.frame.size.width/2)-13,210)];
    [imageView6 setBackgroundColor:[UIColor lightGrayColor]];
    [allView addSubview:imageView6];
    [imageView6.layer setCornerRadius:15.0];//라운드 주기
    [imageView6 setClipsToBounds:YES];
//4번 이미지
    UIImageView *imageView7 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,imageView6.frame.size.width, (imageView6.frame.size.height/3)*2)];
    //[imageView1 setBackgroundColor:[UIColor redColor]];
    [imageView7 setImage:[UIImage imageNamed:@"images 4.jpeg"]];
    [imageView7 setContentMode:UIViewContentModeScaleToFill];
    [imageView6 addSubview:imageView7];
//4번 버튼
    UIButton *imageViewBtn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    imageViewBtn4.frame = CGRectMake(0, (imageView6.frame.size.height/3)*2, imageView6.frame.size.width,(imageView6.frame.size.height)-(imageView6.frame.size.height/3)*2 );
    //[imageView setBackgroundColor:[UIColor grayColor]];
    [imageViewBtn4 setTitle:@"  N.KOREA 3000 원" forState:UIControlStateNormal];
    [imageViewBtn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [imageViewBtn4 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [imageViewBtn4 addTarget:self action:@selector(addAction03:) forControlEvents:UIControlEventTouchUpInside];
    [imageView6 addSubview:imageViewBtn4];
//디스플레이 뷰
    UIView *displayView = [[UIView alloc] initWithFrame:CGRectMake(10,449, allView.frame.size.width-20,100 )];
    [displayView setBackgroundColor:[UIColor blackColor]];
    [allView addSubview:displayView];
    [displayView.layer setCornerRadius:15.0];
    [displayView setClipsToBounds:YES];
//디스플레이뷰 레이블
    self.displayView1 = [[UILabel alloc] initWithFrame:CGRectMake(10,0,displayView.frame.size.width -20, displayView.frame.size.height)];
    //[displayView setBackgroundColor:[UIColor blackColor]];
    self.displayView1.text = @"잔액 : 0원";
    self.displayView1.font = [UIFont systemFontOfSize:30];
    self.displayView1.textColor = [UIColor whiteColor];
    [self.displayView1 setTextAlignment:NSTextAlignmentRight];
    [displayView addSubview:self.displayView1];
//4번 디스플레이 이미지
    UIImageView *displayImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,displayView.frame.size.width/4, displayView.frame.size.height)];
    //[imageView1 setBackgroundColor:[UIColor redColor]];
    [displayImage setImage:[UIImage imageNamed:@"IMG_0727.jpg"]];
    [displayImage setContentMode:UIViewContentModeScaleToFill];
    [displayView addSubview:displayImage];
// 잡스버튼
    UIButton *jobsBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    jobsBtn.frame = CGRectMake(0, 0, displayView.frame.size.width/4, displayView.frame.size.height);
    [jobsBtn setTitle:@"" forState:UIControlStateNormal];
    [jobsBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [jobsBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [jobsBtn addTarget:self action:@selector(addAction5:) forControlEvents:UIControlEventTouchUpInside];
    [displayView addSubview:jobsBtn];
//input 뷰
    UIView *inputView = [[UIView alloc] initWithFrame:CGRectMake(10, 555, allView.frame.size.width-20, allView.frame.size.height-572)];
    [inputView setBackgroundColor:[UIColor lightGrayColor]];
    [allView addSubview:inputView];
    [inputView.layer setCornerRadius:15.0];
    [inputView setClipsToBounds:YES];
//하단 버튼 1
    UIButton *smallBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    smallBtn.frame = CGRectMake(0, 0, inputView.frame.size.width/4, inputView.frame.size.height);
    [smallBtn setTitle:@"  2000 원" forState:UIControlStateNormal];
    [smallBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [smallBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [smallBtn addTarget:self action:@selector(addAction3:) forControlEvents:UIControlEventTouchUpInside];
    [inputView addSubview:smallBtn];
//하단 버튼 2
    UIButton *smallBtn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    smallBtn1.frame = CGRectMake(inputView.frame.size.width/4, 0, (inputView.frame.size.width/2)/2, inputView.frame.size.height);
    [smallBtn1 setTitle:@"  1000 원" forState:UIControlStateNormal];
    [smallBtn1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [smallBtn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [smallBtn1 addTarget:self action:@selector(addAction2:) forControlEvents:UIControlEventTouchUpInside];
    [inputView addSubview:smallBtn1];
//하단 버튼 3
    UIButton *smallBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    smallBtn2.frame = CGRectMake(inputView.frame.size.width/2, 0, (inputView.frame.size.width/2)/2, inputView.frame.size.height);
    [smallBtn2 setTitle:@"  500 원" forState:UIControlStateNormal];
    [smallBtn2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [smallBtn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [smallBtn2 addTarget:self action:@selector(addAction1:) forControlEvents:UIControlEventTouchUpInside];
    [inputView addSubview:smallBtn2];
//하단버튼 4
    UIButton *smallBtn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    smallBtn3.frame = CGRectMake((inputView.frame.size.width/4)*3, 0, inputView.frame.size.width/4, inputView.frame.size.height);
    [smallBtn3 setTitle:@" RETURN " forState:UIControlStateNormal];
    [smallBtn3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [smallBtn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [smallBtn3 addTarget:self action:@selector(addAction4:) forControlEvents:UIControlEventTouchUpInside];
    [inputView addSubview:smallBtn3];
}

// 나라버튼
- (void)addAction:(UIButton *)sender{
       if (self.balance >= 2500) {
      self.balance = self.balance - 2500;
        [self.displayView1 setText:[NSString stringWithFormat:@"잔액은 : %ld원",(long)self.balance]];
       } else
       {
           [self.displayView1 setText:[NSString stringWithFormat:@"잔액 부족입니다"]];
       }
}
- (void)addAction01:(UIButton *)sender{
    if (self.balance >= 1000)
    {
        self .balance = self.balance - 1000;
        [self.displayView1 setText:[NSString stringWithFormat:@"잔액은 : %ld원",(long)self.balance]];
    } else
    {
        [self.displayView1 setText:[NSString stringWithFormat:@"잔액 부족입니다"]];
    }
}
- (void)addAction02:(UIButton *)sender{
    if (self.balance >= 1500)
    {
        self .balance = self.balance - 1500;
        [self.displayView1 setText:[NSString stringWithFormat:@"잔액은 : %ld원",(long)self.balance]];
    }else
    {
        [self.displayView1 setText:[NSString stringWithFormat:@"잔액 부족입니다"]];
    }
}
- (void)addAction03:(UIButton *)sender{
    if (self.balance >= 3000) {
        self .balance = self.balance - 3000;
        [self.displayView1 setText:[NSString stringWithFormat:@"잔액은 : %ld원",(long)self.balance]];
    } else {
        [self.displayView1 setText:[NSString stringWithFormat:@"잔액 부족입니다"]];
    }
}

- (void)addAction5:(UIButton *)sender1{
   // self.balance = self.balance + 500;
    [self.displayView1 setText:[NSString stringWithFormat:@"ios 3기 화이팅!!"]];
}

// 하단버튼
- (void)addAction1:(UIButton *)sender1{
    self.balance = self.balance + 500;
    [self.displayView1 setText:[NSString stringWithFormat:@"잔액 : %ld원",(long)self.balance]];
    }
- (void)addAction2:(UIButton *)sender1{
    self.balance = self.balance + 1000;
    [self.displayView1 setText:[NSString stringWithFormat:@"잔액 : %ld원",(long)self.balance]];
    }
- (void)addAction3:(UIButton *)sender1{
    self.balance = self.balance + 2000;
    [self.displayView1 setText:[NSString stringWithFormat:@"잔액 : %ld원",(long)self.balance]];
    }
- (void)addAction4:(UIButton *)sender1{
    self.balance = self.balance - self.balance;
    [self.displayView1 setText:[NSString stringWithFormat:@"잔액 : %ld원",(long)self.balance]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
