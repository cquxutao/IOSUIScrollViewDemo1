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
    
    UITextField *username;
    UITextField *pwd;
    
    UIButton *userRegister;
    UIButton *userLogin;
    
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    scrollView=[[UIScrollView alloc] initWithFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, self.view.frame.size.height)];
    scrollView.pagingEnabled=YES;
    scrollView.backgroundColor=[UIColor whiteColor];
    scrollView.showsVerticalScrollIndicator=YES;
    scrollView.showsHorizontalScrollIndicator=NO;
    scrollView.delegate=self;
    CGSize newSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height*2);
    [scrollView setContentSize:newSize];
    [self.view addSubview:scrollView];
    
    //
    username=[[UITextField alloc] initWithFrame:CGRectMake(80.0, 100.0, 250.0, 30.0)];
    username.backgroundColor=[UIColor whiteColor];
    username.borderStyle=UITextBorderStyleRoundedRect;
    username.placeholder=@"username";
    username.textColor=[UIColor redColor];
    username.font=[UIFont fontWithName:@"Arial" size:22];
    username.autocorrectionType=UITextAutocorrectionTypeNo;
    username.clearsOnBeginEditing=YES;
    username.adjustsFontSizeToFitWidth=YES;
    username.minimumFontSize=15;
    username.keyboardAppearance=UIKeyboardAppearanceDefault;
    username.keyboardType=UIKeyboardTypeTwitter;
    username.autocapitalizationType=UITextAutocapitalizationTypeNone;
    
    pwd=[[UITextField alloc] initWithFrame:CGRectMake(80.0, 150.0, 250.0, 30.0)];
    pwd.secureTextEntry=YES;
    pwd.backgroundColor=[UIColor whiteColor];
    pwd.borderStyle=UITextBorderStyleRoundedRect;
    pwd.placeholder=@"password";
    pwd.textColor=[UIColor redColor];
    pwd.font=[UIFont fontWithName:@"Arial" size:22];
    pwd.autocorrectionType=UITextAutocorrectionTypeNo;
    pwd.clearsOnBeginEditing=YES;
    pwd.adjustsFontSizeToFitWidth=YES;
    pwd.minimumFontSize=15;
    pwd.keyboardAppearance=UIKeyboardAppearanceDefault;
    pwd.keyboardType=UIKeyboardTypeTwitter;
    pwd.autocapitalizationType=UITextAutocapitalizationTypeNone;
    pwd.returnKeyType=UIReturnKeyDone;
    

    userRegister=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    userRegister.frame=CGRectMake(self.view.center.x-10-90,200.0,90.0,30.0);
    userRegister.backgroundColor=[UIColor grayColor];
    userRegister.alpha=0.8;
    [userRegister setTitle:@"REGISTER" forState:UIControlStateNormal];
    [userRegister setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    userRegister.titleLabel.font=[UIFont systemFontOfSize:15.0];
    userRegister.showsTouchWhenHighlighted=YES;
    [userRegister addTarget:self action:@selector(buttonRegister) forControlEvents:UIControlEventTouchUpInside];
    
    userLogin=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    userLogin.frame=CGRectMake(self.view.center.x+10,200.0,90.0,30.0);
    userLogin.backgroundColor=[UIColor grayColor];
    [userLogin setTitle:@"LOGIN" forState:UIControlStateNormal];
    [userLogin setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    userLogin.titleLabel.font=[UIFont systemFontOfSize:15.0];
    userLogin.showsTouchWhenHighlighted=YES;
    [userLogin addTarget:self action:@selector(buttonLogin) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView addSubview:username];
    [scrollView addSubview:pwd];
    
    [scrollView addSubview:userRegister];
    [scrollView addSubview:userLogin];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)buttonRegister{
    NSLog(@"buttonRegister pressed");
}

-(void)buttonLogin{
    NSLog(@"buttonLogin pressed");
}


@end
