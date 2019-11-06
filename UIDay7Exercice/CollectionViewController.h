//
//  CollectionViewController.h
//  UIDay7Exercice
//
//  Created by OPS on 11/6/19.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CollectionViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *nowShowingCollection;
@property (copy, readwrite) NSArray *movieArray;

@end

NS_ASSUME_NONNULL_END
