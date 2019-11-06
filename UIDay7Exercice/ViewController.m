//
//  ViewController.m
//  UIDay7Exercice
//
//  Created by OPS on 11/6/19.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "ViewController.h"
#import "MovieCollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.topRatedCollection registerNib:[UINib nibWithNibName:@"MovieCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"showingCell"];
    
    _movieArray = [[NSArray alloc] initWithObjects:
                   @{@"photo" : @"banner_pacific_rim",
                     @"name" : @"Pacific Rim",
                     },
                   @{@"photo" : @"banner_ghost_in_the_shell",
                     @"name" : @"Ghost in the Shell",
                     },
                   @{@"photo" : @"banner_aquaman",
                     @"name" : @"Aqua Man",
                     },
                   @{@"photo" : @"banner_avengers",
                     @"name" : @"Avengers",
                     }, nil];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MovieCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"showingCell" forIndexPath:indexPath];
    NSDictionary *dict = [self.movieArray objectAtIndex:indexPath.item];
    cell.iconImageView.image = [UIImage imageNamed:dict[@"photo"]];
    cell.iconImageView.contentMode = UIViewContentModeScaleToFill;
    cell.iconLabel.text = dict[@"name"];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.movieArray.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGRect screenBound  = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    
    CGFloat computedWidth = screenSize.width;
    return CGSizeMake(computedWidth, 180.00);
}

@end
