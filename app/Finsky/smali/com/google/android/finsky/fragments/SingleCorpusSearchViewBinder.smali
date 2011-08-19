.class public Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;
.super Ljava/lang/Object;
.source "SingleCorpusSearchViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mContentLayout:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mHasLoadedAtLeastOnce:Z

.field private mListView:Landroid/widget/ListView;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mRequest:Lcom/google/android/finsky/api/model/BucketedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;I)V
    .locals 11
    .parameter "root"
    .parameter "columnCount"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f09007a

    .line 70
    iput-object p1, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    .line 71
    const v0, 0x7f090014

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mListView:Landroid/widget/ListView;

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mRequest:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    if-nez v0, :cond_0

    move-object v8, v10

    .line 74
    .local v8, bucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :goto_0
    if-nez v8, :cond_1

    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 90
    :goto_1
    return-void

    .line 72
    .end local v8           #bucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mRequest:Lcom/google/android/finsky/api/model/BucketedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 79
    .restart local v8       #bucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mRequest:Lcom/google/android/finsky/api/model/BucketedList;

    instance-of v7, v0, Lcom/google/android/finsky/api/model/DfeSearch;

    .line 80
    .local v7, isSearchRequest:Z
    new-instance v0, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mRequest:Lcom/google/android/finsky/api/model/BucketedList;

    new-instance v6, Lcom/google/android/finsky/model/Bucket;

    invoke-direct {v6, v8}, Lcom/google/android/finsky/model/Bucket;-><init>(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)V

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/PaginatedList;ILcom/google/android/finsky/model/Bucket;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;

    .line 84
    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mHasLoadedAtLeastOnce:Z

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 89
    :goto_2
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 1
    .parameter "context"
    .parameter "nm"
    .parameter "bitmapLoader"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 51
    iput-object p3, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mRequest:Lcom/google/android/finsky/api/model/BucketedList;

    goto :goto_0
.end method

.method public onDataChanged()V
    .locals 3

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mHasLoadedAtLeastOnce:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mHasLoadedAtLeastOnce:Z

    .line 111
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;

    .line 115
    iput-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mListView:Landroid/widget/ListView;

    .line 116
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "message"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, errorMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;

    invoke-virtual {v1}, Lcom/google/android/finsky/adapters/SingleCorpusSearchAdapter;->triggerFooterErrorMode()V

    .line 102
    .end local v0           #errorMessage:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setData(Lcom/google/android/finsky/api/model/BucketedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, data:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<*>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mHasLoadedAtLeastOnce:Z

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mRequest:Lcom/google/android/finsky/api/model/BucketedList;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mRequest:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->detachAll()V

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mRequest:Lcom/google/android/finsky/api/model/BucketedList;

    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mRequest:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->clearTransientState()V

    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mRequest:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mRequest:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SingleCorpusSearchViewBinder;->mRequest:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->startLoadItems()V

    .line 67
    return-void
.end method
