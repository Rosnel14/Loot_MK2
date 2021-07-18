//
//  Factor.m
//  Loot
//
//  Created by ros on 6/9/21.
//

#import <Foundation/Foundation.h>
#import "Factor.h"

@implementation Factor

-(instancetype)init:(NSString *)category sub:(NSString *)subtitle{
    if(self){
        self = [super init];
        self.category = category;
        self.subtitle = subtitle;
    }
    return self;
}

@end
