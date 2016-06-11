//
//  EnterNameViewController.h
//  popoverExample
//
//  Created by Cesar Brenes on 6/11/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EnterNameDelegate <NSObject>
-(void)getName:(NSString*)name;
@end

@interface EnterNameViewController : UIViewController
@property(nonatomic,assign) id<EnterNameDelegate> delegate;

@end
