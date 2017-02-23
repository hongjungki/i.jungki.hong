//
//  FourViewController.m
//  Assignment2021
//
//  Created by 홍정기 on 2017. 2. 22..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "FourViewController.h"
#import "MyCustomTableViewCell.h"
@interface FourViewController ()
<UITableViewDelegate,UITableViewDataSource>

@property UITableView *tv;
@property (nonatomic)NSArray *imagearr;
@property (nonatomic)NSArray *maintextarr;
@property (nonatomic)NSArray *asubtextarr;
@property (nonatomic)NSArray *bsubtextarr;


@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor purpleColor]];
    self.navigationItem.title = @" 차단친구 관리 ";
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]] ;
    
    
    UIButton *back = [[UIButton alloc]initWithFrame:CGRectMake(100,100, 50, 40)];
    [back setBackgroundImage:[UIImage imageNamed:@"images-2.png"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:back];
    self.navigationItem.leftBarButtonItem = item;
    
    self.tv = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tv.delegate = self;
    self.tv.dataSource = self;
    [self.view addSubview:self.tv];
    
    self.imagearr = @[@"1.png",@"2.png",@"3.png",@"4.png",@"5.png",@"6.png",@"7.png"];
    self.maintextarr = @[@"블루스키보드/미니 휴대용 무선/아이폰 아이...",@"상품명을 입력해주세요.",@"맥북프로 13형 레티나 2015년형 (MF841KH/...",@"상품명을 입력해주세요.",@"[리바이스]남성용 패치 포인트 네임 트러커데님...",@"[M~3XL]남녀공용 기모맨투맨투맨/팬츠",@"충전기와 거치를 한번에! 인그램 거치대"];
    self.asubtextarr = @[@"배송완료",@"배송완료",@"배송완료",@"배송완료",@"배송완료",@"배송완료",@"배송완료"];
    self.bsubtextarr = @[@"Gmarket/CJ대한통운",@"로젠택배",@"옥션/로젠택배",@"롯데택배",@"11번가/CJ택배통운",@"TOMON / CJ대한통운",@"TOMON / CJ대한통운"];
       
}
- (void)backBtnClick:(UIButton *)sender {
    NSLog(@"back log");
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
    [self.navigationController popViewControllerAnimated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    //    if(section == 0){
    //        return 2;
    //    } else {
    //        return 1;
    //    }
    if (section == 0) {
        return 2;
    } else if (section == 1) {
        return 1;
    } else if (section == 2 ) {
        return 2;
    } else  if(section == 3) {
        return 2;
    }else{
        return 10;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    MyCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"jk"];
    if (cell == nil) {
        cell = [[ MyCustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"jk"];
    }
    switch (indexPath.section) {
        case 0:
            [cell setDataWithImagename:[NSString stringWithFormat:@"i%ld.jpeg", indexPath.row+1]
                              mainText:[NSString stringWithFormat:@"%@", [self.maintextarr objectAtIndex:indexPath.row]]
                              asubText:[NSString stringWithFormat:@"%@", [self.asubtextarr objectAtIndex:indexPath.row]]
                              bsubText:[NSString stringWithFormat:@"%@", [self.bsubtextarr objectAtIndex:indexPath.row]]];
            break;
        case 1:
            [cell setDataWithImagename:[NSString stringWithFormat:@"i%ld.jpeg", indexPath.row+3]
                              mainText:[NSString stringWithFormat:@"%@", [self.maintextarr objectAtIndex:indexPath.row+2]]
                              asubText:[NSString stringWithFormat:@"%@", [self.asubtextarr objectAtIndex:indexPath.row+2]]
                              bsubText:[NSString stringWithFormat:@"%@", [self.bsubtextarr objectAtIndex:indexPath.row+2]]];
            break;
        case 2:
            [cell setDataWithImagename:[NSString stringWithFormat:@"i%ld.jpeg", indexPath.row+4]
                              mainText:[NSString stringWithFormat:@"%@", [self.maintextarr objectAtIndex:indexPath.row+3]]
                              asubText:[NSString stringWithFormat:@"%@", [self.asubtextarr objectAtIndex:indexPath.row+3]]
                              bsubText:[NSString stringWithFormat:@"%@", [self.bsubtextarr objectAtIndex:indexPath.row+3]]];
            break;
            
        case 3:
            [cell setDataWithImagename:[NSString stringWithFormat:@"i%ld.jpeg", indexPath.row+6]
                              mainText:[NSString stringWithFormat:@"%@", [self.maintextarr objectAtIndex:indexPath.row+5]]
                              asubText:[NSString stringWithFormat:@"%@", [self.asubtextarr objectAtIndex:indexPath.row+5]]
                              bsubText:[NSString stringWithFormat:@"%@", [self.bsubtextarr objectAtIndex:indexPath.row+5]]];
            break;
            
        default:
            
            break;
    }
    
    
    
    
    
    //        [cell setDataWithImagename:@"4.png" mainText:@"Twelve South MaigicWand for Mac| conn.." asubText:@"상품 준비 중" bsubText:@"Gmarket/ 우체국택배(등..." ];
    //
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    UILabel *lbl = [[UILabel alloc] init];
    [lbl setTextAlignment:NSTextAlignmentCenter];
    
    switch (section) {
        case 0:
            return @" ";
            break;
        case 1:
            return @"2016년 5월";
            break;
        case 2:
            return @"2016년 4월";
            break;
        case 3:
            return @"2016년 3월";
            break;
            
        default:
            return @"2016년 ^월";
            break;
    }
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UILabel *lbl = [[UILabel alloc] init];
    [lbl setTextAlignment:NSTextAlignmentCenter];
    [lbl setBackgroundColor:[UIColor colorWithRed:230.0/255.0 green:230.0/255.0 blue:230.0/255.0 alpha:1]];
    lbl.font = [UIFont systemFontOfSize:12];
    switch (section) {
        case 0:
            lbl.text = @" ";
            break;
        case 1:
            lbl.text = @"2016년 5월";
            break;
        case 2:
            lbl.text = @"2016년 4월";
            break;
        case 3:
            lbl.text = @"2016년 3월";
            break;
            
        default:
            lbl.text = @"2016년 ^월";
            break;
    }
    
    return lbl;
    
}




- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 10;
}
-(BOOL)prefersStatusBarHidden{
    return NO;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
