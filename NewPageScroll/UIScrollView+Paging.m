//
//  UIScrollView+Paging.m
//  NewPageScroll
//
//  Created by Lucas Medeiros on 28/09/12.
//  Copyright (c) 2012 Codeminer42. All rights reserved.
//

#import "UIScrollView+Paging.h"

@implementation UIScrollView (Paging)

- (void) contentSizeForNumberOfPages:(NSInteger)numberOfPages
{
    self.contentSize = CGSizeMake(self.frame.size.width * numberOfPages, self.frame.size.height);
	self.contentOffset = CGPointMake(0, 0);
}

- (NSInteger) currentPage
{
    CGFloat pageWidth = self.frame.size.width;
    float fractionalPage = self.contentOffset.x / pageWidth;
    return lround(fractionalPage);
}

- (void) goToPage:(NSInteger)page
{
    CGRect frame = self.frame;
    frame.origin.x = frame.size.width * page;
    frame.origin.y = 0;
    [self scrollRectToVisible:frame animated:YES];
}

@end
