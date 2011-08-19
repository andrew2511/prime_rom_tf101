.class public Lcom/google/android/finsky/model/ReviewRequest;
.super Lcom/google/android/finsky/api/model/ItemListObservable;
.source "ReviewRequest.java"

# interfaces
.implements Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/ItemListObservable;",
        "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlreadyStartedLoadingItems:Z

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field protected mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private mErrorMsg:Ljava/lang/String;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$Review;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsRequestedCount:I

.field private mMoreAvailable:Z

.field private mPageSize:I

.field protected final mUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V
    .locals 2
    .parameter "dfeApi"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/ItemListObservable;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/model/ReviewRequest;->mItems:Ljava/util/List;

    .line 60
    iput-object p2, p0, Lcom/google/android/finsky/model/ReviewRequest;->mUrl:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/model/ReviewRequest;->mMoreAvailable:Z

    .line 62
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/finsky/model/ReviewRequest;->mPageSize:I

    .line 63
    iput-boolean v1, p0, Lcom/google/android/finsky/model/ReviewRequest;->mAlreadyStartedLoadingItems:Z

    .line 64
    iput v1, p0, Lcom/google/android/finsky/model/ReviewRequest;->mItemsRequestedCount:I

    .line 65
    iput-object p1, p0, Lcom/google/android/finsky/model/ReviewRequest;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 66
    return-void
.end method

.method public static declared-synchronized getReviewRequest(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)Lcom/google/android/finsky/model/ReviewRequest;
    .locals 3
    .parameter "api"
    .parameter "url"

    .prologue
    .line 76
    const-class v1, Lcom/google/android/finsky/model/ReviewRequest;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/android/finsky/model/ReviewRequest;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/model/ReviewRequest;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .local v0, req:Lcom/google/android/finsky/model/ReviewRequest;
    monitor-exit v1

    return-object v0

    .line 76
    .end local v0           #req:Lcom/google/android/finsky/model/ReviewRequest;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private requestMoreItems(II)V
    .locals 6
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/model/ReviewRequest;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/model/ReviewRequest;->mUrl:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/finsky/model/ReviewRequest;->mItemsRequestedCount:I

    iget-object v5, p0, Lcom/google/android/finsky/model/ReviewRequest;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    move v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->getReviews(Ljava/lang/String;IILcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 126
    iget v0, p0, Lcom/google/android/finsky/model/ReviewRequest;->mItemsRequestedCount:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/finsky/model/ReviewRequest;->mItemsRequestedCount:I

    .line 127
    return-void
.end method


# virtual methods
.method public attach(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/model/ReviewRequest;->registerObserver(Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public detachAll()V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/google/android/finsky/model/ReviewRequest;->unregisterAll()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/model/ReviewRequest;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 228
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/model/ReviewRequest;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/model/ReviewRequest;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 4
    .parameter "position"

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, result:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    if-gez p1, :cond_0

    .line 152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t return an item with a negative index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/model/ReviewRequest;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/google/android/finsky/model/ReviewRequest;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    check-cast v0, Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 157
    .restart local v0       #result:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    iget-boolean v1, p0, Lcom/google/android/finsky/model/ReviewRequest;->mMoreAvailable:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/model/ReviewRequest;->getCount()I

    move-result v1

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/google/android/finsky/model/ReviewRequest;->getCount()I

    move-result v1

    iget v2, p0, Lcom/google/android/finsky/model/ReviewRequest;->mPageSize:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/model/ReviewRequest;->requestMoreItems(II)V

    .line 161
    :cond_1
    return-object v0
.end method

.method public hadRequestError()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/model/ReviewRequest;->mErrorMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasItem(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/android/finsky/model/ReviewRequest;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoreAvailable()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/google/android/finsky/model/ReviewRequest;->mMoreAvailable:Z

    return v0
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;II)V
    .locals 4
    .parameter "response"
    .parameter "requestOffset"
    .parameter "requestCount"

    .prologue
    .line 236
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/finsky/model/ReviewRequest;->mErrorMsg:Ljava/lang/String;

    .line 240
    iget-object v2, p0, Lcom/google/android/finsky/model/ReviewRequest;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 241
    add-int v0, p2, p3

    .line 242
    .local v0, end:I
    iget-object v2, p0, Lcom/google/android/finsky/model/ReviewRequest;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 243
    iget-object v2, p0, Lcom/google/android/finsky/model/ReviewRequest;->mItems:Ljava/util/List;

    invoke-interface {v2, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 246
    .end local v0           #end:I
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getGetResponse()Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    move-result-object v1

    .line 250
    .local v1, reviewsResponse:Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getReviewList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 251
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/finsky/model/ReviewRequest;->mMoreAvailable:Z

    .line 255
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/model/ReviewRequest;->notifyListChanged()V

    .line 256
    return-void

    .line 253
    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/model/ReviewRequest;->mItems:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getReviewList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/model/ReviewRequest;->onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;II)V

    return-void
.end method

.method public retryLoadItems()V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/android/finsky/model/ReviewRequest;->hadRequestError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/google/android/finsky/model/ReviewRequest;->getCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/model/ReviewRequest;->mPageSize:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/model/ReviewRequest;->requestMoreItems(II)V

    .line 203
    :cond_0
    return-void
.end method

.method public setErrorListener(Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/finsky/model/ReviewRequest;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 113
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/finsky/model/ReviewRequest;->mErrorMsg:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public startLoadItems()V
    .locals 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/android/finsky/model/ReviewRequest;->mAlreadyStartedLoadingItems:Z

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/model/ReviewRequest;->mAlreadyStartedLoadingItems:Z

    .line 137
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/finsky/model/ReviewRequest;->mPageSize:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/model/ReviewRequest;->requestMoreItems(II)V

    .line 139
    :cond_0
    return-void
.end method
