//
//  Stack.h
//  Stack
//
//  Created by Alr on 08.11.11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StackProtocol <NSObject>
-(void)push:( NSObject* )object_;
-(NSObject*)pop;
-(NSObject*)peek;
-(int)count;
-(void)clear;
@end

@interface Stack : NSObject<StackProtocol>
-(void)push:( NSObject* )object_;
-(NSObject*)pop;
-(NSObject*)peek;
-(int)count;
-(void)clear;
@end