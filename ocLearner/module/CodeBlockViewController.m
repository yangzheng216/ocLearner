//
//  CodeBlockViewController.m
//  ocLearner
//
//  Created by yangzheng216 on 2018/4/21.
//  Copyright © 2018年 yangzheng216. All rights reserved.
//

#import "CodeBlockViewController.h"

@interface CodeBlockViewController ()

@end

@implementation CodeBlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor greenColor];
    self.navigationItem.title=@"Block";
    [self useCodeBlock];
    [self useCodeBlockDirect];
    [self useCodeBlockTypedef];
    [self useCodeBlockLocalVariable];
    [self useCodeBlockGlobalVariable];
    [self useCodeBlockWith_block];
}

-(void)useCodeBlock{
    NSLog(@"-----------%s-----------",__PRETTY_FUNCTION__);
    int value =3;
    int (^multiplyBlock)(int number) =^(int number){
        return (value * number);
    };
    int result = multiplyBlock(10);
    NSLog(@"Result:%d",result);
}

-(void)useCodeBlockDirect{
    NSLog(@"-----------%s-----------",__PRETTY_FUNCTION__);
    [self directblock:^(int a,int b){
        NSLog(@"a:%d,b:%d",a,b);
    }];
}

-(void)directblock:(void(^)(int a,int b))block{
    block(10,20);
}

-(void)useCodeBlockTypedef{
    NSLog(@"-----------%s-----------",__PRETTY_FUNCTION__);
    typedef int (^AddtionBlock)(int a,int b);
    AddtionBlock addtionBlock = ^(int a,int b){
        return a+b;
    };
    NSLog(@"%d,%d",addtionBlock(4,5),addtionBlock(10,3));
}



-(void)useCodeBlockLocalVariable{
    NSLog(@"-----------%s-----------",__PRETTY_FUNCTION__);
    typedef double (^MKSampleMultiplyBlockRef)(void);
    double a =10,b=20;
    MKSampleMultiplyBlockRef multiply =^(void){return a*b;};
    NSLog(@"%f",multiply());
    a=20;
    b=50;
    NSLog(@"%f",multiply());
    
}

-(void)useCodeBlockGlobalVariable{
    NSLog(@"-----------%s-----------",__PRETTY_FUNCTION__);
    typedef double (^MKSampleMultiplyBlockRef)(void);
    static double a =10,b=20;
    MKSampleMultiplyBlockRef multiply =^(void){return a*b;};
    NSLog(@"%f",multiply());
    a=20;
    b=50;
    NSLog(@"%f",multiply());
}

//-(void)useCodeBlockParameter{
//    typedef double (^MKSampleMultiply2BlockRef)(double c,double d);
//    MKSampleMultiply2BlockRef multiply2 =^(double c,double d){return c*d;};
//    NSLog(@"%f,%f",multiply2(4,5),multiply2(5,2));
//}

-(void)useCodeBlockWith_block{
    NSLog(@"-----------%s-----------",__PRETTY_FUNCTION__);
    typedef void (^MKSampleMultiplyBlockRef)(double a,double b);
//    double c=3;
//    MKSampleMultiplyBlockRef mutiply=^(double a,double b){c=a*b;};
    __block double c=3;
    MKSampleMultiplyBlockRef mutiply=^(double a,double b){
        c=a*b;};
    mutiply(2,5);
    NSLog(@"%f",c);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
