#import "VKMenuModuleViewController.h"

@implementation VKMenuModuleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setGlyphImage:[UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[VKMenuModuleViewController class]] compatibleWithTraitCollection:nil]];
    
    [self setTitle:@"vk"];

    /*[self addActionWithTitle:@"1"  glyph:nil handler:^{ return YES; }];
    [self addActionWithTitle:@"2" glyph:nil handler:^{ return YES; }];
    [self addActionWithTitle:@"3"  glyph:nil handler:^{ return YES; }];
    [self addActionWithTitle:@"4"  glyph:nil handler:^{ return YES; }];
    [self addActionWithTitle:@"5"  glyph:nil handler:^{ return YES; }];*/
}

- (void)buttonTapped:(CCUIButtonModuleViewController *)button forEvent:(UIEvent *)event {
    [super buttonTapped:button forEvent:event];
    [self vk];
}

- (void)vk {
    NSString *bundleID = @"com.vk.vkclient";
    [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:FALSE];
}

@end
