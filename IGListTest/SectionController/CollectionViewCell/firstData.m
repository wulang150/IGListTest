//
//  firstData.m
//  IGListTest
//
//  Created by  Tmac on 2018/1/29.
//  Copyright © 2018年 Tmac. All rights reserved.
//

#import "firstData.h"

@implementation firstData

- (nonnull id<NSObject>)diffIdentifier
{
    return [self description];
}

- (BOOL)isEqualToDiffableObject:(nullable id<IGListDiffable>)object
{
    firstData *model = (firstData *)object;
    if([model isKindOfClass:[firstData class]])
    {
        if([model.title isEqualToString:self.title]&&[model.content isEqualToString:self.content])
            return YES;
    }
    return NO;
}
@end
