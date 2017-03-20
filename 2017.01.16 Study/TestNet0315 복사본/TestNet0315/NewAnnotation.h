//
//  NewAnnotation.h
//  TestNet0315
//
//  Created by 홍정기 on 2017. 3. 16..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface NewAnnotation : NSObject
<MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@end
