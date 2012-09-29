//
//  PageView.h
//  NewPageScroll
//
//  Created by Lucas Medeiros on 28/09/12.
//  Copyright (c) 2012 Codeminer42. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface PageView : UIView

@property (nonatomic, weak) IBOutlet UILabel *pageLabel;

-(id)initWithPage:(NSInteger) page;

-(void) setMarginLeftForParentView:(UIView *) view withMargin:(NSInteger) margin;


@end
