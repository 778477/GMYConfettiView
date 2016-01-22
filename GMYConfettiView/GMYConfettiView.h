//
//  GMYConfettiView.h
//  GMYConfettiView
//
//  Created by 郭妙友 on 16/1/22.
//  Copyright © 2016年 miaoyou.gmy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, SpriteType) {
    Confetti = 0,
    Star,
    Diamond,
    Triangle
};

@interface GMYConfettiView : UIView
@property (nonatomic, assign) SpriteType spriteType;
@property (nonatomic, assign) CGFloat intensity;


- (void)starConfetti;
- (void)stopConfetti;
@end
