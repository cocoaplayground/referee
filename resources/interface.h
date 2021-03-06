@import UIKit;

/** ATTENTION: Use this macro to access resources. */
#define {{ prefix }}Resources ([__{{ prefix }}Resources sharedInstance])

@interface __{{ prefix }}Storyboards : NSObject

{{# storyboards #}}
{{{ declaration }}}
{{/ storyboards }}

@end

@interface __{{ prefix }}TableViewCells : NSObject

{{# table_cells #}}
{{{ declaration }}}
{{/ table_cells }}

@end

@interface __{{ prefix }}CollectionViewCells : NSObject

{{# collection_cells #}}
{{{ declaration }}}
{{/ collection_cells }}

@end

@interface __{{ prefix }}ViewControllers : NSObject

{{# view_controllers #}}
{{{ declaration }}}
{{/ view_controllers }}

@end

@interface __{{ prefix }}Segues : NSObject

{{# segues #}}
{{{ declaration }}}
{{/ segues }}

@end

/** Global resource reference accessor class. */
@interface __{{ prefix }}Resources : NSObject

/** Singleton accessor. */
+ (instancetype)sharedInstance;

/** Resource accessors. */
@property (nonatomic, strong) __{{ prefix }}Storyboards *storyboards;
@property (nonatomic, strong) __{{ prefix }}TableViewCells *tableCells;
@property (nonatomic, strong) __{{ prefix }}CollectionViewCells *collectionCells;
@property (nonatomic, strong) __{{ prefix }}ViewControllers *viewControllers;
@property (nonatomic, strong) __{{ prefix }}Segues *segues;

@end
