//
//  SubViewController.m
//  Assignment2021
//
//  Created by 홍정기 on 2017. 2. 21..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "SubViewController.h"
//#import "MyCustomTableViewCell.h"
#import "SecondViewController.h"
#import "FriendViewController.h"
#import "OneFriendViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
@interface SubViewController ()
<UITableViewDelegate,UITableViewDataSource>
@property UITableView *tv;
@property (nonatomic)NSArray *mainarr;
@property (nonatomic,weak)UISwitch *swicher;
@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @" 친 구  ";
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]] ;
    
    
    UIButton *back = [[UIButton alloc]initWithFrame:CGRectMake(100,100, 50, 40)];
    [back setBackgroundImage:[UIImage imageNamed:@"images-2.png"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:back];
    self.navigationItem.leftBarButtonItem = item;
    
//    UIButton *back1 = [[UIButton alloc]initWithFrame:CGRectMake(100,100, 50, 40)];
//    [back1 setBackgroundImage:[UIImage imageNamed:@"51.png"] forState:UIControlStateNormal];
//    [back1 addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
//    
//    UIBarButtonItem *item1 = [[UIBarButtonItem alloc]initWithCustomView:back1];
//    self.navigationItem.rightBarButtonItem = item1;

    self.tv = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tv.delegate = self;
    self.tv.dataSource = self;
    [self.view addSubview:self.tv];
}

- (void)backBtnClick:(UIButton *)sender {
    NSLog(@"back log");
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
    [self.navigationController popViewControllerAnimated:YES];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 2;
    } else if (section == 1) {
        return 1;
    } else if (section == 2 ) {
        return 1;
    } else {
        return 2;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tv dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    NSString *cellTitle;
    if (indexPath.section == 0) {
//        switch (indexPath.row) {
//            case 0:
                if (indexPath.row == 0) {
                    UISwitch *customSwitch = [[UISwitch alloc] init];
                    [customSwitch addTarget:self action:@selector(swicherChange:) forControlEvents:UIControlEventValueChanged];
                    cell.accessoryView = customSwitch;
                    cellTitle = @"자동 친구 추가";
                } else {

                //섹션 1 (0), 로우 1(0) 처리

//                break;
//            default:
                //섹션 1 (0), 로우 2(1) 처리
                    UISwitch *customSwitch = [[UISwitch alloc] init];
                    [customSwitch addTarget:self action:@selector(swicherChanged:) forControlEvents:UIControlEventValueChanged];
                    cell.accessoryView = customSwitch;

                cellTitle =@"친구 목록 새로고침";
                }
//                break;
//        }
    } else if (indexPath.section == 1) {
        UISwitch *customSwitch = [[UISwitch alloc] init];
        [customSwitch addTarget:self action:@selector(swicheChange:) forControlEvents:UIControlEventValueChanged];
        cell.accessoryView = customSwitch;

        cellTitle = @"친구 추천 허용";

    } else if (indexPath.section == 2) {
        UISwitch *customSwitch = [[UISwitch alloc] init];
        [customSwitch addTarget:self action:@selector(swichersChange:) forControlEvents:UIControlEventValueChanged];
        cell.accessoryView = customSwitch;

        cellTitle = @"친구 이름 동기화";

    } else if (indexPath.section == 3) {
        switch (indexPath.row) {
        case 0:
            cellTitle = @"숨긴친구 관리";
            break;
        default:
            cellTitle = @"차단친구 관리";
            break;
        }
    }



    cell.textLabel.text = cellTitle;
    return cell;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UILabel *lbl = [[UILabel alloc] init];
    [lbl setTextAlignment:NSTextAlignmentLeft];
    //[lbl setBackgroundColor:[UIColor colorWithRed:230.0/255.0 green:230.0/255.0 blue:230.0/255.0 alpha:1]];
    lbl.font = [UIFont systemFontOfSize:12];
    switch (section) {
        case 3:
            lbl.text = @"     친구 관리 ";
            break;
    }
    return lbl;
    
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"내 연락처에서 카카오톡을 사용하는 친구를 자동으로 친구목록\n에 추가합니다. 수동으로 추가하려면 새로고침 버튼을 눌러 주세\n요.";
            break;
         case 1:
            return @"알 수고 있는 친구를 추천받고, 나를 다른 친구에게 추천해줍니\n다.";
            break;
         case 2:
            return @"카카오톡 앱의 친구 이름을 PC버전,카카오 게임 등에서 동일\n하게 보여줍니다.";
            break;
            
    }
    
    return nil;
}
-(void)swicherChange:(UISwitch*)sender{
}
-(void)swicherChanged:(UISwitch*)sender{
}
-(void)swicheChange:(UISwitch*)sender{
}
-(void)swichersChange:(UISwitch*)sender{
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.section) {
        case 0:
            if (indexPath.row == 0) {
//                SecondViewController *second = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"]; //스토리보드 방식
                SecondViewController *second = [[SecondViewController alloc]init];
                [self.navigationController pushViewController:second animated:YES];
            }else{
                FriendViewController *second = [[FriendViewController alloc]init];
                [self.navigationController pushViewController:second animated:YES];
            }
            break;
         case 1:
            if (indexPath.row == 0) {
                OneFriendViewController *second = [[OneFriendViewController alloc]init];
                [self.navigationController pushViewController:second animated:YES];
            }
            break;
          case 2:
            if (indexPath.row == 0) {
                TwoViewController *second = [[TwoViewController alloc]init];
                [self.navigationController pushViewController:second animated:YES];
            }
            break;
          case 3:
            if (indexPath.row == 0 ) {
                ThreeViewController *second = [[ThreeViewController alloc]init];
                [self.navigationController pushViewController:second animated:YES];
            } else {
                FourViewController *second = [[FourViewController alloc]init];
                [self.navigationController pushViewController:second animated:YES];
            }
          default:
            break;
    }

    
}

@end
