//
//  LMExecOnce.m
//  Poesias
//
//  Created by Lucas Moreira on 07/05/14.
//  Copyright (c) 2014 Lucas Moreira. All rights reserved.
//

#import "LMExecOnce.h"

#define LMEXECONCE_VERSION_KEY @"LMExecOnceVersionKey"

@implementation LMExecOnce

+ (void)registerVersion:(CGFloat)version
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:@(version) forKey:LMEXECONCE_VERSION_KEY];
    [userDefaults synchronize];
}

+ (void)execute:(void (^)())block version:(CGFloat)version
{
    if (!block)
        return;
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSNumber *lastVersion = [userDefaults objectForKey:LMEXECONCE_VERSION_KEY];
    
    if (lastVersion == nil || ([lastVersion floatValue] < version)) {
        block();
        
    }
    
    [self registerVersion:version];
}

@end
