//
//  main.m
//  Stack
//
//  Created by Alr on 08.11.11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stack.h"
#import "AppDelegate.h"

int main( int argc, char *argv[] )
{
   @autoreleasepool 
   {
      Stack* stack_ = nil;
      @autoreleasepool 
      {
         stack_ = [ Stack new ];
         [ stack_ retain ];
         for ( int i_ = 0; i_ < 6; i_++ ) 
         {
            [ stack_ push: [ NSString stringWithFormat: @"Pushed item #%d", i_ + 1 ] ];
         }
      }
      for ( int i_ = 0; i_ < 3; i_++ ) 
      {
         NSLog( @"#%d: %@", i_ + 1,[ stack_ pop ] );
      }
      for ( int i_ = 0; i_ < 2; i_++ ) 
      { 
         NSLog( @"#%d: %@", i_ + 1,[ stack_ peek ] );
      }
      [ stack_ clear ];
      [ stack_ releaseAll ];
      
      return UIApplicationMain( argc, argv, nil, NSStringFromClass( [ AppDelegate class ] ) );

   }
}
