//
//  XHViewController.m
//  MoreTool
//
//  Created by 吴朋 on 2016/12/7.
//  Copyright © 2016年 吴朋. All rights reserved.
//

#import "XHViewController.h"
#import "XHTextViewController.h"
#import "XHPicViewController.h"

@interface XHViewController () {
    BOOL isShowTextView;
}

@property (nonatomic, retain)UIView *backView;

@property (nonatomic, retain)UIButton *textBt, *picBt;

@end

@implementation XHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    isShowTextView = YES;
    self.title = @"文本笑话";
    [self createTheMenuView];
    XHTextViewController *textVC = [[XHTextViewController alloc] init];
    [self.view addSubview:textVC.view];
    [self addChildViewController:textVC];
    
    XHPicViewController *picVC = [[XHPicViewController alloc] init];
    [self addChildViewController:picVC];
}


/**
 创建菜单视图 显示
 */
- (void)createTheMenuView {
    _backView = [[UIView alloc] initWithFrame:CGRectMake(0, MainScreenHeight - 40, MainScreenWidth, 40)];
    _backView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_backView];
    
    _textBt = [self createTheButtonItemWithTitle:@"文本" target:self action:@selector(clickTheText)];
    _textBt.frame = CGRectMake(0, 0, MainScreenWidth / 2.0, 40);
    _textBt.backgroundColor = [UIColor cyanColor];
    _picBt = [self createTheButtonItemWithTitle:@"图片" target:self action:@selector(clickThePic)];
    _picBt.frame = CGRectMake(MainScreenWidth / 2.0, 0, MainScreenWidth / 2.0, 40);
    _picBt.backgroundColor = [UIColor orangeColor];
    [_backView addSubview:_textBt];
    [_backView addSubview:_picBt];
}


/**
 创建button按钮

 @param title 按钮的显示文字
 @param target 谁参与执行
 @param action 需要执行的方法
 @return 按钮
 */
- (UIButton *)createTheButtonItemWithTitle:(NSString *)title target:(id)target  action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}

- (void)clickTheText {
    
    isShowTextView ?  : [self clickTheItemChangeTheViewIsTextView:YES];
}

- (void)clickThePic {
    !isShowTextView ?  : [self clickTheItemChangeTheViewIsTextView:NO];
}

- (void)clickTheItemChangeTheViewIsTextView:(BOOL)isText {
    isShowTextView = isText;
    XHTextViewController *textVC = self.childViewControllers[0];
    XHPicViewController *picVC = self.childViewControllers[1];
    UIView *showView = isText ? textVC.view :  picVC.view;
    UIView *removeView = isText ? picVC.view : textVC.view;
    [removeView removeFromSuperview];
    [self.view addSubview:showView];
    self.title = isText ? @"文本笑话" : @"图片笑话";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
