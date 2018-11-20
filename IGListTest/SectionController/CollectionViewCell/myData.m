//
//  myData.m
//  IGListTest
//
//  Created by  Tmac on 2017/8/10.
//  Copyright © 2017年 Tmac. All rights reserved.
//

#import "myData.h"

@implementation myData

- (id)init
{
    if(self = [super init])
    {
        [self initData];
    }
    
    return self;
}

- (void)initData
{
    _srcArr = @[@"aaa",@"sss",@"ddd"];
}

- (nonnull id<NSObject>)diffIdentifier
{
    return @"myData";
}

- (BOOL)isEqualToDiffableObject:(nullable id<IGListDiffable>)object
{
    return YES;
}

@end
