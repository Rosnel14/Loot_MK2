//
//  Factor.h
//  Loot
//
//  Created by ros on 6/9/21.
//


//Data collection factor for users
#ifndef Factor_h
#define Factor_h
#import <UIKit/UIKit.h>

@interface Factor : NSObject


@property NSString * category;
@property NSString * subtitle;

//creates tracking factors
-(instancetype)init: (NSString *)category sub:(NSString *)subtitle;

@end

#endif /* Factor_h */
