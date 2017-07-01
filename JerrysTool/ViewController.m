//
//  ViewController.m
//  JerrysTool
//
//  Created by jerry on 2017/6/28.
//  Copyright © 2017年 jerry. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Regular.h"
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
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
