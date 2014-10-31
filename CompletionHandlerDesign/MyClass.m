//
//  MyClass.m
//  CallBackPractice
//
//  Copyright (c) 2014 Mayur. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass
- (void) doSomethingWithCompletionHandler:(void(^)(int))handler
{
    // NOTE: copying is very important if you'll call the callback asynchronously,
    // even with garbage collection!
    _completionHandler = [handler copy];
    
    // Do stuff, possibly asynchronously...
    int result = 5 + 3;
    
    // Call completion handler.
    _completionHandler(result);
    
    // Clean up.
    _completionHandler = nil;
}
@end
