//
//  InterfaceController.m
//  TestPicker WatchKit Extension
//
//  Created by 洪锐育 on 15/7/30.
//  Copyright © 2015年 洪锐堉. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfacePicker *myPicker;


@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    NSMutableArray* items=[NSMutableArray array];
    for(int i=0;i<15;++i)
    {
        WKPickerItem* item=[[WKPickerItem alloc] init];
        item.title=@"1";
        [items addObject:item];
    }
    [self.myPicker setItems:items];
    
}

- (IBAction)pickerAction:(NSInteger)value {
    
    NSLog(@"%ld",value);
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



