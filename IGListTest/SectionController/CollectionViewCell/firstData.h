//
//  firstData.h
//  IGListTest
//
//  Created by  Tmac on 2018/1/29.
//  Copyright © 2018年 Tmac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IGListKit.h"

@interface firstData : NSObject
<IGListDiffable>

@property(nonatomic) NSString *title;
@property(nonatomic) NSString *content;
@end
