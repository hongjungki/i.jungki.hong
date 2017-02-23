//
//  CustomTableViewCell.m
//  Poketmongo
//
//  Created by 홍정기 on 2017. 2. 16..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UIView *newView = [[UIView alloc]initWithFrame:CGRectMake(25, 10, 40, 40)];
        newView.backgroundColor = [UIColor lightGrayColor];
        [newView.layer setCornerRadius: 20];
        [self addSubview:newView];
        [self sendSubviewToBack:newView];
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
