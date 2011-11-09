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
-(void)releaseAll
{
   int count_ = [ _items count ];
   @autoreleasepool 
   {
      for (int i_ = 0; i_ < count_ ; i_++ ) 
      {
         [ [ _items objectAtIndex: i_ ] autorelease ];
         [ _items removeObject: [ _items objectAtIndex: i_ ] ];
      }
      [ _items autorelease ];
      [ self autorelease ];
   }
}
-(void)push:( NSObject* )object_
{
   if ( object_ != nil )
   {
      [ _items insertObject: object_ atIndex: 0 ];
      [ object_ retain ];
   }
}
-(NSObject*)pop
{
   if ( [ _items count ] ) 
   {
      id item_ = [ _items objectAtIndex: 0 ];
      [ _items removeObject: [ _items objectAtIndex: 0 ] ];
      [ item_ retain ];
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
