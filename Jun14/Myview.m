//
//  Myview.m
//  Jun14
//
//  Created by Lino Guglielmo on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Myview.h"

@implementation Myview

NSString *string;
float x;
float y;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
	//	self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}

- (void) setcolor :(UIColor *)mycolor{
	self.backgroundColor = mycolor;
}
	- (void) setstring: (NSString *)mystring{
		string = mystring;
	}

-(void) setpoint: (float) x1 :(float) y1;{
	x = x1;
	y = y1;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	UIFont *font = [UIFont systemFontOfSize:32.0] ;
	//NSString *string = @"Hello, World!";
//	NSURL *url = [[NSURL alloc] initWithString; 
//				  @"http://finance.yahoo.com/d/quotes.csv?s=GE&fsl1t1"];
	

	CGPoint point = CGPointMake (x,y);
	[string drawAtPoint: point withFont: font];
}


@end
