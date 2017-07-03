//
//  ActivityIndicatorView.m
//  JerrysTool
//
//  Created by jerry on 2017/7/1.
//  Copyright © 2017年 jerry. All rights reserved.
//

#import "ActivityIndicatorView.h"

@implementation ActivityIndicatorView

-(id)initWithFrame:(CGRect)frame{
    if (self == [super initWithFrame:frame]) {
        [self setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleWhite];
        self.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.5];
        self.layer.cornerRadius = 12.0;
        self.layer.masksToBounds = YES;
        [self startAnimating];
    }
         return self;
}




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
