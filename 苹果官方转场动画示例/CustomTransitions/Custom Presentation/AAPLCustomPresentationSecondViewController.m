#import "AAPLCustomPresentationSecondViewController.h"

@interface AAPLCustomPresentationSecondViewController ()
@end


@implementation AAPLCustomPresentationSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    [self updatePreferredContentSizeWithTraitCollection:self.traitCollection];
    
}


- (void)willTransitionToTraitCollection:(UITraitCollection *)newCollection withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [super willTransitionToTraitCollection:newCollection withTransitionCoordinator:coordinator];
    
    [self updatePreferredContentSizeWithTraitCollection:newCollection];
}


- (void)updatePreferredContentSizeWithTraitCollection:(UITraitCollection *)traitCollection
{
    self.preferredContentSize = CGSizeMake(self.view.bounds.size.width, traitCollection.verticalSizeClass == UIUserInterfaceSizeClassCompact ? 270 : 420);
    
//    self.slider.maximumValue = self.preferredContentSize.height;
//    self.slider.minimumValue = 220.f;
//    self.slider.value = self.slider.maximumValue;
}


#pragma mark -
#pragma mark Unwind Actions

- (IBAction)unwindToCustomPresentationSecondViewController:(UIStoryboardSegue *)sender
{ }

@end
