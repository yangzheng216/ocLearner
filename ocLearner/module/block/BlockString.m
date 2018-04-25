//
//  BlockString.m
//  ocLearner
//
//  Created by yangzheng216 on 2018/4/21.
//  Copyright © 2018年 yangzheng216. All rights reserved.
//

#import "BlockString.h"

@implementation BlockString

-(instancetype)init{
    self = [super init];
    if(self){
        _theString =@"xiaoxiao";
    }
    return self;
}

//-(void)program1{
//    NSString* string1=^{
//        return [_theString stringByAppendingString:_theString];
//    };
//
//}
@end
