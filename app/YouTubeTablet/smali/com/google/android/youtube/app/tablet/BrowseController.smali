.class public Lcom/google/android/youtube/app/tablet/BrowseController;
.super Lcom/google/android/youtube/app/tablet/YouTubeController;
.source "BrowseController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/app/tablet/YouTubeController;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/core/model/Category;",
        ">;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private categoriesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/youtube/core/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final categoriesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Category;",
            ">;>;"
        }
    .end annotation
.end field

.field private categoryList:Landroid/widget/ListView;

.field private final country:Ljava/lang/String;

.field private gotCategories:Z

.field private final musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectedCategory:Lcom/google/android/youtube/core/model/Category;

.field private standardFeedFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/app/ui/FilterHelper",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;",
            ">;"
        }
    .end annotation
.end field

.field private final standardFeedRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private final thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private timeFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/app/ui/FilterHelper",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;",
            ">;"
        }
    .end annotation
.end field

.field private videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V
    .locals 2
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/tablet/YouTubeController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->gotCategories:Z

    .line 76
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->getRequesters()Lcom/google/android/youtube/app/Requesters;

    move-result-object v0

    .line 77
    .local v0, requesters:Lcom/google/android/youtube/app/Requesters;
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getCategoriesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoriesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 78
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getStandardFeedRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->standardFeedRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 79
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getThumbnailRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 80
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getMusicVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->country:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/app/tablet/BrowseController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/BrowseController;->makeVideosRequest()V

    return-void
.end method

.method private makeCategoriesRequest()V
    .locals 5

    .prologue
    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, language:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoriesRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->country:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getCategoriesRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v4, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 179
    return-void
.end method

