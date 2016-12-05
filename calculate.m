//
//  calculate.m
//  Tools
//
//  Created by 李宏鑫 on 16/8/30.
//  Copyright © 2016年 hongxinli. All rights reserved.
//

#import "calculate.h"

@implementation calculate



//加法
- (calculate *(^)(NSInteger))add
{
    return ^(NSInteger A){
        self.result += A;
        return self;
    };
}

- (calculate *(^)(NSInteger))subduction
{
    return ^(NSInteger A){
        self.result -= A;
        return self;
    };
}
- (calculate *(^)(NSInteger))multiplication
{
    return ^(NSInteger A){
        self.result *= A;
        return self;
    };
}
- (calculate *(^)(NSInteger))division
{
    return ^(NSInteger A){
        self.result /= A;
        return self;
    };
}

+ (NSInteger)calculateWith:(void(^)(calculate *calcu))Calcu
{
    calculate *calcu = [[calculate alloc] init];
    Calcu(calcu);
    return calcu.result;
}

@end
