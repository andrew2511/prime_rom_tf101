.class public Lcom/google/android/finsky/fragments/BrowseContentViewBinder;
.super Ljava/lang/Object;
.source "BrowseContentViewBinder.java"


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/google/android/finsky/api/model/DfeList;

.field private mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;II)V
    .locals 11
    .parameter "view"
    .parameter "bucketContentColumns"
    .parameter "bucketContentRows"

    .prologue
    const/4 v8, 0x0

    .line 45
    iget-object v1, p0, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 46
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->BROWSE:Lcom/google/android/finsky/analytics/Analytics$Event;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v3, v8}, Lcom/google/android/finsky/api/model/DfeList;->getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->reportVirtualPageView(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V

    .line 50
    :cond_0
    const v1, 0x7f090014

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    .line 51
    .local v10, list:Landroid/widget/ListView;
    const v1, 0x7f09007a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 52
    new-instance v0, Lcom/google/android/finsky/adapters/BucketAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    move v5, p2

    move v6, p3

    move v9, v8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/BucketAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Ljava/util/List;IILjava/lang/String;ZZ)V

    .line 55
    .local v0, adapter:Lcom/google/android/finsky/adapters/BucketAdapter;
    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 1
    .parameter "context"
    .parameter "nm"
    .parameter "bitmapLoader"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 36
    iput-object p3, p0, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeList;

    goto :goto_0
.end method

.method public setData(Lcom/google/android/finsky/api/model/DfeList;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/finsky/fragments/BrowseContentViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeList;

    .line 42
    return-void
.end method
