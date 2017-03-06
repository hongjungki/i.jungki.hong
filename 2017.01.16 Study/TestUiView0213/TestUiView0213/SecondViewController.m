//
//  SecondViewController.m
//  TestUiView0213
//
//  Created by 홍정기 on 2017. 2. 13..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "SecondViewController.h"
#import "Person.h"

@interface SecondViewController ()

@property NSMutableArray *arrayForData;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.arrayForData = [[NSMutableArray alloc] init];
    for (NSInteger i =0; i<3; i++) {
        UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(50, 50+50*i, self.view.frame.size.width - 100, 40)];
        [self.arrayForData addObject:label];
        [self.view addSubview:label];
    }
    
    UILabel *name = self.arrayForData[0];
    name.text = self.person.name;
    UILabel *age = self.arrayForData[1];
    age.text = [NSString stringWithFormat:@"%ld",self.person.age];
    UILabel *pn = self.arrayForData[2];
    pn.text = self.person.phoneNUm;
    
    [self.view setBackgroundColor: [UIColor whiteColor]];
    
    
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
