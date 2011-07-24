//
//  Possession.m
//  RandomPossessions
//
//  Created by  Chuns on 11-7-24.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "Possession.h"

@implementation Possession

+ (id)randomPossession
{
    // Create an array of three adjectives
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                                             @"Rusty",
                                                             @"Shiny", nil];
    
    // Create an array of three nouns
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",
                                                         @"Spork",
                                                         @"Mac", nil];
    
    //
    int adjectiveIndex = rand() % [randomAdjectiveList count];
    int nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    Possession *newPossession =
        [[self alloc] initWithPossessonName:randomName
                             valueInDollars:randomValue
                               serialNumber:randomSerialNumber];
    return newPossession;

}

- (id)initWithPossessionName:(NSString *)name
              valueIndollars:(int)value
                serialNumber:(NSString *)sNumber
{
    // Call the superclass's designated initializer
    self = [self init];
    
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        [self setPossessionName:name];
        [self setSerialNumber:sNumber];
        [self setValueInDollars:value];
        dateCreated = [[NSDate alloc] init];
    }
    // Return the address of the newly initialized object
    return self;
}

- (id)init
{
  return [self initWithPossessionName:@"Possession"
                       valueIndollars:0
                         serialNumber:@""];
}

@end
