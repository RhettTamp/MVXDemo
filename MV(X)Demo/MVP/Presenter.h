//
//  Presenter.h
//  MVX
//
//  Created by 谭培 on 2017/12/17.
//  Copyright © 2017年 RhettTamp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyProtocol.h"

@interface Presenter : NSObject

- (void)attachView:(id <MyProtocol>)attachView;
- (void)reloadView;

@end
