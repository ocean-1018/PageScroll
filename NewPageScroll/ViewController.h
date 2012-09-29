//
//  ViewController.h
//  NewPageScroll
//
//  Created by Lucas Medeiros on 28/09/12.
//  Copyright (c) 2012 Codeminer42. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end
