//
//  Target_PetsViewController.m
//  DogShop
//
//  Created by Dan Jiang on 2021/5/13.
//

#import "Target_PetsViewController.h"
#import "DogsViewController.h"

@implementation Target_PetsViewController

- (UIViewController *)Action_Create:(NSDictionary *)params {
    DogsViewController *viewController = [[DogsViewController alloc] init];
    return viewController;
}

@end
