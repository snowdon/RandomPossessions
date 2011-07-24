//
//  Possession.h
//  RandomPossessions
//
//  Created by  Chuns on 11-7-24.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Possession : NSObject
{
    NSString *possessionName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

- (void)setPosssessionName:(NSString *)str;
- (NSString *)possessionName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)possessionName;

- (void)setValueInDollars:(int)i;
- (int)valueInDollars;

- (NSDate *)dateCreated;


+ (id)randomPossession;

- (id)initWithPossessonName: (NSString *)name
             valueInDollars:(int)value
               serialNumber:(NSString *)sNumber;
@end
