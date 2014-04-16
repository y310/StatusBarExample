//
//  SBEViewController.m
//  StatusBarExample
//
//  Created by mito on 2014/04/12.
//  Copyright (c) 2014年 mito. All rights reserved.
//

#import "SBEViewController.h"

@interface SBEViewController ()
@property (weak) IBOutlet UILabel *frameLabel;
@end

@implementation SBEViewController

- (UIRectEdge)edgesForExtendedLayout
{
    return UIRectEdgeNone;
}

- (BOOL)extendedLayoutIncludesOpaqueBars
{
    return NO;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    UIView *rootView = [[UIApplication sharedApplication].delegate window].rootViewController.view;
    NSLog(@"%@", [rootView performSelector:@selector(recursiveDescription)]);
}

- (void)viewDidLayoutSubviews
{
    CGRect rect = self.view5.frame;
    rect.origin.y = CGRectGetHeight(self.view.frame) - CGRectGetHeight(rect);
    self.view5.frame = rect;
    self.frameLabel.text = NSStringFromCGRect(self.view.frame);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)close:(UIStoryboardSegue *)segue
{

}

@end
