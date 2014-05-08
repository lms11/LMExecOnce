//
//  LMExecOnce.h
//  Poesias
//
//  Created by Lucas Moreira on 07/05/14.
//  Copyright (c) 2014 Lucas Moreira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LMExecOnce : NSObject

+ (void)execute:(void (^)())block version:(CGFloat)version;

@end
