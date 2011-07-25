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

        
        // Send the message addObject: to the NSMutableArray pointed to 
        // by the variable items, passing a string each time.

        
        // Send another message, insertObject:atIndex, to that same array object

        
        // For every item in the array as determined by sending count to the items array

        NSMutableArray *items = [[NSMutableArray alloc] init];
    
        
        for (int i= 0; i < 10; i++) {
            Possession *p = [Possession randomPossession];
            [items addObject:p];
        }
        
        for (Possession *item in items)
            NSLog(@"%@", item);
        



        // Release the array
        [items release];
        
        // Don't leave items pointing at freed memory!
        items = nil;
        
        
        
    }
    return 0;
}

