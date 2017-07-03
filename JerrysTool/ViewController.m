//
//  ViewController.m
//  JerrysTool
//
//  Created by jerry on 2017/6/28.
//  Copyright © 2017年 jerry. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Regular.h"
#import "GetDeviceInfo.h"
#import "PullDownMenu.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *hello;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *a = @"你说你说好的好的好的回电";
    NSLog(@"%@",[a filterSpecialString]);
    _hello.backgroundColor = [UIColor redColor];
    _hello.numberOfLines = 0;
    
    
    NSLog(@"%f",[a sizeWithStringOfFont:[UIFont systemFontOfSize:17] Size:CGSizeMake(_hello.frame.size.width, MAXFLOAT) LineSpacing:1].height);
    _hello.text = a;
    NSString *deviceName = [[UIDevice currentDevice]name];
    NSLog(@"%@",deviceName);
    
    
    NSLog(@"%@",[GetDeviceInfo getDeviceModel]) ;
    
    NSLog(@"%@",[GetDeviceInfo getSysVersion]);
    
    
    
    
}

-(void)viewDidAppear:(BOOL)animated{
    PullDownMenu *pullDownMenu = [[PullDownMenu alloc]initPullDownMenuWithItems:@[@"1",@"2"] cellHeight:35.0 menuFrame:CGRectMake(0, 0, 100, 100) clickIndexHandle:^(NSInteger index) {
        NSLog(@"%ld",(long)index);
    }];
    pullDownMenu.backgroundColor = [UIColor clearColor];
    [pullDownMenu show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
