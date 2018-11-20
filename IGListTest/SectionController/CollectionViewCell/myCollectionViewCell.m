//
//  myCollectionViewCell.m
//  IGListTest
//
//  Created by  Tmac on 2017/8/10.
//  Copyright © 2017年 Tmac. All rights reserved.
//

#import "myCollectionViewCell.h"

@implementation myCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        [self createView];
    }
    
    return self;
}

- (void)createView
{
    _titleLab = [[UILabel alloc] initWithFrame:CGRectMake(16, 6, 200, 32)];

    [self.contentView addSubview:_titleLab];
    
    _contentLab = [[UILabel alloc] initWithFrame:CGRectMake(16, CGRectGetMaxY(_titleLab.frame)+20, 200, 200)];
    [self.contentView addSubview:_contentLab];
}
@end
