//
//  PullDownMenu.m
//  JerrysTool
//
//  Created by jerry on 2017/7/1.
//  Copyright © 2017年 jerry. All rights reserved.
//

#import "PullDownMenu.h"


@interface PullDownMenu ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSArray *items;
@property(nonatomic,strong)UITableView *menuTableView;
@property(nonatomic,assign)CGFloat cellHeight;
@property(nonatomic,strong)UIWindow *bgView;
@end

@implementation PullDownMenu

-(instancetype)initPullDownMenuWithItems:(NSArray *)items cellHeight:(CGFloat)cellHeight menuFrame:(CGRect)menuFrame clickIndexHandle:(PullDownMenuClick)handle{
    if (self = [super init]) {
        self.items = items;
        self.frame = [UIScreen mainScreen].bounds;
        self.backgroundColor = [UIColor clearColor];
        self.click = handle;
        [self initPullDownMenuWithcellHeight:cellHeight menuFrame:menuFrame];
    }
    return self;
}

-(void)initPullDownMenuWithcellHeight:(CGFloat)cellHeight menuFrame:(CGRect)menuFrame{
    
    
    
    
    self.cellHeight = cellHeight;
    _menuTableView = [[UITableView alloc]initWithFrame:menuFrame style:UITableViewStylePlain];
    _menuTableView.delegate = self;
    _menuTableView.dataSource = self;
    _menuTableView.backgroundColor = [UIColor whiteColor];
    [self addSubview:_menuTableView];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.items count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([self class])];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([self class])];
        cell.textLabel.font = [UIFont systemFontOfSize:14.0];
        cell.textLabel.textColor = [UIColor blackColor];
        cell.backgroundColor = [UIColor clearColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.textAlignment=NSTextAlignmentCenter;
    cell.textLabel.text = self.items[indexPath.row];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  self.cellHeight;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.click) {
        self.click([indexPath row]);
        self.click = nil;
    }
    [self dismiss];
}

-(void)show{
    _bgView = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _bgView.windowLevel  = UIWindowLevelAlert;
    [_bgView becomeKeyWindow];
    [_bgView makeKeyAndVisible];
    [_bgView addSubview:self];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismiss];
}
-(void)dismiss{
    _items=nil;
    _menuTableView=nil;
    
    [self removeFromSuperview];
}




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
