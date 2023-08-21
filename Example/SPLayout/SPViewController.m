//
//  SPViewController.m
//  SPLayout
//
//  Created by sayiwen on 08/09/2023.
//  Copyright (c) 2023 sayiwen. All rights reserved.
//

#import "SPViewController.h"
#import <Masonry/Masonry.h>
#import <SPLayout/SPLayout.h>



@interface SPViewController ()


@property (nonatomic, weak) UIView *firstView;
@property (nonatomic, weak) UIView *secondView;




@end

@implementation SPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.grayColor;
    
    UIView *firstView = [[UIView alloc] init];
    self.firstView = firstView;
    firstView.backgroundColor = UIColor.redColor;
    
    UIView *secondView = [[UIView alloc] init];
    self.secondView = secondView;
    secondView.backgroundColor = UIColor.blueColor;

    
    [self.view addSubview:firstView];
    [self.view addSubview:secondView];
    
    
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    SPLayout.layout(self.firstView)
        .rightToRightOfMargin(self.view,20)
        .centerY(self.view)
        .size(CGSizeMake(100, 100))
        .install();
    
    SPLayout.layout(self.secondView)
        .leftToLeftOf(self.view)
        .centerY(self.view)
        .width(100)
        .height(100)
        .install();
}




//layout
- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

@end
