//
//  Lux_LightViewController.m
//  Lux Light
//
//  Created by Miguel Bote on 21/07/11.
//  Copyright 2011 Home. All rights reserved.
//

#import "Lux_LightViewController.h"

@implementation Lux_LightViewController
@synthesize foto;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.view setMultipleTouchEnabled:YES];
    texto = [[UILabel alloc] initWithFrame:CGRectMake(0, 250, 320, 100)];
    texto.text = @"Soy Dios!!!!";
    [self.view addSubview:texto];
    texto.hidden = YES;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    if([touches count]==1){
        foto.image = [UIImage imageNamed:@"libretas.png"];
        texto.hidden = NO;
    }
    if([touches count]==2){
        foto.image = [UIImage imageNamed:@"inicio.png"];
        texto.hidden = YES;
    }
}

@end
