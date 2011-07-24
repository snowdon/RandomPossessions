//
//  main.m
//  RandomPossessions
//
//  Created by  Chuns on 11-7-23.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Possession.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
    
        // Create a mutable array, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArray pointed to 
        // by the variable items, passing a string each time.
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, insertObject:atIndex, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        // For every item in the array as determined by sending count to the items array
        for (int i = 0; i < [items count]; i++) {
            //We get the ith object from the arra and pass it as an argument to NSLog,
            // which implicitly sends the description message to that object
            NSLog(@"%@", [items objectAtIndex:i]);
        }
        
        

        // Release the array
        [items release];
        
        // Don't leave items pointing at freed memory!
        items = nil;
        
        
        
    }
    return 0;
}

