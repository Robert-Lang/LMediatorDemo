//
//  Target_Home.h
//  LMediator
//
//  Created by lang on 2021/9/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_Home : NSObject
-(UIViewController *)Action_HomeViewController:(NSDictionary *)params;
-(UIViewController *)Action_HomeViewController:(NSDictionary *)params completion:(void(^)(NSDictionary *))completion;

@end

NS_ASSUME_NONNULL_END
