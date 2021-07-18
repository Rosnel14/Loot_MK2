//
//  user_obj.h
//  Loot
//
//  Created by Rosnel Leyva-Cortés on 7/17/21.
//

#ifndef user_obj_h
#define user_obj_h
#import "Factor.h"
#import "HashTable.h"
#import <UIKit/UIKit.h>

@interface user_obj : NSObject

@property NSHashTable<Factor *> * factorList; //hashtable of factors
@property (nonatomic , strong) NSString * name;
@property (nonatomic, strong) NSString * bio;

//create instance of user
-(instancetype)init: (NSString *)n biography:(NSString *)b;

// add factor obj, return value indicates completion
-(BOOL)putFactor: (Factor *)f;

// remove factor obj, return value indicates completion
-(BOOL)removeFactor: (Factor *)f;

//find a factor obj, or set of them with the same category, returns said obj
-(NSMutableArray *)getFactor: (NSString *)category;




@end

#endif /* user_obj_h */
