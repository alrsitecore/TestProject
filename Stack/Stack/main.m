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
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        Stack *stack = [Stack new];
        stack = [stack init];
        for (int i=0; i<7; i++) {
            [stack Push: [NSString stringWithFormat:@"Pushed item #%d", i+1]];
        }
        for (int i=0; i<3; i++) {
            NSLog(@"#%d: %@",i+1,[stack Pop]);
        }
        for (int i=0; i<[stack count]; i++) {
            NSLog(@"#%d: %@",i+1,[stack Peek]);
        }
        [stack clear];
    }
    
}
