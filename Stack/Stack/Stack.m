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
    NSMutableArray* _items;
}
-(id)init
{
    self = [ super init ];
    if ( self )
    {
        _items = [ NSMutableArray array ];
    }
    return self;
}
-(void)push:( NSObject* )object_
{
    if ( object_ != nil )
    {
        [ _items insertObject: object_ atIndex: 0 ];
    }
}
-(NSObject*)pop
{
    if ( [ _items count ] ) {
        id item_ = [ _items objectAtIndex: 0 ];
        [ _items removeObject: [ _items objectAtIndex: 0 ] ];
        return item_;
    }
    else 
        return nil;
}
-(NSObject*)peek
{
    if ( [ _items count ] ) 
    {
        return [ _items objectAtIndex: 0 ];
    }
    else 
        return nil;
}
-(int)count
{
    return [ _items count ];
}
-(void)clear
{
    for ( int i = 0; i < [_items count]; i++ )
    { 
        [ _items removeObject: [_items objectAtIndex: 0 ] ];
    }
}
@end
