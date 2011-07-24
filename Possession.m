//
//  Possession.m
//  RandomPossessions
//
//  Created by  Chuns on 11-7-24.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "Possession.h"

@implementation Possession

- (NSString *)description
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                      possessionName,
                      serialNumber,
                      valueInDollars,
                      dateCreated];
    
    return descriptionString;
    
}

- (id)init
{
    return [self initWithPossessonName:@"Possession"
                        valueInDollars:0 
                          serialNumber:@""];
}

- (id)initWithPossessonName:(NSString *)name 
             valueInDollars:(int)value 
               serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if (self) {
        [self setPosssessionName:name];
        [self setSerialNumber:sNumber];
        [self setValueInDollars:value];
        dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}


- (void)setPosssessionName:(NSString *)str
{
    possessionName = str;
}

- (NSString *)possessionName
{
    return possessionName;
}

- (void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}

- (NSString *)serialNumber
{
    return serialNumber;
}

- (void)setValueInDollars:(int)i
{
    valueInDollars = i;
}

- (int)valueInDollars
{
    return valueInDollars;
}

- (NSDate *)dateCreated
{
    return dateCreated;
}

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


@end
