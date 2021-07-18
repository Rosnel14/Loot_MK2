//
//  usr_obj.m
//  Loot
//
//  Created by Rosnel Leyva-Cortés on 7/17/21.
//

#import <Foundation/Foundation.h>
#import "user_obj.h"
#import "Factor.h"

@implementation user_obj

-(instancetype)init:(NSString *)n biography:(NSString *)b{
    if(self){
        self = [super init];
        self.name = n;
        self.bio = b;
        self.factorList = [[NSHashTable alloc]init];
    }
    return self;
}

-(BOOL)putFactor:(Factor *)f{
    int stateThen = (int)self.factorList.count;
    
    [self.factorList addObject:f];
    
    if(self.factorList.count > stateThen){
        return YES;
    } else {
        return NO;
    }
}

-(BOOL)removeFactor:(Factor *)f{
    int stateThen = (int)self.factorList.count;
    
    [self.factorList removeObject:f];
    
    if(self.factorList.count < stateThen){
        return YES;
    } else {
        return NO;
    }

}

-(NSMutableArray *)getFactor:(NSString *)category{

    NSArray<Factor *> * lookup = self.factorList.allObjects;
    NSMutableArray<Factor *> * resultArr = [[NSMutableArray alloc] init];
    
    for(int i=0; i<lookup.count-1; i++){
        if([lookup objectAtIndex:i].category == category){
             [resultArr addObject:[lookup objectAtIndex:i]];
        }
    }
    return resultArr;
}

@end
