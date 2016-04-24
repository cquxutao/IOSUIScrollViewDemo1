//
//  ViewController.m
//  ScrollViewDemo1
//
//  Created by 徐涛 on 4/24/16.
//  Copyright © 2016 徐涛. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    UIScrollView *scrollView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    scrollView=[[UIScrollView alloc] initWithFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, self.view.frame.size.height)];
    scrollView.pagingEnabled=YES;
    scrollView.backgroundColor=[UIColor redColor];
    scrollView.showsVerticalScrollIndicator=YES;
    scrollView.showsHorizontalScrollIndicator=NO;
    scrollView.delegate=self;
    CGSize newSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height*2);
    [scrollView setContentSize:newSize];
    [self.view addSubview:scrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
