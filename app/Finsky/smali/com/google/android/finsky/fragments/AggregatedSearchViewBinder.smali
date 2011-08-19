.class public Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;
.super Ljava/lang/Object;
.source "AggregatedSearchViewBinder.java"


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/google/android/finsky/api/model/DfeSearch;

.field private mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;II)V
    .locals 14
    .parameter "root"
    .parameter "columns"
    .parameter "rows"

    .prologue
    .line 46
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v10

    .line 47
    .local v10, analytics:Lcom/google/android/finsky/analytics/Analytics;
    iget-object v1, p0, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->getBucketList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 48
    .local v11, bucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    sget-object v1, Lcom/google/android/finsky/analytics/Analytics$Event;->SEARCH_RESULTS:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-virtual {v11}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Lcom/google/android/finsky/analytics/Analytics;->reportVirtualPageView(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v11           #bucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_0
    const v1, 0x7f090014

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 53
    .local v13, list:Landroid/widget/ListView;
    const v1, 0x7f09007a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 54
    new-instance v0, Lcom/google/android/finsky/adapters/BucketAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeSearch;->getBucketList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/DfeSearch;->getQuery()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/BucketAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Ljava/util/List;IILjava/lang/String;ZZ)V

    .line 56
    .local v0, adapter:Lcom/google/android/finsky/adapters/BucketAdapter;
    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 1
    .parameter "context"
    .parameter "nm"
    .parameter "bitmapLoader"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 37
    iput-object p3, p0, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeSearch;

    goto :goto_0
.end method

.method public setData(Lcom/google/android/finsky/api/model/DfeSearch;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/finsky/fragments/AggregatedSearchViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeSearch;

    .line 43
    return-void
.end method
