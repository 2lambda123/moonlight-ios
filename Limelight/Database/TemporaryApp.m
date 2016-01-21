//
//  TemporaryApp.m
//  Moonlight
//
//  Created by Cameron Gutman on 9/30/15.
//  Copyright © 2015 Moonlight Stream. All rights reserved.
//

#import "TemporaryApp.h"
#import "App.h"

@implementation TemporaryApp

- (id) initFromApp:(App*)app withTempHost:(TemporaryHost*)tempHost {
    self = [self init];
    
    self.id = app.id;
    self.image = app.image;
    self.name = app.name;
    self.host = tempHost;
    
    return self;
}

- (void) propagateChangesToParent:(App*)parent withHost:(Host*)host {
    parent.id = self.id;
    parent.image = self.image;
    parent.name = self.name;
    parent.host = host;
}

- (NSComparisonResult)compareName:(TemporaryApp *)other {
    return [self.name caseInsensitiveCompare:other.name];
}

@end
