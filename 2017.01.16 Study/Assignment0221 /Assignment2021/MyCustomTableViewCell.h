//
//  MyCustomTableViewCell.h
//  TestUitableView0217
//
//  Created by 홍정기 on 2017. 2. 17..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomTableViewCell : UITableViewCell
-(void)setDataWithImagename:(NSString*)imgUrlstr
                   mainText:(NSString*)main
                   asubText:(NSString*)asub
                   bsubText:(NSString*)busb;
@end
