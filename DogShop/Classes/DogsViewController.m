//
//  DogsViewController.m
//  DogShop
//
//  Created by Dan Jiang on 2021/5/13.
//

#import "DogsViewController.h"

@interface DogsViewController ()

@end

@implementation DogsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIImage *image = [self imageWithName:@"dog.jpeg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    CGRect imageViewFrame = imageView.frame;
    imageViewFrame.origin.x = (self.view.frame.size.width - image.size.width) / 2.0;
    imageViewFrame.origin.y = (self.view.frame.size.height - image.size.height) / 2.0;
    imageView.frame = imageViewFrame;
    [self.view addSubview:imageView];
}

- (UIImage *)imageWithName:(NSString *)name {
    NSBundle *bundle = [NSBundle bundleForClass:DogsViewController.class];
    NSURL *url = [bundle URLForResource:@"DogShop" withExtension:@"bundle"];
    NSBundle *imageBundle = [NSBundle bundleWithURL:url];
    return [UIImage imageNamed:name inBundle:imageBundle compatibleWithTraitCollection:nil];
}

@end
