//
//  Stack.m
//  Stack
//
//  Created by Alr on 08.11.11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Stack.h"

@implementation Stack
{
    NSMutableArray *items;
}
-(id) init
{
    self = [super init];
    if (self)
    {
        items = [NSMutableArray array];
    }
    return self;
}
-(void) Push: (NSObject *) object
{
    if (object != nil)
    {
        [items insertObject: object atIndex: 0];
         
    }
}
-(NSObject *) Pop
{
    if ([items count]) {
        id item = [items objectAtIndex:0];
        [items removeObject: [items objectAtIndex:0]];
        return (item);
    }
    else return nil;
}
-(NSObject *) Peek
{
    if ([items count]) {
        return [items objectAtIndex:0];
    }
    else return nil;
}
-(int) count
{
    return [items count];
}
-(void) clear
{
    for (int i=0; i<[items count]; i++)
    {
        [items removeObject: [items objectAtIndex:0]];
    }
}
@end
