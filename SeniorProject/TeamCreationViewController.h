//
//  TeamCreationViewController.h
//  SeniorProject
//
//  Created by Tanner Smith on 1/12/14.
//  Copyright (c) 2014 Tanner Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cPartyManager.h"


@interface TeamCreationViewController : UIViewController {
    
    cPartyManager *_partyMGR;
}

- (IBAction)createButtonPressed:(id)sender;

@end
