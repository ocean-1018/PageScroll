//
//  UIScrollView+Paging.h
//  NewPageScroll
//
//  Created by Lucas Medeiros on 28/09/12.
//  Copyright (c) 2012 Codeminer42. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (Paging)

- (void) contentSizeForNumberOfPages:(NSInteger) numberOfPages;
- (NSInteger) currentPage;
- (void) goToPage:(NSInteger)page;

@end
