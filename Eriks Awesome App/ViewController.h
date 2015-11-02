//
//  ViewController.h
//  Eriks Awesome App
//
//  Created by Buttram, Erik on 11/2/15.
//  Copyright © 2015 Buttram, Erik. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Here is the docs for the Imgr gallery api
 *
 * https://api.imgur.com/3/gallery/{section}/{sort}/{page}?showViral=bool
 * Key 	Required 	Value
 * section 	optional 	hot | top | user - defaults to hot
 * sort 	optional 	viral | top | time | rising (only available with user section) - defaults to viral
 * page 	optional 	integer - the data paging number
 * window 	optional 	Change the date range of the request if the section is "top", day | week | month | year | all, defaults to day
 * showViral 	optional 	true | false - Show or hide viral images from the 'user' section. Defaults to true
 */

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

#define BASE_API = "https://api.imgur.com/3/"

@property (nonatomic, retain) UITableView *imageTable;

@end

