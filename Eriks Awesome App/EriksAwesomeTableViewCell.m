//
//  EriksAwesomeTableViewCell.m
//  Eriks Awesome App
//
//  Created by Buttram, Erik on 11/2/15.
//  Copyright © 2015 Buttram, Erik. All rights reserved.
//

#import <SDWebImage/UIImageView+WebCache.h>
#import "EriksAwesomeTableViewCell.h"

@implementation EriksAwesomeTableViewCell

- (void)layoutWithImage:(UIImage *)image {
    [self.imageView setImage:image];
}

- (void)layoutWithURL:(NSURL *)imageUrl {
    [self.imageView sd_setImageWithURL:imageUrl placeholderImage:nil options:SDWebImageRefreshCached completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) { }];
}

@end
