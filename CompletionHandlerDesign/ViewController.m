//
//  ViewController.m
//  CompletionHandlerDesign
//
//  Copyright (c) 2014 Mayur. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MyClass *foo = [[MyClass alloc] init];
    int x = 2;
    [foo doSomethingWithCompletionHandler:^(int result){
        // Prints 10
        NSLog(@"%i", x + result);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
