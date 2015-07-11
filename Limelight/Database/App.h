//
//  App.h
//  Moonlight
//
//  Created by Diego Waxemberg on 7/10/15.
//  Copyright © 2015 Limelight Stream. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Host;

NS_ASSUME_NONNULL_BEGIN

@interface App : NSManagedObject

@property BOOL isRunning;

@end

NS_ASSUME_NONNULL_END

#import "App+CoreDataProperties.h"
