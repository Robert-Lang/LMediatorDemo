//
//  Target_Home.m
//  LMediator
//
//  Created by lang on 2021/9/28.
//

#import "Target_Home.h"
#import "HomeViewController.h"
typedef void (^ResultBlock)(NSDictionary *);

@implementation Target_Home
-(UIViewController *)Action_HomeViewController:(NSDictionary *)params {
    
    HomeViewController * vc = HomeViewController.alloc.init;
    vc.title = params[@"key"];
    return vc;
}

-(UIViewController *)Action_HomeViewController:(NSDictionary *)params completion:(nonnull void (^)(NSDictionary * _Nonnull))completion{
    ResultBlock resultBlock = params[@"resultBlock"];
      if (resultBlock) {
          resultBlock(@{@"status":@"success"});
      }
      
    HomeViewController * vc = HomeViewController.alloc.init;
//      vc.parameter = params;
      return vc;
}
@end
