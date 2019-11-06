//
//  CollectionViewController.m
//  UIDay7Exercice
//
//  Created by OPS on 11/6/19.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "CollectionViewController.h"
#import "MovieCollectionViewCell.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.nowShowingCollection registerNib:[UINib nibWithNibName:@"MovieCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"showingCell"];
    
    _movieArray = [[NSArray alloc] initWithObjects:
                   @{@"photo" : @"ic_venom",
                     @"name" : @"Venom",
                     },
                   @{@"photo" : @"ic_a_wrinkle_in_time",
                     @"name" : @"A Wrinkle in Time",
                     },
                   @{@"photo" : @"ic_black_panther",
                     @"name" : @"Black Panther",
                     },
                   @{@"photo" : @"ic_mulan",
                     @"name" : @"Mulan",
                     },
                   @{@"photo" : @"ic_the_greatest_showman",
                     @"name" : @"The Greatest Showman",
                     },
                   @{@"photo" : @"ic_fantastic_beast",
                     @"name" : @"Fantastic Beast",
                     },
                   @{@"photo" : @"ic_dora",
                     @"name" : @"Dora and the Lost city of Gold",
                     },
                   @{@"photo" : @"ic_antman",
                     @"name" : @"The Antman and the Wasp",
                     },
                   @{@"photo" : @"ic_beauty_and_the_beast",
                     @"name" : @"Beauty and the Beast",
                     },
                   @{@"photo" : @"ic_a_star_is_born",
                     @"name" : @"A Star is Born",
                     },
                   @{@"photo" : @"ic_star_wars",
                     @"name" : @"Star Wars",
                     },
                   @{@"photo" : @"ic_ready_player_one",
                     @"name" : @"Ready Player One",
                     },
                   @{@"photo" : @"ic_avengers",
                     @"name" : @"Avengers: End Game",
                     },nil];
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MovieCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"showingCell" forIndexPath:indexPath];
    NSDictionary *dict = [self.movieArray objectAtIndex:indexPath.item];
    cell.iconImageView.image = [UIImage imageNamed:dict[@"photo"]];
    cell.iconLabel.text = dict[@"name"];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.movieArray.count;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
