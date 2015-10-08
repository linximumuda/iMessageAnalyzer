//
//  MessageManager.m
//  iMessageAnalyzer
//
//  Created by Ryan D'souza on 10/8/15.
//  Copyright © 2015 Ryan D'souza. All rights reserved.
//

#import "MessageManager.h"

static MessageManager *messageInstance;

@implementation MessageManager

+ (instancetype) getInstance
{
    @synchronized(self) {
        if(!messageInstance) {
            messageInstance = [self init];
        }
    }
    
    return messageInstance;
}

- (instancetype) init
{
    if(!messageInstance) {
        messageInstance = [super init];
    }
    
    return self;
}


@end
