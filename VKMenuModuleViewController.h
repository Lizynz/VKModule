@interface CCUIButtonModuleViewController : UIViewController
-(void)setGlyphImage:(UIImage *)arg1;
-(void)buttonTapped:(id)arg1 forEvent:(id)arg2;
@end

@interface CCUIMenuModuleViewController : CCUIButtonModuleViewController
-(void)setTitle:(NSString *)arg1;
-(void)viewDidLoad;
-(void)addActionWithTitle:(id)arg1 glyph:(id)arg2 handler:(/*^block*/id)arg3;
@end

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@interface VKMenuModuleViewController : CCUIMenuModuleViewController

@end
