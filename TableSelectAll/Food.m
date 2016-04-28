//
//  Food.m
//  TableSelectAll
//
//  Created by angelwin on 16/4/28.
//  Copyright © 2016年 com@angelwin. All rights reserved.
//

#import "Food.h"

@implementation Food
+ (NSArray *)foodNames{
    
    Food *f1 = [[Food alloc]init];
    f1.foodName = @"苹果";
    
    Food *f2 = [[Food alloc]init];
    f2.foodName = @"槟榔子香蕉";
    
    Food *f3 = [[Food alloc]init];
    f3.foodName = @"山毛榉坚果";
    
    Food *f4 = [[Food alloc]init];
    f4.foodName = @"海棠果";
    
    Food *f5 = [[Food alloc]init];
    f5.foodName = @"酸橙";
    
    Food *f6 = [[Food alloc]init];
    f6.foodName = @"黑莓";
    
    Food *f7 = [[Food alloc]init];
    f7.foodName = @"杨桃";
    
    Food *f8 = [[Food alloc]init];
    f8.foodName = @"樱桃";
    
    Food *f9 = [[Food alloc]init];
    f9.foodName = @"椰子金桔";
    
    Food *f10 = [[Food alloc]init];
    f10.foodName = @"西洋李子";
    
    Food *f11 = [[Food alloc]init];
    f11.foodName = @"白果";
    
    Food *f12 = [[Food alloc]init];
    f12.foodName = @"山楂果";
    
    Food *f13 = [[Food alloc]init];
    f13.foodName = @"哈密瓜";
    
//    NSMutableArray *arrM = [NSMutableArray array];
    return @[f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f13,f12];
}

@end
