//
//  SliderViewController.m
//  wangyiScrollView
//
//  Created by macmini on 16/4/1.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "SliderViewController.h"


#define DAYSLIDER 1001
#define NIGHTSLIDER 1002
@interface SliderViewController ()

@property (weak, nonatomic) IBOutlet UISlider *daySlider;

@property (weak, nonatomic) IBOutlet UISlider *nightSlider;
@property (weak, nonatomic) IBOutlet UILabel *dayText;
@property (weak, nonatomic) IBOutlet UILabel *nightText;
@end

@implementation SliderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initSlider];
    
}

-(void)initSlider{
    [self.daySlider setThumbImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.daySlider addTarget:self action:@selector(daySliderChange:) forControlEvents:UIControlEventValueChanged];
    [self.nightSlider addTarget:self action:@selector(daySliderChange:) forControlEvents:UIControlEventValueChanged];
}


-(void)daySliderChange:(UISlider *)slider{
    
    if (slider.tag == DAYSLIDER) {
        self.nightSlider.value = self.daySlider.value;
    }else{
        self.daySlider.value = self.nightSlider.value;
    }
    self.dayText.text = [NSString stringWithFormat:@"%d",(int)self.daySlider.value];
     self.nightText.text = [NSString stringWithFormat:@"%d",(int)self.nightSlider.value];
    
}


@end