.method private makeVideosRequest()V
    .locals 6

    .prologue
    .line 182
    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->selectedCategory:Lcom/google/android/youtube/core/model/Category;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->selectedCategory:Lcom/google/android/youtube/core/model/Category;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    move-object v0, v3

    .line 183
    .local v0, feedTerm:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->standardFeedFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ui/FilterHelper;->getSelected()Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    .line 184
    .local v2, standardFeed:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;
    iget-object v4, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->country:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->timeFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/ui/FilterHelper;->getSelected()Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    invoke-static {v2, v0, v4, v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getStandardFeedRequest(Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    .line 186
    .local v1, request:Lcom/google/android/youtube/core/async/GDataRequest;
    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 187
    return-void

    .line 182
    .end local v0           #feedTerm:Ljava/lang/String;
    .end local v1           #request:Lcom/google/android/youtube/core/async/GDataRequest;
    .end local v2           #standardFeed:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f040004

    return v0
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 20
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    const v4, 0x7f080013

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/BrowseController;->categoryList:Landroid/widget/ListView;

    .line 93
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/BrowseController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v5, v0

    const v6, 0x7f040027

    const v7, 0x7f080042

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/BrowseController;->categoriesAdapter:Landroid/widget/ArrayAdapter;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoryList:Landroid/widget/ListView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoriesAdapter:Landroid/widget/ArrayAdapter;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoryList:Landroid/widget/ListView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    new-instance v19, Lcom/google/android/youtube/app/tablet/BrowseController$1;

    invoke-direct/range {v19 .. v20}, Lcom/google/android/youtube/app/tablet/BrowseController$1;-><init>(Lcom/google/android/youtube/app/tablet/BrowseController;)V

    .line 104
    .local v19, timeFilterListener:Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;,"Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener<Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;>;"
    new-instance v17, Lcom/google/android/youtube/app/tablet/BrowseController$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/tablet/BrowseController$2;-><init>(Lcom/google/android/youtube/app/tablet/BrowseController;)V

    .line 111
    .local v17, standardFeedFilterListener:Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;,"Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener<Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;>;"
    sget-object v14, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    .line 112
    .local v14, initialFeedFilter:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;
    sget-object v15, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    .line 113
    .local v15, initialTimeFilter:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;
    if-eqz p2, :cond_0

    .line 114
    const-string v4, "selected_feed_filter"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    .end local v14           #initialFeedFilter:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;
    check-cast v14, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    .line 116
    .restart local v14       #initialFeedFilter:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;
    const-string v4, "selected_time_filter"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    .end local v15           #initialTimeFilter:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;
    check-cast v15, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    .line 118
    .restart local v15       #initialTimeFilter:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;
    const-string v4, "selected_category"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/google/android/youtube/core/model/Category;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/BrowseController;->selectedCategory:Lcom/google/android/youtube/core/model/Category;

    .line 122
    :cond_0
    const v4, 0x7f080011

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    .line 123
    .local v18, timeFilter:Landroid/widget/Spinner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/BrowseController;->activity:Landroid/app/Activity;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    move-object v2, v15

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/FilterHelper;->newTimeFilterHelper(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/FilterHelper;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/BrowseController;->timeFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;

    .line 125
    const v4, 0x7f080012

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Spinner;

    .line 126
    .local v16, standardFeedFilter:Landroid/widget/Spinner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/BrowseController;->activity:Landroid/app/Activity;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    move-object v2, v14

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/FilterHelper;->newStandardFeedFilterHelper(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/FilterHelper;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/BrowseController;->standardFeedFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;

    .line 129
    new-instance v4, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/BrowseController;->activity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/BrowseController;->navigation:Lcom/google/android/youtube/app/Navigation;

    move-object v6, v0

    const v7, 0x7f080014

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/youtube/core/ui/PagedView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/BrowseController;->activity:Landroid/app/Activity;

    move-object v8, v0

    invoke-static {v8}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->create(Landroid/content/Context;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/BrowseController;->standardFeedRequester:Lcom/google/android/youtube/core/async/Requester;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/BrowseController;->musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/BrowseController;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/BrowseController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v12, v0

    sget-object v13, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Browse:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-direct/range {v4 .. v13}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/BrowseController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    .line 140
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/app/tablet/BrowseController;->makeCategoriesRequest()V

    .line 141
    return-void
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 171
    const v0, 0x7f080089

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 172
    return-void
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 213
    const-string v0, "Categories request failed"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/BrowseController;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoriesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    .line 219
    .local v0, category:Lcom/google/android/youtube/core/model/Category;
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->selectedCategory:Lcom/google/android/youtube/core/model/Category;

    if-eq v1, v0, :cond_0

    .line 220
    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->selectedCategory:Lcom/google/android/youtube/core/model/Category;

    .line 221
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoryList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoriesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 222
    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/BrowseController;->makeVideosRequest()V

    .line 224
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .locals 5
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, response:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Category;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoriesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 191
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->country:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoriesAdapter:Landroid/widget/ArrayAdapter;

    invoke-static {p2, v1, v2}, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;->filterResponse(Ljava/util/List;Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    .line 192
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoriesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 194
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->selectedCategory:Lcom/google/android/youtube/core/model/Category;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoriesAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->selectedCategory:Lcom/google/android/youtube/core/model/Category;

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 196
    .local v0, categoryIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoryList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 204
    .end local v0           #categoryIndex:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->selectedCategory:Lcom/google/android/youtube/core/model/Category;

    if-nez v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoriesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Category;

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->selectedCategory:Lcom/google/android/youtube/core/model/Category;

    .line 206
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->categoryList:Landroid/widget/ListView;

    invoke-virtual {v1, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 209
    :cond_1
    iput-boolean v4, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->gotCategories:Z

    .line 210
    return-void

    .line 200
    .restart local v0       #categoryIndex:I
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->selectedCategory:Lcom/google/android/youtube/core/model/Category;

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/BrowseController;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    const-string v0, "selected_feed_filter"

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->standardFeedFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/FilterHelper;->getSelected()Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 148
    const-string v0, "selected_time_filter"

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->timeFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/FilterHelper;->getSelected()Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 149
    const-string v0, "selected_category"

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->selectedCategory:Lcom/google/android/youtube/core/model/Category;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 150
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStart()V

    .line 155
    iget-boolean v0, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->gotCategories:Z

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/BrowseController;->makeCategoriesRequest()V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/BrowseController;->makeVideosRequest()V

    .line 160
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/BrowseController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->reset()V

    .line 165
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStop()V

    .line 166
    return-void
.end method
