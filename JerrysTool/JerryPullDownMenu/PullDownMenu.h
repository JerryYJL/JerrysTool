//
//  PullDownMenu.h
//  JerrysTool
//
//  Created by jerry on 2017/7/1.
//  Copyright © 2017年 jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^PullDownMenuClick)(NSInteger index);

@interface PullDownMenu : UIView
@property(nonatomic,copy)PullDownMenuClick click;

-(instancetype)initPullDownMenuWithItems:(NSArray *)items cellHeight:(CGFloat)cellHeight menuFrame:(CGRect)menuFrame clickIndexHandle:(PullDownMenuClick)handle;
-(void)show;

@end
