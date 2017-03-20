//
//  ViewController.m
//  TestNet0315
//
//  Created by 홍정기 on 2017. 3. 15..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "ViewController.h"
#import "LogDataCenter.h"
#import "NetWorkDataCenter.h"


@interface ViewController ()

<UITextFieldDelegate,UIScrollViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property LogDataCenter *logDataCenter;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property NetWorkDataCenter *netWorkDataCenter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     self.netWorkDataCenter = [[NetWorkDataCenter alloc] init];
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(testNoti:) name:@"loginNoti" object:nil];
}

-(void)testNoti:(NSNotification *)sender {
  
    NSLog(@"Noti 실행");
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        NSString *statusCode = sender.object;
        NSDictionary *dic = sender.userInfo;
        
        if([statusCode isEqualToString:@"200"]) {
            [self performSegueWithIdentifier:@"mainSegue" sender:nil];
        } else {
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"로그인 실패" message:@"ID.PW 확인 요망" preferredStyle:UIAlertControllerStyleAlert];
            
            
            UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                NSLog(@"ok");
                
                
            }];
            
            
            [alert addAction:okAction];
            [self presentViewController:alert animated:YES completion:nil];

            NSLog(@"%@", dic);
        }
    });
}


- (IBAction)loginBtn:(id)sender {
    [self.netWorkDataCenter loginRequestWithName:self.idTextField.text password:self.passwordTextField.text ];
    
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField.tag == 100) {
        [self.passwordTextField becomeFirstResponder];
    } else {
        [textField resignFirstResponder];
    }
    return YES;
}



- (void)textFieldDidBeginEditing:(UITextField *)textField {
    
    [self.scrollView setContentOffset:CGPointMake(0, 30) animated:YES];
}




- (void)textFieldDidEndEditing:(UITextField *)textField {
    
    [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
