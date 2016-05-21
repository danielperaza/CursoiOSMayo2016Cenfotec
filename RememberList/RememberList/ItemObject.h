//
//  ItemObject.h
//  RememberList
//
//  Created by Cesar Brenes on 5/21/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemObject : NSObject
@property (readonly) NSString *itemName;
@property (readonly) NSInteger quantity;

-(id)initWithName:(NSString*)name quantity:(NSInteger)quantity;
@end
