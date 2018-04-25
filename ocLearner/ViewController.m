//
//  ViewController.m
//  ocLearner
//
//  Created by yangzheng216 on 2018/4/21.
//  Copyright © 2018年 yangzheng216. All rights reserved.
//

#import "ViewController.h"
#import "CodeBlockViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [[UIButton alloc]init];
    button.frame = CGRectMake((self.view.frame.size.width-150)/2, self.view.frame.size.height*0.8, 150, 40);
    button.backgroundColor = [UIColor orangeColor];
    [button setTitle:@"开始体验" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(enter3) forControlEvents:UIControlEventTouchUpInside];
}

-(void)enter3{
    CodeBlockViewController* codeBlockViewController = [[CodeBlockViewController alloc]init];
    UINavigationController* navigationController = [[UINavigationController alloc]init];
    [navigationController pushViewController:codeBlockViewController animated:NO];
    
    [self presentViewController:navigationController animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
