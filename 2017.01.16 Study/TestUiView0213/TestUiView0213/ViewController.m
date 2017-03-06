//
//  ViewController.m
//  TestUiView0213
//
//  Created by 홍정기 on 2017. 2. 13..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

#import "Person.h"
@interface ViewController ()
<UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>
@property UITextField *nameTextField;
@property UITextField *ageTextField;
@property UITextField *phoneNumTextField;
@property UIButton *saveButton;
@property UIButton *saveButton1;
@property UITableView *tableView;

@property NSMutableArray *personArr;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
    self.personArr = [[NSMutableArray alloc] init];
    
    
    
    
    
//메인뷰
    CGSize frameSize = self.view.frame.size;
    UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, frameSize.width, frameSize.height)];
    [mainView setBackgroundColor:[UIColor grayColor] ];
    [self.view addSubview:mainView];
//텍스트 필드1
    self.nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50,50, frameSize.width-100, 40)];
    self.nameTextField.font = [UIFont systemFontOfSize:15];
    self.nameTextField.textColor = [UIColor redColor];
    self.nameTextField.textAlignment = NSTextAlignmentCenter;
    self.nameTextField.placeholder = @" name ";
    [self.nameTextField setBackgroundColor:[UIColor colorWithRed:1.0 green:1 blue:1 alpha:0.5]];
    self.nameTextField.delegate = self;
    self.nameTextField.tag = 100;
    [mainView addSubview:self.nameTextField];
//텍스트 필드2
    self.ageTextField = [[UITextField alloc] initWithFrame:CGRectMake(50,120, frameSize.width-100, 40)];
    self.ageTextField.font = [UIFont systemFontOfSize:15];
    self.ageTextField.textColor = [UIColor redColor];
    self.ageTextField.textAlignment = NSTextAlignmentCenter;
    self.ageTextField.placeholder = @" age ";
    [self.ageTextField setBackgroundColor:[UIColor colorWithRed:1.0 green:1 blue:1 alpha:0.5]];
    self.ageTextField.delegate = self;
    self.ageTextField.tag = 200;
    [mainView addSubview:self.ageTextField];
//텍스트 필드2
    self.phoneNumTextField = [[UITextField alloc] initWithFrame:CGRectMake(50,190, frameSize.width-100, 40)];
    self.phoneNumTextField.font = [UIFont systemFontOfSize:15];
    self.phoneNumTextField.textColor = [UIColor redColor];
    self.phoneNumTextField.textAlignment = NSTextAlignmentCenter;
    self.phoneNumTextField.placeholder = @" phone ";
    [self.phoneNumTextField setBackgroundColor:[UIColor colorWithRed:1.0 green:1 blue:1 alpha:0.5]];
    self.phoneNumTextField.delegate = self;
    self.phoneNumTextField.tag = 300;
    [mainView addSubview:self.phoneNumTextField];
//버튼 뷰1
    UIView *secondView = [[UIView alloc] initWithFrame:CGRectMake(50, 260, frameSize.width-100, 40)];
    [secondView setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:secondView];
//버튼 뷰2
    UIView *secondView1 = [[UIView alloc] initWithFrame:CGRectMake(50, 330, frameSize.width-100, 40)];
    [secondView1 setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:secondView1];
 //버튼 1
    self.saveButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, secondView.frame.size.width, secondView.frame.size.height)];
    [self.saveButton setTitle:@"SAVE" forState:UIControlStateNormal];
    [self.saveButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [self.saveButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [self.saveButton addTarget:self action:@selector(saveButtonSelected:) forControlEvents:UIControlEventTouchUpInside];
    [secondView addSubview:self.saveButton];
//버튼 1
//    self.saveButton1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, secondView1.frame.size.width, secondView1.frame.size.height)];
//    [self.saveButton1 setTitle:@"SAVE" forState:UIControlStateNormal];
//    [self.saveButton1 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
//    [self.saveButton1 addTarget:self action:@selector(loadNewView:) forControlEvents:UIControlEventTouchUpInside];
//    [secondView1 addSubview:self.saveButton1];
//테이블뷰
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 400, self.view.frame.size.width, self.view.frame.size.height-400) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];


}

-(void)saveButtonSelected:(UIButton*)sender{
    
    Person *temp = [[Person alloc] init];
    temp.name = self.nameTextField.text;
    temp.age = [self.ageTextField.text integerValue];
    temp.phoneNUm = self.phoneNumTextField.text;
    
    [self.personArr addObject:temp];
    [self.tableView reloadData];
    
    self.nameTextField.text = @"";
    self.ageTextField.text = @"";
    self.phoneNumTextField.text = @"";
    [self.phoneNumTextField resignFirstResponder];
    
}

-(void)loadNewView:(NSInteger)index {
    SecondViewController *view = [[SecondViewController alloc] init];
    view.person = self.personArr[index];
    [self presentViewController:view animated:YES completion:nil];
}

//순서대로 셀 반환
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"hjk"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"hjk"];
        
    }
    
    Person *person = [self.personArr objectAtIndex:indexPath.row];
    cell.textLabel.text = person.name;
    cell.detailTextLabel.text = person.phoneNUm;
    
    
    
    return cell;
}

//그릴 셀(로우) 개수 반환
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.personArr.count;
}

//셀을 선택했을 때 그 셀의 인덱스를 알려줌
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self loadNewView:indexPath.row];
}








- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField.tag == 100) {
        [self.ageTextField becomeFirstResponder];
    }if (textField.tag == 200) {
        [self.phoneNumTextField becomeFirstResponder];
    }else {
        [textField resignFirstResponder];
    }
    return YES;
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
