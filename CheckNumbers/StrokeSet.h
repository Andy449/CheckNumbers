//
//  StrokeSet.h
//  CheckNumbers
//
//  Created by 安恩杨 on 16/7/21.
//  Copyright © 2016年 安恩杨. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StrokeModel.h"

@interface StrokeSet : NSObject
{
    @private
    NSArray * arrayStrokeSet;
    
    NSString * count1;
    NSString * count2;
    NSString * count3;    
    NSString * count4;
    NSString * count5;
    NSString * count6;
    NSString * count7;
    NSString * count8;
    NSString * count9;
    NSString * count10;
    NSString * count11;
    NSString * count12;
    NSString * count13;
    NSString * count14;
    NSString * count15;
    NSString * count16;
    NSString * count17;
    NSString * count18;
    NSString * count19;
    NSString * count20;
    
    int mount;
}

- (StrokeModel *)getOneStroke;

@end
