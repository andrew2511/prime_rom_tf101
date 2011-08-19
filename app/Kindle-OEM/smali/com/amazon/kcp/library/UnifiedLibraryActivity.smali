.class public Lcom/amazon/kcp/library/UnifiedLibraryActivity;
.super Lcom/amazon/kcp/library/LibraryActivity;
.source "UnifiedLibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/UnifiedLibraryActivity$3;,
        Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;,
        Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;,
        Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;,
        Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;,
        Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/LibraryActivity",
        "<",
        "Lcom/amazon/kcp/library/models/IListableBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final UI_LIBRARY_FILTER_LIST:[Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;


# instance fields
.field private final catalogChangeNotifier:Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;

.field private catalogViews:Lcom/amazon/kcp/library/models/CatalogViewCache;

.field private currentCatalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

.field private filterCount:Landroid/widget/TextView;

.field private filterLabel:Landroid/widget/TextView;

.field private itemAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private itemDeletedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

.field private libraryFilterListAdapter:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;

.field private listInvalidatedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private overlayMenuContainer:Landroid/widget/LinearLayout;

.field private stateMenuList:Landroid/widget/ListView;

.field private tabletStateView:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    const/4 v1, 0x0

    sget-object v2, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->LOCAL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ARCHIVED_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->PERIODICALS_ONLY_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->UI_LIBRARY_FILTER_LIST:[Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryActivity;-><init>()V

    .line 77
    new-instance v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;-><init>(Lcom/amazon/kcp/library/UnifiedLibraryActivity;Lcom/amazon/kcp/library/UnifiedLibraryActivity$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->catalogChangeNotifier:Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;

    .line 82
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->itemAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 83
    new-instance v0, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->itemDeletedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 84
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->listInvalidatedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 759
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->showOverlayMenu()V

    return-void
.end method

.method static synthetic access$200()[Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->UI_LIBRARY_FILTER_LIST:[Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/UnifiedLibraryActivity;Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->switchLibraryFilter(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getLibraryFilterItemClickListener(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->libraryFilterListAdapter:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Lcom/amazon/foundation/internal/IntEventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->itemAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Lcom/amazon/foundation/internal/EventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->listInvalidatedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method private catalogViewForFilter(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)Lcom/amazon/kcp/library/models/ISortedCatalogView;
    .locals 2
    .parameter "filter"

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getSortTypeForLibraryFilter(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)I

    move-result v0

    .line 322
    .local v0, sortType:I
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->catalogViewForFilterAndSort(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;I)Lcom/amazon/kcp/library/models/ISortedCatalogView;

    move-result-object v1

    return-object v1
.end method

.method private catalogViewForFilterAndSort(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;I)Lcom/amazon/kcp/library/models/ISortedCatalogView;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 327
    packed-switch p2, :pswitch_data_0

    .line 341
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sort-type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :pswitch_0
    sget-object v0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->PERIODICALS_ONLY_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->PUBLICATION:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    .line 344
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->catalogViews:Lcom/amazon/kcp/library/models/CatalogViewCache;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->catalogFilterType:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/library/models/CatalogViewCache;->getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/models/ISortedCatalogView;

    return-object p0

    .line 331
    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->RECENT:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    goto :goto_0

    .line 335
    :pswitch_1
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    goto :goto_0

    .line 338
    :pswitch_2
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getLibraryFilterItemClickListener(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "parent"

    .prologue
    .line 524
    new-instance v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$2;-><init>(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)V

    return-object v0
.end method

.method private hideOverlayMenu()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->overlayMenuContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->tabletStateView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->overlayMenuContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->tabletStateView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 291
    :cond_0
    return-void
.end method

.method private initializeLibraryFilterList()V
    .locals 9

    .prologue
    .line 219
    new-instance v6, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;-><init>(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)V

    iput-object v6, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->libraryFilterListAdapter:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;

    .line 220
    sget-object v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->UI_LIBRARY_FILTER_LIST:[Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    .local v0, arr$:[Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 224
    .local v5, libFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    iget-object v6, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->catalogViews:Lcom/amazon/kcp/library/models/CatalogViewCache;

    iget-object v7, v5, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->catalogFilterType:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v8, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->NONE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-virtual {v6, v7, v8}, Lcom/amazon/kcp/library/models/CatalogViewCache;->getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;)Lcom/amazon/kcp/library/models/ICatalogView;

    move-result-object v1

    .line 225
    .local v1, catalogView:Lcom/amazon/kcp/library/models/ICatalogView;
    new-instance v3, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->libraryFilterListAdapter:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;

    invoke-direct {v3, v5, v1, v6, v7}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;-><init>(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;Lcom/amazon/kcp/library/models/ICatalogView;Landroid/content/res/Resources;Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;)V

    .line 227
    .local v3, item:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;
    iget-object v6, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->libraryFilterListAdapter:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;

    invoke-virtual {v6, v3}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;->add(Ljava/lang/Object;)V

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v1           #catalogView:Lcom/amazon/kcp/library/models/ICatalogView;
    .end local v3           #item:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListItem;
    .end local v5           #libFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    :cond_0
    return-void
.end method

.method private initializeLibraryFilterUI()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->tabletStateView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->updateFilterLabelAndCount()V

    .line 240
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->tabletStateView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/amazon/kcp/library/UnifiedLibraryActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$1;-><init>(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_0
    return-void
.end method

.method private launchToReader()Z
    .locals 2

    .prologue
    .line 151
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;

    invoke-direct {v0}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;-><init>()V

    .line 152
    .local v0, openParams:Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;
    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->BLOCKING:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->setOpenReaderMode(Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;)V

    .line 153
    invoke-static {p0, v0}, Lcom/amazon/kcp/library/BookOpenHelper;->openLastReadBook(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)V
    :try_end_0
    .catch Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/4 v1, 0x1

    .end local v0           #openParams:Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;
    :goto_0
    return v1

    .line 157
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showOverlayMenu()V
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->overlayMenuContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->overlayMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    .local v0, layout:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->tabletStateView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 273
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->tabletStateView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 274
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->overlayMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->tabletStateView:Landroid/widget/LinearLayout;

    const v2, 0x7f020098

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 277
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->stateMenuList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->libraryFilterListAdapter:Lcom/amazon/kcp/library/UnifiedLibraryActivity$LibraryFilterListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->stateMenuList:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getLibraryFilterItemClickListener(Lcom/amazon/kcp/library/UnifiedLibraryActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 279
    return-void
.end method

.method private switchCurrentCatalogView(Lcom/amazon/kcp/library/models/ISortedCatalogView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentCatalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentCatalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->catalogChangeNotifier:Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/ISortedCatalogView;->unregisterListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 514
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentCatalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    .line 515
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentCatalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->catalogChangeNotifier:Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/ISortedCatalogView;->registerListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 517
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->books:Ljava/util/List;

    check-cast v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;

    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentCatalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->changeSourceCatalogView(Lcom/amazon/kcp/library/models/ISortedCatalogView;)V

    .line 518
    return-void
.end method

.method private switchLibraryFilter(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)V
    .locals 2
    .parameter "libraryFilter"

    .prologue
    .line 467
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    if-ne p1, v1, :cond_0

    .line 485
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->catalogViewForFilter(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)Lcom/amazon/kcp/library/models/ISortedCatalogView;

    move-result-object v0

    .line 473
    .local v0, sortedView:Lcom/amazon/kcp/library/models/ISortedCatalogView;
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->switchCurrentCatalogView(Lcom/amazon/kcp/library/models/ISortedCatalogView;)V

    .line 474
    iput-object p1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    .line 475
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getSortTypeForLibraryFilter(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentSortType:I

    .line 478
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->overlayMenuContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->overlayMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    invoke-direct {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->hideOverlayMenu()V

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->updateBookListUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method protected changeCurrentSortType(I)V
    .locals 2
    .parameter "sortType"

    .prologue
    .line 489
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity;->changeCurrentSortType(I)V

    .line 491
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->catalogViewForFilterAndSort(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;I)Lcom/amazon/kcp/library/models/ISortedCatalogView;

    move-result-object v0

    .line 492
    .local v0, sortedView:Lcom/amazon/kcp/library/models/ISortedCatalogView;
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->switchCurrentCatalogView(Lcom/amazon/kcp/library/models/ISortedCatalogView;)V

    .line 496
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->overlayMenuContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->overlayMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 306
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->overlayMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->hideOverlayMenu()V

    .line 311
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected eventsOccurInRapidSuccession(Lcom/amazon/foundation/IIntEventProvider;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ARCHIVED_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->itemAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBook(I)Lcom/amazon/kcp/library/models/IListableBook;
    .locals 1
    .parameter "index"

    .prologue
    .line 372
    iget-object p0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->books:Ljava/util/List;

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->get(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    return-object v0
.end method

.method protected getInitialBooksList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/library/models/IListableBook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;

    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentCatalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;-><init>(Lcom/amazon/kcp/library/models/ISortedCatalogView;)V

    return-object v0
.end method

.method protected getInitialLibraryFilter()Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    return-object v0
.end method

.method protected getItemAddedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->itemAddedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method protected getItemDeletedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->itemDeletedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method protected getListInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->listInvalidatedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected makeBookGridCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "bookItem"
    .parameter "recyclableView"

    .prologue
    .line 399
    sget-object v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$3;->$SwitchMap$com$amazon$kcp$library$LibraryActivity$LibraryFilter:[I

    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 413
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled libraryFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getHomeBookCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 409
    .end local p2
    :goto_0
    return-object v0

    .line 407
    .restart local p2
    :pswitch_1
    check-cast p2, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .end local p2
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getAIBookCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 409
    .restart local p2
    :pswitch_2
    instance-of v0, p2, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .end local p2
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getAIBookCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .restart local p2
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getHomeBookCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected makeBookListRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "bookItem"
    .parameter "recyclableView"

    .prologue
    .line 378
    sget-object v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$3;->$SwitchMap$com$amazon$kcp$library$LibraryActivity$LibraryFilter:[I

    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 392
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled libraryFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getHomeBookRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 388
    .end local p2
    :goto_0
    return-object v0

    .line 386
    .restart local p2
    :pswitch_1
    check-cast p2, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .end local p2
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getAIBookRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 388
    .restart local p2
    :pswitch_2
    instance-of v0, p2, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .end local p2
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getAIBookRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .restart local p2
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getHomeBookRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onBookItemClick(Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)V
    .locals 6
    .parameter "bookItem"
    .parameter "bookItemView"

    .prologue
    .line 420
    instance-of v2, p1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v2, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getReaderController()Lcom/amazon/kcp/reader/ReaderController;

    move-result-object v2

    check-cast p1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .end local p1
    sget-object v3, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    sget-object v4, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    const/4 v5, 0x1

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/amazon/kcp/reader/ReaderController;->openReader(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;Z)V

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 424
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v2, :cond_0

    .line 426
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-object v1, v0

    .line 428
    .local v1, downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 431
    :cond_2
    invoke-static {p0, v1}, Lcom/amazon/kcp/library/BookOpenHelper;->getIntentToOpenTransientActivity(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 436
    :cond_3
    sget-object v2, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    invoke-static {p0, v1, v2}, Lcom/amazon/kcp/library/BookOpenHelper;->downloadAndOpen(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f0c0087

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->filterLabel:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0c0088

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->filterCount:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->tabletStateView:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->tabletStateView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->tabletStateView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 120
    :cond_0
    const v0, 0x7f0c0089

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->overlayMenuContainer:Landroid/widget/LinearLayout;

    .line 121
    const v0, 0x7f0c008a

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->stateMenuList:Landroid/widget/ListView;

    .line 123
    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getCatalogViewCache()Lcom/amazon/kcp/library/models/CatalogViewCache;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->catalogViews:Lcom/amazon/kcp/library/models/CatalogViewCache;

    .line 125
    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getLibraryFilter()Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->catalogViewForFilter(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)Lcom/amazon/kcp/library/models/ISortedCatalogView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentCatalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getSortTypeForLibraryFilter(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentSortType:I

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->books:Ljava/util/List;

    check-cast v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;

    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentCatalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->changeSourceCatalogView(Lcom/amazon/kcp/library/models/ISortedCatalogView;)V

    .line 130
    invoke-direct {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->initializeLibraryFilterList()V

    .line 131
    invoke-direct {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->initializeLibraryFilterUI()V

    .line 136
    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getLaunchTo()Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->READER:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    if-ne v0, v1, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->launchToReader()Z

    .line 140
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->HOME:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->setLaunchTo(Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;)V

    .line 167
    invoke-super {p0}, Lcom/amazon/kcp/library/LibraryActivity;->onResume()V

    .line 168
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Lcom/amazon/kcp/library/LibraryActivity;->onStart()V

    .line 177
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->updateBookListUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 179
    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentCatalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    iget-object v2, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->catalogChangeNotifier:Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/library/models/ISortedCatalogView;->registerListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 181
    sget-boolean v1, Lcom/amazon/kcp/application/ReddingApplication;->HAS_ACTION_BAR:Z

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 184
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 189
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Lcom/amazon/kcp/library/LibraryActivity;->onStop()V

    .line 208
    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->setLibraryFilter(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)V

    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentCatalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->catalogChangeNotifier:Lcom/amazon/kcp/library/UnifiedLibraryActivity$CatalogChangeNotifier;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/ISortedCatalogView;->unregisterListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 211
    return-void
.end method

.method protected refreshBooksList()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->books:Ljava/util/List;

    check-cast v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity$SortedCatalogList;->refreshBookList()V

    .line 360
    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->updateFilterLabelAndCount()V

    .line 361
    return-void
.end method

.method protected updateFilterLabelAndCount()V
    .locals 6

    .prologue
    .line 255
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->filterLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->filterCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->filterCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0026

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentCatalogView:Lcom/amazon/kcp/library/models/ISortedCatalogView;

    invoke-interface {v5}, Lcom/amazon/kcp/library/models/ISortedCatalogView;->items()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->filterLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/library/UnifiedLibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    iget v1, v1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->titleStringId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    :cond_0
    return-void
.end method
