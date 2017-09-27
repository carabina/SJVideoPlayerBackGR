//
//  ViewController.m
//  SJBackGR
//
//  Created by BlueDancer on 2017/9/26.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *pushBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:1.0 * (arc4random() % 256 / 255.0)
                                                green:1.0 * (arc4random() % 256 / 255.0)
                                                 blue:1.0 * (arc4random() % 256 / 255.0)
                                                alpha:1];
    self.pushBtn = [UIButton new];
    [_pushBtn setTitle:@"Push" forState:UIControlStateNormal];
    [_pushBtn addTarget:self action:@selector(pushNextVC:) forControlEvents:UIControlEventTouchUpInside];
    [_pushBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view addSubview:_pushBtn];
    _pushBtn.bounds = CGRectMake(0, 0, 100, 50);
    _pushBtn.center = self.view.center;
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pushNextVC:(id)sender {
    NextViewController * vc = [NextViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end