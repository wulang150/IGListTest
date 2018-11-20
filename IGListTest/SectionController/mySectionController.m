//
//  mySectionController.m
//  IGListTest
//
//  Created by  Tmac on 2017/8/10.
//  Copyright © 2017年 Tmac. All rights reserved.
//

#import "mySectionController.h"
#import "myCollectionViewCell.h"
#import "myData.h"
#import "firstData.h"

@interface mySectionController()
{
    firstData *model;
    
}
@end

@implementation mySectionController

- (id)init
{
    if(self = [super init])
    {
        
    }
    return self;
}

- (NSInteger)numberOfItems
{
    return 1;
}


- (CGSize)sizeForItemAtIndex:(NSInteger)index
{
    return CGSizeMake(self.collectionContext.containerSize.width, self.collectionContext.containerSize.height);
}


- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index
{
    myCollectionViewCell *cell = [self.collectionContext dequeueReusableCellOfClass:[myCollectionViewCell class] forSectionController:self atIndex:index];
    
    cell.titleLab.text = model.title;
    cell.contentLab.text = model.content;
    cell.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    
    return cell;
}


- (void)didUpdateToObject:(id)object
{
    model = object;
}


- (void)didSelectItemAtIndex:(NSInteger)index
{
//    NSLog(@"data = %@",dataArr[index]);
}
@end
