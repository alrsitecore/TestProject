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

-(void)dealloc
{
   [ super dealloc ];
   [ _items release ];
}

-(id)init
{
   self = [ super init ];
   if ( self )
   {
       _items = [ NSMutableArray array ];
       [ _items retain ];
   }
   return self;
}

-(void)push:( NSObject* )object_
{
   if ( object_ != nil )
   {
      [ object_ retain ];
      [ _items insertObject: object_ atIndex: 0 ];
   }
}
-(NSObject*)pop
{
   if ( [ _items count ] ) 
   {
      id item_ = [ _items objectAtIndex: 0 ];
      [ item_ retain ];
      [ _items removeObject: [ _items objectAtIndex: 0 ] ];
      [ item_ autorelease ];
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
   int count_ = [_items count];
   for ( int i = 0; i < count_; i++ )
   { 
       [ _items removeObject: [_items objectAtIndex: 0 ] ];
   }
}
@end
