//
//  CustomNumber.m
//  CustomCellsExample
//
//  Created by Cesar Brenes on 5/28/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "CustomNumber.h"


@interface CustomNumber ()
@property (nonatomic, strong) NSNumber *number;
@property (nonatomic) BOOL isPair;
@end

@implementation CustomNumber


-(id)initWithNumber:(NSInteger)number isPair:(BOOL)isPair{
    if (self = [super init]) {
        _number = [NSNumber numberWithInteger:number];
        _isPair = isPair;
    }
    return self;
}

@end
