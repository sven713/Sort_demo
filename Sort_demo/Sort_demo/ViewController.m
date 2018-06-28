//
//  ViewController.m
//  Sort_demo
//
//  Created by sve on 2018/6/28.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *arr = [@[@3, @2, @1, @4, @5,@7,@6] mutableCopy];
    
//    [self bubblSort:arr];
    [self selectSort:arr];
//    [self realBuble:arr];
}


//- (NSMutableArray *)bubblSort:(NSMutableArray *)array {
//    for (NSInteger i = 0; i < array.count; i ++) {
//        for (NSInteger j = i + 1; j < array.count - 1; j ++) {
//            NSInteger temp = [array[i] integerValue];
//            if (array[i] > array[j]) {
//                array[i] = array[j];
//                array[j] = [NSNumber numberWithInteger:temp];
//            }
//        }
//    }
//    NSLog(@"%@",array);
//    return array;
//}

- (void)selectSort:(NSMutableArray *)arr { // i j比较
    for (int i = 0 ; i < arr.count; i ++) {
        for (int j = i+1; j < arr.count; j++) {
            NSInteger temp = [arr[i] integerValue];
            if (arr[i] >= arr[j]) {
                arr[i] = arr[j];
                arr[j] = [NSNumber numberWithInteger:temp];
            }
        }
    }
    NSLog(@"选择排序-%@",arr);
}

- (void)realBuble:(NSMutableArray *)array {
    for (NSInteger i = 0; i < array.count; i ++) {
        for (NSInteger j = 0; j < array.count - 1; j++) {
            NSInteger temp = [array[j] integerValue];
            if (array[j] >= array[j + 1]) {
                array[j] = array[j + 1];
                array[j + 1] = [NSNumber numberWithInteger:temp];
            }
        }
    }
    NSLog(@"realBuble-%@",array);
}

@end
