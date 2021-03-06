//
//  CanvasView.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "CanvasView.h"
#import "ZHFMarkRenderer.h"

@interface CanvasView()
@property (nonatomic, strong) id<Mark> mark;
@property (nonatomic, strong) NSMutableArray <id<Mark>> *historyPaths;
@property (nonatomic, strong) UIImage *tempImage;
@end

@implementation CanvasView
- (void)configMark:(id<Mark>)mark {
    _mark = mark;
}

- (void)configHistoryPaths:(NSMutableArray<id<Mark>> *)historyPaths {
    _historyPaths = historyPaths;
}

- (void)configImage:(UIImage *)image {
    _tempImage = image;
    [self setNeedsDisplay];
//    self.layer.contents = (__bridge id _Nullable)(image.CGImage);
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    if (_tempImage) {
        [_tempImage drawInRect: rect];//CGRectMake(0, 0, _tempImage.size.width, _tempImage.size.height)];
    }
    
    CGContextRef context = UIGraphicsGetCurrentContext();
//    for (id mark in self.historyPaths) {
//        [mark drawWithContext:context];
//    }
//
//    [_mark drawWithContext:context];
    
    ZHFMarkRenderer *renderer = [[ZHFMarkRenderer alloc] initWithCGContext:context];
    [_mark acceptMarkVisitor:renderer];
    
//    CGContextSetLineWidth(context, [GlobalConfig sharedGlobalConfig].lineWidth);
//    CGContextSetStrokeColorWithColor(context, [UIColor colorWithHexString:[GlobalConfig sharedGlobalConfig].lineColorHex alpha:1].CGColor);
//    CGContextStrokePath(context)
}


@end
