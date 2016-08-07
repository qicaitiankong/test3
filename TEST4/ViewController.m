//
//  ViewController.m
//  TEST4
//
//  Created by 李自豪 on 16/7/29.
//  Copyright © 2016年 李自豪. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    self.view.backgroundColor = [UIColor blackColor];
    //245
    //插入排序
    NSMutableArray *arr = [[NSMutableArray alloc]initWithObjects:@"45",@"23",@"12",@"33", nil];
    
    for(NSInteger i = 1; i < arr.count; i ++){
        NSString * wantchNum = [arr objectAtIndex:i];
        for(NSInteger j = i-1; j >= 0;j --){
            if([[arr objectAtIndex:j] integerValue] > [wantchNum integerValue]){
                [arr replaceObjectAtIndex:j+1 withObject:[arr objectAtIndex:j]];
                [arr replaceObjectAtIndex:j withObject:wantchNum];
            }
        }
    }
    NSMutableArray *arr2 = [[NSMutableArray alloc]initWithObjects:@"43",@"23",@"12",@"56",@"7", nil];
    for(NSInteger i = 0; i < arr2.count; i ++){
        NSString *num1Str = [arr2 objectAtIndex:i];
        NSInteger j = i,index = i;
        for(; j < arr2.count-1;j ++){
            if([num1Str integerValue] < [[arr2 objectAtIndex:j + 1]integerValue]){
                num1Str = [arr2 objectAtIndex:j+1];
                index = j +1;
            }
        }
        if(index != i){
            [arr2 replaceObjectAtIndex:index withObject:[arr2 objectAtIndex:i]];
            [arr2 replaceObjectAtIndex:i withObject:num1Str];
        }
    }
    NSLog(@"%@",arr2);
       // Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
