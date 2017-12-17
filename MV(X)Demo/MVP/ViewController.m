//
//  ViewController.m
//  MVX
//
//  Created by 谭培 on 2017/12/17.
//  Copyright © 2017年 RhettTamp. All rights reserved.
//

#import "ViewController.h"
#import "Presenter.h"

@interface ViewController ()<MyProtocol>

@property (nonatomic, strong) Presenter *presenter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.firstLabel];
    [self.view addSubview:self.secondLabel];
    [self.view addSubview:self.tapButton];
    self.presenter = [Presenter new];
    [self.presenter attachView:self];
}

- (void)buttonClicked{
    [self.presenter reloadView];
}

- (void)setFirst:(NSString *)first{
    self.firstLabel.text = first;
}

- (void)setSecond:(NSString *)second{
    self.secondLabel.text = second;
}

- (UILabel *)firstLabel{
    if (!_firstLabel) {
        _firstLabel = [[UILabel alloc]initWithFrame:CGRectMake(30, 80, 80, 40)];
        _firstLabel.backgroundColor = [UIColor redColor];
    }
    return _firstLabel;
}

- (UILabel *)secondLabel{
    if (!_secondLabel) {
        _secondLabel = [[UILabel alloc]initWithFrame:CGRectMake(150, 80, 80, 40)];
        _secondLabel.backgroundColor = [UIColor redColor];
    }
    return _secondLabel;
}

- (UIButton *)tapButton{
    if (!_tapButton) {
        _tapButton = [[UIButton alloc]initWithFrame:CGRectMake(130, 130, 50, 30)];
        [_tapButton setTitle:@"按钮" forState:UIControlStateNormal];
        [_tapButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_tapButton addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
    }
    return _tapButton;
}

@end
