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

int main(int argc, char *argv[]){
    @autoreleasepool {
        Stack *stack = [Stack new];
        stack = [stack init];
        NSString *s;
        for (int i=0; i<5; i++) {
            s = @"item %d";
            [stack Push: s];
        }
        for (int i=0; i<3; i++) {
            NSLog(@"#%d: %@",i,[stack Pop]);
        }
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
    
}
