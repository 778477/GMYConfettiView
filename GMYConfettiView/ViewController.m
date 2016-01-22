//
//  ViewController.m
//  GMYConfettiView
//
//  Created by 郭妙友 on 16/1/22.
//  Copyright © 2016年 miaoyou.gmy. All rights reserved.
//

#import "ViewController.h"
#import "GMYConfettiView.h"
@interface ViewController ()
@property (nonatomic, assign) BOOL isRainingConfetti;
@property (nonatomic, strong) GMYConfettiView *confettiView;
@end

@implementation ViewController
#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.confettiView = [[GMYConfettiView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.confettiView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Override
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if(self.isRainingConfetti){
        [self.confettiView stopConfetti];
    }
    else{
        [self.confettiView starConfetti];
    }
    self.isRainingConfetti = !self.isRainingConfetti;
}
@end
