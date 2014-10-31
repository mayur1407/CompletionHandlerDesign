//
//  MyClass.h
//  CallBackPractice
//
//  Copyright (c) 2014 Mayur. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject
{
    void (^_completionHandler)(int someParameter);
}

- (void) doSomethingWithCompletionHandler:(void(^)(int))handler;

@end
