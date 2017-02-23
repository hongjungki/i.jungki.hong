//
//  MyCustomTableViewCell.m
//  TestUitableView0217
//
//  Created by 홍정기 on 2017. 2. 17..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "MyCustomTableViewCell.h"


@interface MyCustomTableViewCell ()
@property (nonatomic,weak)UIImageView *mainImageView;
@property (nonatomic,weak)UIView *mainTextContainer;
@property (nonatomic,weak)UILabel *mainTextLabel;
@property (nonatomic,weak)UILabel *asubTextLabel;
@property (nonatomic,weak)UILabel *bsubTextLabel;

@end

@implementation MyCustomTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self creatSubView];
        [self test];
 //       [self updateLayout];
    }
    return self;
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)layoutSubviews{
    [self updateLayout];
}
- (void)creatSubView{
    UIImageView *mainImageView = [[UIImageView alloc]init];
    mainImageView.clipsToBounds= YES;
    mainImageView.layer.cornerRadius = 30;
      [self addSubview:mainImageView];
    self.mainImageView = mainImageView;
    
    UIView *mainTextContaier = [[UIView alloc]init];
    [self addSubview:mainTextContaier];
    self.mainTextContainer = mainTextContaier;
    
    UILabel *mainTextLabel = [[UILabel alloc]init];
    mainTextLabel.textColor = [UIColor blackColor];
    mainTextLabel.textAlignment = NSTextAlignmentLeft;
    mainTextLabel.font = [UIFont systemFontOfSize:14];
    [mainTextContaier addSubview:mainTextLabel];
    self.mainTextLabel = mainTextLabel;
    
    UILabel *asubTextLabel = [[UILabel alloc]init];

    asubTextLabel.textColor = [UIColor colorWithRed:84.0/255.0 green:84.0/255.0 blue:84.0/255.0 alpha:1];
    asubTextLabel.textAlignment = NSTextAlignmentLeft;
    asubTextLabel.font = [UIFont systemFontOfSize:12];
    [mainTextContaier addSubview:asubTextLabel];
    self.asubTextLabel = asubTextLabel;
    
    UILabel *bsubTextLabel = [[UILabel alloc]init];
    bsubTextLabel.textColor = [UIColor blackColor];
    bsubTextLabel.textAlignment =NSTextAlignmentRight;
    bsubTextLabel.font = [UIFont systemFontOfSize:11];
    [mainTextContaier addSubview:bsubTextLabel];
    self.bsubTextLabel = bsubTextLabel;
}

-(void)updateLayout{
//    const CGFloat MARGIN = 0;
//    CGFloat offsetX = MARGIN;
//    CGFloat offsetY = MARGIN;
    
    self.mainImageView.frame = CGRectMake(10, 10,60,60);
    
    self.mainTextContainer.frame = CGRectMake(80, 0,self.frame.size.width-80,80);
    self.mainTextLabel.frame = CGRectMake(15, 0,self.frame.size.width-80, 50);
    
    self.asubTextLabel.frame = CGRectMake(15, 50, (self.frame.size.width-80)/2, 30);
    
    self.bsubTextLabel.frame = CGRectMake((self.frame.size.width-80)/2, 50, (self.frame.size.width-80)/2, 30);
    
}

-(void)test{
    self.backgroundColor = [UIColor colorWithRed:248.0/255.0 green:248.0/255.0 blue:248.0/255.0 alpha:1];
    self.mainTextContainer.backgroundColor = [UIColor colorWithRed:248.0/255.0 green:248.0/255.0 blue:248.0/255.0 alpha:1];
     //.textColor = [UIColor colorWithRed:38.0/255.0 green:168.0/255.0 blue:245.0/255.0 alpha:1];
    
  //  self.mainTextLabel.backgroundColor = [UIColor yellowColor];
    //self.asubTextLabel.backgroundColor = [UIColor blueColor];
    //self.bsubTextLabel.backgroundColor = [UIColor redColor];
}
-(void)setDataWithImagename:(NSString*)imgUrlstr
                   mainText:(NSString*)main
                   asubText:(NSString*)asub
                   bsubText:(NSString*)busb{
    self.mainImageView.image = [UIImage imageNamed:imgUrlstr];
    self.mainTextLabel.text = main;
    self.asubTextLabel.text = asub;
    self.bsubTextLabel.text = busb;
}


























@end
