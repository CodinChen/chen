//
//  ViewController.m
//  chen
//
//  Created by ssf-2 on 15-5-25.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSString *path;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    path = [NSString stringWithFormat:@"%@/chen.txt",path];
    
    NSString *content = @"1234 5678 9012 3456 8934";
    [content writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
    [self.view addGestureRecognizer:gesture];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)tap{
    NSFileManager *fileManager  = [NSFileManager defaultManager];
    NSData * arr = [fileManager contentsAtPath:path];
    NSString * contex = [[NSString alloc]initWithData:arr encoding:NSUTF8StringEncoding];
    contex = [contex stringByAppendingString:@"啊阿吖呵"];
    [contex writeToFile:path atomically:NO encoding:NSUTF8StringEncoding error:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
