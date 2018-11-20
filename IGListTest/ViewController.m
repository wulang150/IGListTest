//
//  ViewController.m
//  IGListTest
//
//  Created by  Tmac on 2017/8/10.
//  Copyright © 2017年 Tmac. All rights reserved.
//

#import "ViewController.h"
#import "IGListKit.h"
#import "mySectionController.h"
#import "myData.h"
#import "firstData.h"

@interface ViewController ()
<IGListAdapterDataSource>
{
    NSMutableArray *firstArr;
}

@property (nonatomic) UICollectionView *collect;
@property (nonatomic) IGListAdapter *adapter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createView
{
    self.view.backgroundColor = [UIColor whiteColor];
    firstData *model1 = [firstData new];
    model1.title = @"name1";
    model1.content = @"content1";
    firstData *model2 = [firstData new];
    model2.title = @"name2";
    model2.content = @"content2";
    
    firstArr = [@[model1,model2] mutableCopy];

    [self.view addSubview:self.collect];
    self.adapter.collectionView = self.collect;
    
    
}

- (UICollectionView *)collect
{
    if(!_collect)
    {
        UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
        //设置布局方向为垂直流布局
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.minimumLineSpacing = 0.0f;
        
        _collect = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 300) collectionViewLayout:layout];
        _collect.pagingEnabled = YES;
        _collect.bounces = NO;
        _collect.center = self.view.center;
    }
    
    return _collect;
}

- (IGListAdapter *)adapter
{
    if(!_adapter)
    {
        _adapter = [[IGListAdapter alloc] initWithUpdater:[IGListAdapterUpdater new] viewController:self workingRangeSize:0];
        _adapter.dataSource = self;
    }
    
    return _adapter;
}

//数据设配器
#pragma -mark IGListAdapterDataSource

- (NSArray<id <IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter
{
    return firstArr;
}

- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object
{
    
    if([object isKindOfClass:[firstData class]])
    {
        return [mySectionController new];
    }
    return [IGListSectionController new];
}
- (nullable UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter
{
    return nil;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    firstData *model1 = [firstData new];
    model1.title = @"namehh";
    model1.content = @"contenthh";
//
//    [firstArr addObject:model1];
    
//    firstData *model = [firstArr objectAtIndex:0];
//    model.title = @"hello";
    
    [firstArr replaceObjectAtIndex:0 withObject:model1];
    
    [_adapter performUpdatesAnimated:YES completion:nil];
}

@end
