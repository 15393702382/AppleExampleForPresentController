#import "AAPLCustomPresentationFirstViewController.h"
#import "AAPLCustomPresentationController.h"
#import "AAPLCustomPresentationSecondViewController.h"

@implementation AAPLCustomPresentationFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(0, 200, 100, 50);
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)buttonAction {
//    UIViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    AAPLCustomPresentationSecondViewController *secondVC = [[AAPLCustomPresentationSecondViewController alloc] init];
    AAPLCustomPresentationController *presentationController = [[AAPLCustomPresentationController alloc] initWithPresentedViewController:secondVC presentingViewController:self];
    secondVC.transitioningDelegate = presentationController;
    [self presentViewController:secondVC animated:YES completion:NULL];
}

@end
