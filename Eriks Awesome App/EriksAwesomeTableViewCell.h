//
//  EriksAwesomeTableViewCell.h
//  Eriks Awesome App
//
//  Created by Buttram, Erik on 11/2/15.
//  Copyright © 2015 Buttram, Erik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EriksAwesomeTableViewCell : UITableViewCell

@property (atomic, retain) IBOutlet UIImageView *imageView;

- (void)layoutWithImage:(UIImage *)image;

@end
