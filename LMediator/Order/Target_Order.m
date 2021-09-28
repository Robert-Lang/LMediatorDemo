//
//  Target_Order.m
//  LMediator
//
//  Created by lang on 2021/7/1.
//

#import "Target_Order.h"
#import "OrderViewController.h"

@implementation Target_Order
-(UIViewController *)Action_OrderViewController:(NSDictionary *)params{
    OrderViewController * vc = OrderViewController.alloc.init;
    vc.title = params[@"key"];
    return vc;
}
@end
