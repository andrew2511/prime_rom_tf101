.class public Lcom/google/android/youtube/app/tablet/ResultsController;
.super Lcom/google/android/youtube/app/tablet/YouTubeController;
.source "ResultsController.java"


# instance fields
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

.field private query:Ljava/lang/String;

.field private final searchRequester:Lcom/google/android/youtube/core/async/Requester;
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
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/tablet/YouTubeController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->getRequesters()Lcom/google/android/youtube/app/Requesters;

    move-result-object v0

    .line 72
    .local v0, requesters:Lcom/google/android/youtube/app/Requesters;
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getSearchRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->searchRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 73
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getMusicVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 74
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getThumbnailRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/app/tablet/ResultsController;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/tablet/ResultsController;->refreshResults(Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)V

    return-void
.end method

.method public static createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "query"

    .prologue
    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "query"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-object v0
.end method

.method public static createArguments(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)Landroid/os/Bundle;
    .locals 2
    .parameter "query"
    .parameter "selectedTimeFilter"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/google/android/youtube/app/tablet/ResultsController;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "selected_time_filter"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 62
    return-object v0
.end method

.method private refreshResults(Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)V
    .locals 5
    .parameter "timeFilter"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->query:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->timeFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/ui/FilterHelper;->getSelected()Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    invoke-static {v3, p0}, Lcom/google/android/youtube/core/async/GDataRequests;->getSearchRequest(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected createSearchBox()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f040025

    return v0
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 16
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/tablet/ResultsController;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ResultsController;->query:Ljava/lang/String;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ResultsController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ResultsController;->query:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v2, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ResultsController;->activity:Landroid/app/Activity;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ResultsController;->navigation:Lcom/google/android/youtube/app/Navigation;

    move-object v4, v0

    const v5, 0x7f080014

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/ui/PagedView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ResultsController;->activity:Landroid/app/Activity;

    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->create(Landroid/content/Context;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ResultsController;->searchRequester:Lcom/google/android/youtube/core/async/Requester;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ResultsController;->musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ResultsController;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ResultsController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v10, v0

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->SearchResults:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-direct/range {v2 .. v11}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ResultsController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ResultsController;->activity:Landroid/app/Activity;

    move-object v2, v0

    const v3, 0x7f0d00e5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 102
    new-instance v15, Lcom/google/android/youtube/app/tablet/ResultsController$1;

    invoke-direct/range {v15 .. v16}, Lcom/google/android/youtube/app/tablet/ResultsController$1;-><init>(Lcom/google/android/youtube/app/tablet/ResultsController;)V

    .line 109
    .local v15, timeFilterListener:Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;,"Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener<Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;>;"
    sget-object v12, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;->ALL_TIME:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    .line 110
    .local v12, initialTimeFilter:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;
    if-eqz p2, :cond_1

    .line 111
    const-string v2, "selected_time_filter"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    .end local v12           #initialTimeFilter:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;
    check-cast v12, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    .line 121
    .restart local v12       #initialTimeFilter:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ResultsController;->actionBarLayout:Landroid/view/ViewGroup;

    move-object v2, v0

    const v3, 0x7f080011

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    .line 122
    .local v14, timeFilter:Landroid/widget/Spinner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ResultsController;->activity:Landroid/app/Activity;

    move-object v2, v0

    invoke-static {v2, v15, v12, v14}, Lcom/google/android/youtube/app/ui/FilterHelper;->newTimeFilterHelper(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/FilterHelper;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ResultsController;->timeFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;

    .line 124
    return-void

    .line 114
    .end local v14           #timeFilter:Landroid/widget/Spinner;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/tablet/ResultsController;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "selected_time_filter"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    .line 116
    .local v13, requestedTimeFilter:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;
    if-eqz v13, :cond_0

    .line 117
    move-object v12, v13

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .parameter "query"

    .prologue
    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->timeFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/FilterHelper;->getSelected()Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    invoke-interface {v0, p1, p0}, Lcom/google/android/youtube/app/Navigation;->toSearch(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)V

    .line 175
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    const-string v0, "selected_time_filter"

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->timeFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/FilterHelper;->getSelected()Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 135
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStart()V

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->timeFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/FilterHelper;->getSelected()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/tablet/ResultsController;->refreshResults(Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->query:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/ResultsController;->setSearchQuery(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->reset()V

    .line 148
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStop()V

    .line 149
    return-void
.end method

.method public onSuggestionClick(I)Z
    .locals 5
    .parameter "position"

    .prologue
    .line 158
    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 159
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    const-string v3, "suggest_intent_query"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 161
    .local v1, col:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v4, p0, Lcom/google/android/youtube/app/tablet/ResultsController;->timeFilterHelper:Lcom/google/android/youtube/app/ui/FilterHelper;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/ui/FilterHelper;->getSelected()Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    invoke-interface {v3, v2, p0}, Lcom/google/android/youtube/app/Navigation;->toSearch(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)V

    .line 163
    const/4 v3, 0x1

    .line 165
    .end local v1           #col:I
    .end local v2           #query:Ljava/lang/String;
    :goto_0
    return v3

    .restart local p0
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
