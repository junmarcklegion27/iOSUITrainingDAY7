//
//  ViewController.h
//  UIDay7Exercice
//
//  Created by OPS on 11/6/19.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *topRatedCollection;
@property (copy, readwrite) NSArray *movieArray;

@end

