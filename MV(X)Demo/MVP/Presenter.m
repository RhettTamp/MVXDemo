//
//  Presenter.m
//  MVX
//
//  Created by 谭培 on 2017/12/17.
//  Copyright © 2017年 RhettTamp. All rights reserved.
//

#import "Presenter.h"
#import "Model.h"

@interface Presenter()

@property (nonatomic, weak) id <MyProtocol> view;
@property (nonatomic, strong) Model *model;

@end

@implementation Presenter

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.model = [Model new];
        self.model.first = @"first";
        self.model.second = @"second";
    }
    return self;
}

- (void)attachView:(id<MyProtocol>)attachView{
    self.view = attachView;
}

- (void)reloadView{
    //可以在这里做一些数据处理
    [self.view setFirst:self.model.first];
    [self.view setSecond:self.model.second];
}


@end
