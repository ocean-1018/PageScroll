//
//  PageView.m
//  NewPageScroll
//
//  Created by Lucas Medeiros on 28/09/12.
//  Copyright (c) 2012 Codeminer42. All rights reserved.
//

#import "PageView.h"

@interface PageView()

@property (nonatomic) NSInteger page;

@end


@implementation PageView

- (id)initWithPage:(NSInteger)page
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"PageView" owner:self options:nil] objectAtIndex:0];
    if(self){
        _page = page;
        [self customize];
    }
    return self;
}

- (void) customize
{
    self.layer.cornerRadius = 4;
    switch (self.page) {
        case 0:
            self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"modal-bg"]];
            break;
        case 1:
            self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"app-bg-pattern"]];
            break;
        default:
            self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_texture"]];
            break;
    }
}

-(void) setMarginLeftForParentView:(UIView *) view withMargin:(NSInteger) margin;
{
    CGRect pageFrame = view.frame;
    pageFrame.origin.y = 0;
    pageFrame.origin.x = view.frame.size.width * margin;
    self.frame = pageFrame;
}

@end
