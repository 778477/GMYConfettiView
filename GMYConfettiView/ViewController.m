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
@property (nonatomic, strong) UILabel *textLabel;
@end

@implementation ViewController
#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textLabel = [[UILabel alloc] initWithFrame:self.view.frame];
    self.textLabel.backgroundColor = [UIColor whiteColor];
    self.textLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:48.f];
    self.textLabel.numberOfLines = 2;
    self.textLabel.textAlignment = NSTextAlignmentCenter;
    self.textLabel.text = @"it's not raining confetti 🙁";
    [self.view addSubview:self.textLabel];
    
    self.confettiView = [[GMYConfettiView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.confettiView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Override
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if(self.isRainingConfetti){
        self.textLabel.text = @"it's not raining confetti 🙁";
        [self.confettiView stopConfetti];
    }
    else{
        self.textLabel.text = @"it's raining confetti 🙂";
        [self.confettiView starConfetti];
    }
    self.isRainingConfetti = !self.isRainingConfetti;
}
@end
