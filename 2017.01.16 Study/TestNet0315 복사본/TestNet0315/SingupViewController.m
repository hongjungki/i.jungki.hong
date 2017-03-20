//
//  SingupViewController.m
//  TestNet0315
//
//  Created by 홍정기 on 2017. 3. 15..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "SingupViewController.h"
#import "LogDataCenter.h"
#import "NetWorkDataCenter.h"
@interface SingupViewController ()
<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *pwTextField;
@property (weak, nonatomic) IBOutlet UITextField *reTextField;
@property LogDataCenter *logDataCenter;
@property NetWorkDataCenter *netWorkDataCenter;
@end

@implementation SingupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.netWorkDataCenter = [[NetWorkDataCenter alloc] init];




}
- (IBAction)logInBtn:(id)sender {
}
- (IBAction)sigupBtn:(id)sender {
     [self.netWorkDataCenter signUpRequestWithName:self.idTextField.text password:self.pwTextField.text rePassword:self.reTextField.text];

}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField.tag == 100) {
        [self.pwTextField becomeFirstResponder];
    }else if (textField.tag == 200){
        [self.reTextField becomeFirstResponder];
    }else {
        [textField resignFirstResponder];
    }
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    }


@end
