//
//  PopMenuBarViewController.m
//  PopMenuBar
//
//  Created by zygmain@gmail.com on 04/30/2018.
//  Copyright (c) 2018 zygmain@gmail.com. All rights reserved.
//

#import "PopMenuBarViewController.h"
#import "UIView+ZHNDoodleMenuBar.h"

@interface PopMenuBarViewController ()
@property(nonatomic,strong)UIButton *btn;
@end

@implementation PopMenuBarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(350, 350, 40, 40)];
    btn.backgroundColor = UIColor.redColor;
    [btn addTarget:self action:@selector(onclick) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
    self.btn = btn;
}


- (void)onclick {
    [_btn zhn_showDoodleMenuBarWithMenuButtonItemArray:[self p_getDoodleMenuButtonItemArray] tintColor:UIColor.redColor clickItemHandle:^(NSInteger index, BOOL isTypeSelectAfter) {
        
    }];
}

- (NSArray *)p_getDoodleMenuButtonItemArray {
    NSArray *imageNameArray = @[@"pic",@"pic",@"pic",@"pic"];
    NSMutableArray *itemArray = [NSMutableArray array];
    [imageNameArray enumerateObjectsUsingBlock:^(NSString *imageName, NSUInteger idx, BOOL * _Nonnull stop) {
        ZHNDoodleMenuButtonItem *item = [ZHNDoodleMenuButtonItem zhn_doodleMenuButtonItemWithImageName:imageName imageNormalColor:UIColor.grayColor imageSelectColor:[UIColor whiteColor] isSelectd:NO];
        [itemArray addObject:item];
    }];
    return itemArray;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
