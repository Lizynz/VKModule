#import "VKMenuModule.h"

@implementation VKMenuModule

- (instancetype)init {
    if ((self = [super init])) {
        _contentViewController = [[VKMenuModuleViewController alloc]init];
    }
    return self;
}

@end
