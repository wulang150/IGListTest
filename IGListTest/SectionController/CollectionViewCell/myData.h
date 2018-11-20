//
//  myData.h
//  IGListTest
//
//  Created by  Tmac on 2017/8/10.
//  Copyright © 2017年 Tmac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IGListKit.h"

@interface myData : NSObject
<IGListDiffable>

@property(nonatomic) NSArray *srcArr;
@end
