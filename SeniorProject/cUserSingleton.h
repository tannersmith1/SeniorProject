//
//  cUser.h
//  SeniorProject
//
//  Created by Tanner Smith on 1/12/14.
//  Copyright (c) 2014 Tanner Smith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface cUserSingleton : NSObject {
    
    NSString *username;
    NSMutableArray *parties;
}

+ (cUserSingleton *)getInstance;
@property (nonatomic, strong)NSMutableArray *parties;
@property (nonatomic, strong)NSString *username;

@end
