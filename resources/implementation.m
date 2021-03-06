#import "{{ prefix }}Resources.h"

/** UIStoryboard accessors. */
@implementation __{{ prefix }}Storyboards

{{# storyboards #}}
{{{ implementation }}}
{{/ storyboards }}

@end

/** UITableViewCell identifier accessors. */
@implementation __{{ prefix }}TableViewCells

{{# table_cells #}}
{{{ implementation }}}
{{/ table_cells }}

@end

/** UICollectionViewCell identifier accessors. */
@implementation __{{ prefix }}CollectionViewCells

{{# collection_cells #}}
{{{ implementation }}}
{{/ collection_cells }}

@end

/** UIViewController accessors. */
@implementation __{{ prefix }}ViewControllers

{{# view_controllers #}}
{{{ implementation }}}
{{/ view_controllers }}

@end

/** Segue identifier accessors. */
@implementation __{{ prefix }}Segues

{{# segues #}}
{{{ implementation }}}
{{/ segues }}

@end

/** Main resource reference class. */
@implementation __{{ prefix }}Resources

- (instancetype)init
{
    self = [super init];

    if (self) {
        self.storyboards = [[__{{ prefix }}Storyboards alloc] init];
        self.tableCells = [[__{{ prefix }}TableViewCells alloc] init];
        self.collectionCells = [[__{{ prefix }}CollectionViewCells alloc] init];
        self.viewControllers = [[__{{ prefix }}ViewControllers alloc] init];
        self.segues = [[__{{ prefix }}Segues alloc] init];
    }

    return self;
}

+ (instancetype)sharedInstance
{
    static id _self = nil;
    static dispatch_once_t once_Token;
    dispatch_once(&once_Token, ^{
      _self = [[super alloc] init];
    });
    return _self;
}

@end
