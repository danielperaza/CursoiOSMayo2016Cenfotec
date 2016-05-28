//
//  CustomNumber.h
//  CustomCellsExample
//
//  Created by Cesar Brenes on 5/28/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomNumber : NSObject
@property (readonly) NSNumber *number;
@property (readonly) BOOL isPair;


-(id)initWithNumber:(NSInteger)number isPair:(BOOL)isPair;

@end
