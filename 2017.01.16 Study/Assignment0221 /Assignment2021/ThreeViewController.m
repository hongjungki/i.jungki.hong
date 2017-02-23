//
//  ThreeViewController.m
//  Assignment2021
//
//  Created by 홍정기 on 2017. 2. 22..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "ThreeViewController.h"
#import "CustomTableViewCell.h"
@interface ThreeViewController ()
<UITableViewDelegate,UITableViewDataSource>
@property UITableView *tv;
@property (nonatomic)NSArray *poketNameGen1;
@property (nonatomic)NSArray *poketNameGen2;
@property NSDictionary *dataDic;@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor grayColor]];
    self.navigationItem.title = @" 숨김친구 관리 ";
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
    
    
    
    
    
    self.poketNameGen1 = @[@"이상해씨",
                           @"이상해풀",
                           @"이상해꽃",
                           @"파이리",
                           @"리자드",
                           @"리자몽",
                           @"꼬부기",
                           @"어니부기",
                           @"거북왕",
                           @"캐터피",
                           @"단데기",
                           @"버터플",
                           @"뿔충이",
                           @"딱충이",
                           @"독침붕",
                           @"구구",
                           @"피죤",
                           @"피죤투",
                           @"꼬렛",
                           @"레트라",
                           @"깨비참",
                           @"깨비드릴조",
                           @"아보",
                           @"아보크",
                           @"피카츄",
                           @"라이츄",
                           @"모래두지",
                           @"고지",
                           @"니드런♀",
                           @"니드리나",
                           @"니드퀸",
                           @"니드런♂",
                           @"니드리노",
                           @"니드킹",
                           @"삐삐",
                           @"픽시",
                           @"식스테일",
                           @"나인테일",
                           @"푸린",
                           @"푸크린",
                           @"주뱃",
                           @"골뱃",
                           @"뚜벅쵸",
                           @"냄새꼬",
                           @"라플레시아",
                           @"파라스",
                           @"파라섹트",
                           @"콘팡",
                           @"도나리",
                           @"디그다",
                           @"닥트리오",
                           @"나옹",
                           @"페르시온",
                           @"고라파덕",
                           @"골덕",
                           @"망키",
                           @"성원숭",
                           @"가디",
                           @"윈디",
                           @"발챙이",
                           @"슈륙챙이",
                           @"강챙이",
                           @"캐이시",
                           @"윤겔라",
                           @"후딘",
                           @"알통몬",
                           @"근육몬",
                           @"괴력몬",
                           @"모다피",
                           @"우츠동",
                           @"우츠보트",
                           @"왕눈해",
                           @"독파리",
                           @"꼬마돌",
                           @"데구리",
                           @"딱구리",
                           @"포니타",
                           @"날쌩마",
                           @"야돈",
                           @"야도란",
                           @"코일",
                           @"레어코일",
                           @"파오리",
                           @"두두",
                           @"두트리오",
                           @"쥬쥬",
                           @"쥬레곤",
                           @"질퍽이",
                           @"질뻐기",
                           @"셀러",
                           @"파르셀",
                           @"고오스",
                           @"고우스트",
                           @"팬텀",
                           @"롱스톤",
                           @"슬리프",
                           @"슬리퍼",
                           @"크랩",
                           @"킹크랩",
                           @"찌리리공",
                           @"붐볼",
                           @"아라리",
                           @"나시",
                           @"탕구리",
                           @"텅구리",
                           @"시라소몬",
                           @"홍수몬",
                           @"내루미",
                           @"또가스",
                           @"또도가스",
                           @"뿔카노",
                           @"코뿌리",
                           @"럭키",
                           @"덩쿠리",
                           @"캥카",
                           @"쏘드라",
                           @"시드라",
                           @"콘치",
                           @"왕콘치",
                           @"별가사리",
                           @"아쿠스타",
                           @"마임맨",
                           @"스라크",
                           @"루주라",
                           @"에레브",
                           @"마그마",
                           @"쁘사이저",
                           @"켄타로스",
                           @"잉어킹",
                           @"갸라도스",
                           @"라프라스",
                           @"메타몽",
                           @"이브이",
                           @"샤미드",
                           @"쥬피썬더",
                           @"부스터",
                           @"폴리곤",
                           @"암나이트",
                           @"암스타",
                           @"투구",
                           @"투구푸스",
                           @"프테라",
                           @"잠만보",
                           @"프리져",
                           @"썬더",
                           @"파이어",
                           @"미뇽",
                           @"신뇽",
                           @"망나뇽",
                           @"뮤츠",
                           @"뮤" ];
    self.poketNameGen2 = @[@"치코리타",
                           @"베이리프",
                           @"메가니움",
                           @"브케인",
                           @"마그케인",
                           @"블레이범",
                           @"리아코",
                           @"엘리게이",
                           @"장크로다일",
                           @"꼬리선",
                           @"다꼬리",
                           @"부우부",
                           @"야부엉",
                           @"레디바",
                           @"레디안",
                           @"페이검",
                           @"아리아도스",
                           @"크로뱃",
                           @"초라기",
                           @"랜턴",
                           @"피츄",
                           @"삐",
                           @"푸푸린",
                           @"토게피",
                           @"토게틱",
                           @"네이티",
                           @"네이티오",
                           @"메리프",
                           @"보송송",
                           @"전룡",
                           @"아르코",
                           @"마릴",
                           @"마릴리",
                           @"꼬지모",
                           @"왕구리",
                           @"통통코",
                           @"두코",
                           @"솜솜코",
                           @"에이팜",
                           @"해너츠",
                           @"해루미",
                           @"왕자리",
                           @"우파",
                           @"누오",
                           @"에브이",
                           @"블래키",
                           @"니로우",
                           @"야도킹",
                           @"무우마",
                           @"안농",
                           @"마자용",
                           @"키링키",
                           @"피콘",
                           @"쏘콘",
                           @"노고치",
                           @"글라이거",
                           @"강철톤",
                           @"블루",
                           @"그랑블루",
                           @"침바루",
                           @"핫삼",
                           @"단단지",
                           @"헤라크로스",
                           @"포푸니",
                           @"깜지곰",
                           @"링곰",
                           @"마그마그",
                           @"마그카르고",
                           @"꾸꾸리",
                           @"메꾸리",
                           @"코산호",
                           @"총어",
                           @"대포무노",
                           @"딜리버드",
                           @"만타인",
                           @"무장조",
                           @"델빌",
                           @"헬가",
                           @"킹드라",
                           @"코코리",
                           @"코리갑",
                           @"폴리곤2",
                           @"노라키",
                           @"루브도",
                           @"배루키",
                           @"카포에라",
                           @"뽀뽀라",
                           @"에레키드",
                           @"마그비",
                           @"밀탱크",
                           @"해피너스",
                           @"라이코",
                           @"앤테이",
                           @"스이쿤",
                           @"애버라스",
                           @"데기라스",
                           @"마기라스",
                           @"루기아",
                           @"칠색조",
                           @"세레비",
                           
                           ];
    
    self.dataDic = @{ @"1세대": self.poketNameGen1, @"2세대": self.poketNameGen2 };
    
}


