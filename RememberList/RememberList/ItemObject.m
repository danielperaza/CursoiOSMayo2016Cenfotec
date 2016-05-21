//
//  ItemObject.m
//  RememberList
//
//  Created by Cesar Brenes on 5/21/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "ItemObject.h"


@interface ItemObject()
@property (nonatomic, strong) NSString *itemName;
@property (nonatomic) NSInteger quantity;
@end

@implementation ItemObject


-(id)initWithName:(NSString*)name quantity:(NSInteger)quantity{
    if (self = [super init]) {
        _itemName = name;
        _quantity = quantity;
    }
    return self;
}

@end
