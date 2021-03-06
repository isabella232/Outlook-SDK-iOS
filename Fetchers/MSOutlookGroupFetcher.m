/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/


#import "MSOutlookFetchers.h"
#import "core/core.h"

@implementation MSOutlookGroupFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSOutlookGroup class]]) {

		_operations = [[MSOutlookGroupOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSOutlookGroup *Group, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSOutlookGroupFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSOutlookGroupFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSOutlookGroupFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSOutlookGroupFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSOutlookGroup *Group, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSOutlookConversationThreadCollectionFetcher *)threads {

    return [[MSOutlookConversationThreadCollectionFetcher alloc] initWithUrl:@"Threads" parent:self asClass:[MSOutlookConversationThread class]];
}

- (MSOutlookConversationThreadFetcher *)threadsById:(NSString *)identifier {

    return [[[MSOutlookConversationThreadCollectionFetcher alloc] initWithUrl:@"Threads" parent:self asClass:[MSOutlookConversationThread class]] getById:identifier];

}

- (MSOutlookCalendarFetcher *)calendar {

	 return [[MSOutlookCalendarFetcher alloc] initWithUrl:@"Calendar" parent:self asClass:[MSOutlookCalendar class]];
}

- (MSOutlookEventCollectionFetcher *)calendarView {

    return [[MSOutlookEventCollectionFetcher alloc] initWithUrl:@"CalendarView" parent:self asClass:[MSOutlookEvent class]];
}

- (MSOutlookEventFetcher *)calendarViewById:(NSString *)identifier {

    return [[[MSOutlookEventCollectionFetcher alloc] initWithUrl:@"CalendarView" parent:self asClass:[MSOutlookEvent class]] getById:identifier];

}

- (MSOutlookEventCollectionFetcher *)events {

    return [[MSOutlookEventCollectionFetcher alloc] initWithUrl:@"Events" parent:self asClass:[MSOutlookEvent class]];
}

- (MSOutlookEventFetcher *)eventsById:(NSString *)identifier {

    return [[[MSOutlookEventCollectionFetcher alloc] initWithUrl:@"Events" parent:self asClass:[MSOutlookEvent class]] getById:identifier];

}

- (MSOutlookConversationCollectionFetcher *)conversations {

    return [[MSOutlookConversationCollectionFetcher alloc] initWithUrl:@"Conversations" parent:self asClass:[MSOutlookConversation class]];
}

- (MSOutlookConversationFetcher *)conversationsById:(NSString *)identifier {

    return [[[MSOutlookConversationCollectionFetcher alloc] initWithUrl:@"Conversations" parent:self asClass:[MSOutlookConversation class]] getById:identifier];

}

- (MSOutlookSubscriptionCollectionFetcher *)subscriptions {

    return [[MSOutlookSubscriptionCollectionFetcher alloc] initWithUrl:@"Subscriptions" parent:self asClass:[MSOutlookSubscription class]];
}

- (MSOutlookSubscriptionFetcher *)subscriptionsById:(NSString *)identifier {

    return [[[MSOutlookSubscriptionCollectionFetcher alloc] initWithUrl:@"Subscriptions" parent:self asClass:[MSOutlookSubscription class]] getById:identifier];

}

- (MSOutlookPhotoFetcher *)photo {

	 return [[MSOutlookPhotoFetcher alloc] initWithUrl:@"Photo" parent:self asClass:[MSOutlookPhoto class]];
}

- (MSOutlookDirectoryObjectCollectionFetcher *)acceptedSenders {

    return [[MSOutlookDirectoryObjectCollectionFetcher alloc] initWithUrl:@"AcceptedSenders" parent:self asClass:[MSOutlookDirectoryObject class]];
}

- (MSOutlookDirectoryObjectFetcher *)acceptedSendersById:(NSString *)identifier {

    return [[[MSOutlookDirectoryObjectCollectionFetcher alloc] initWithUrl:@"AcceptedSenders" parent:self asClass:[MSOutlookDirectoryObject class]] getById:identifier];

}

- (MSOutlookDirectoryObjectCollectionFetcher *)rejectedSenders {

    return [[MSOutlookDirectoryObjectCollectionFetcher alloc] initWithUrl:@"RejectedSenders" parent:self asClass:[MSOutlookDirectoryObject class]];
}

- (MSOutlookDirectoryObjectFetcher *)rejectedSendersById:(NSString *)identifier {

    return [[[MSOutlookDirectoryObjectCollectionFetcher alloc] initWithUrl:@"RejectedSenders" parent:self asClass:[MSOutlookDirectoryObject class]] getById:identifier];

}

@end