- (void)backBtnClick:(UIButton *)sender {
    NSLog(@"back log");
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
    [self.navigationController popViewControllerAnimated:YES];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return  2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return self.poketNameGen1.count;
            break;
        default:
            return self.poketNameGen2.count;
            break;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //셀 가져오기
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"hjk"];
    if (cell == nil) {
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"hjk"];
    }
    //셀에 내용 넣기
    if (indexPath.section == 0) { //섹션 판단
        cell.textLabel.text = self.poketNameGen1[indexPath.row];
        cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Thumbnails/thumbnail_%ld",indexPath.row+1]];
        UISwitch *switcher = [[UISwitch alloc] initWithFrame:CGRectMake(10, 10, 10, 10)];
        [switcher addTarget:self action:@selector(swicherChange:) forControlEvents:UIControlEventValueChanged];
        [cell setAccessoryView:switcher];
        
        
    }else{
        cell.textLabel.text = self.poketNameGen2[indexPath.row];
        cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Thumbnails/thumbnail_%ld",indexPath.row+152]];
        
    }
    
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return  @"poketNameGen1";
            break;
        case 1:
            return  @"poketNameGen2";
            break;
        default:
            break;
    }return @"";
}
-(BOOL)prefersStatusBarHidden{
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"%@ 입니다.",selectedCell.textLabel.text);
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
-(void)swicherChange:(UISwitch*)sender{
    
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
