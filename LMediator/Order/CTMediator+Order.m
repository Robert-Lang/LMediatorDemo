//
//  CTMediator+Order.m
//  LMediator
//
//  Created by lang on 2021/6/30.
//

#import "CTMediator+Order.h"
NSString * const kCTMediatorTarget_Order = @"Order";
NSString * const kCTMediatorActionNativeFetch_OrderViewController = @"OrderViewController";

@implementation CTMediator (Order)
-(UIViewController *)CTMediator_VCForOrder{
    UIViewController * vc = [self performTarget:kCTMediatorTarget_Order
                                         action:kCTMediatorActionNativeFetch_OrderViewController
                                         params:@{@"key":kCTMediatorTarget_Order}
                              shouldCacheTarget:NO];
    
    if ([vc isKindOfClass:UIViewController.class]) {
        return vc;
    }else
    {
        return UIViewController.alloc.init;
    }
}

@end
