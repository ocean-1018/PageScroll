//
//  ViewController.m
//  NewPageScroll
//
//  Created by Lucas Medeiros on 28/09/12.
//  Copyright (c) 2012 Codeminer42. All rights reserved.
//

#import "ViewController.h"
#import "PageView.h"
#import "UIScrollView+Paging.h"

#define NUMBER_OF_PAGES 3

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self customize];
    [self loadPageViews];
    
}

- (void) customize
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"light-hash-background"]];
    self.scrollView.layer.cornerRadius = 4;
    [self.scrollView contentSizeForNumberOfPages:NUMBER_OF_PAGES];
}

- (void) loadPageViews
{
    for(int i = 0; i < NUMBER_OF_PAGES; i++){
        PageView *pageView = [[PageView alloc] initWithPage:i];
        [pageView setMarginLeftForParentView:self.scrollView withMargin:i];
        [self.scrollView addSubview:pageView];
        pageView.pageLabel.text = [NSString stringWithFormat:@"You are in page %d", i];
    }
}

-(void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger currentPage = [scrollView currentPage];
    if(currentPage != self.pageControl.currentPage){
        self.pageControl.currentPage = currentPage;
    }
}

- (IBAction)didPageControlChanged:(UIPageControl *)sender {
    [self.scrollView goToPage:sender.currentPage];
}


@end
