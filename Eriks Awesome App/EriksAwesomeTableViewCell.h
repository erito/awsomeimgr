//
//  EriksAwesomeTableViewCell.h
//  Eriks Awesome App
//
//  Created by Buttram, Erik on 11/2/15.
//  Copyright © 2015 Buttram, Erik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EriksAwesomeTableViewCell : UITableViewCell

@property (nonatomic, retain) IBOutlet UIImageView *imageView;

- (void)layoutWithImage:(UIImage *)image;
- (void)layoutWithURL:(NSURL *)imageUrl;

@end
