.class public abstract Lcom/google/android/finsky/api/model/PaginatedList;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "PaginatedList.java"

# interfaces
.implements Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/finsky/api/model/DfeModel;",
        "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mAutoLoadNextPage:Z

.field private mCurrentRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastResponse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mMoreAvailable:Z

.field private mPageSize:I

.field protected final mUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 48
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;Z)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "autoLoadNextPage"

    .prologue
    .line 51
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    .line 33
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrl:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    .line 54
    iput-boolean p2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mAutoLoadNextPage:Z

    .line 55
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mPageSize:I

    .line 56
    return-void
.end method

.method private requestMoreItemsIfNoRequestExists(II)V
    .locals 1
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 233
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/api/model/PaginatedList;->makeRequest(II)Lcom/android/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    goto :goto_0
.end method


# virtual methods
.method public clearTransientState()V
    .locals 1

    .prologue
    .line 64
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    .line 65
    return-void
.end method

.method public detachAll()V
    .locals 0

    .prologue
    .line 162
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->unregisterAll()V

    .line 163
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Lcom/google/android/finsky/api/model/Document;
    .locals 4
    .parameter "position"

    .prologue
    .line 124
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    const/4 v0, 0x0

    .line 125
    .local v0, result:Lcom/google/android/finsky/api/model/Document;
    if-gez p1, :cond_0

    .line 126
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

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Lcom/google/android/finsky/api/model/Document;
    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 131
    .restart local v0       #result:Lcom/google/android/finsky/api/model/Document;
    iget-boolean v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mAutoLoadNextPage:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v1

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v1

    iget v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mPageSize:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(II)V

    .line 136
    :cond_1
    return-object v0
.end method

.method protected abstract getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end method

.method public isMoreAvailable()Z
    .locals 1

    .prologue
    .line 154
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 90
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastResponse:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract makeRequest(II)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 1
    .parameter "error"
    .parameter "message"

    .prologue
    .line 95
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    .line 96
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/api/model/DfeModel;->onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onResponse(Ljava/lang/Object;II)V
    .locals 3
    .parameter
    .parameter "requestOffset"
    .parameter "requestCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    .local p1, response:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearErrors()V

    .line 193
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    .line 194
    iput-object p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastResponse:Ljava/lang/Object;

    .line 198
    iget-object v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 199
    add-int v0, p2, p3

    .line 200
    .local v0, end:I
    iget-object v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 201
    iget-object v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v2, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 204
    .end local v0           #end:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/PaginatedList;->getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 205
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iget-object v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v2, p2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 207
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p3, :cond_1

    iget-boolean v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mAutoLoadNextPage:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    .line 208
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->notifyDataSetChanged()V

    .line 209
    return-void

    .line 207
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public retryLoadItems(Z)V
    .locals 2
    .parameter "forceRetry"

    .prologue
    .line 144
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->inErrorState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mPageSize:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(II)V

    .line 147
    :cond_0
    return-void
.end method

.method public setPageSize(I)V
    .locals 2
    .parameter "itemCount"

    .prologue
    .line 170
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    if-gtz p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set number of items to load per page to be <= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iput p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mPageSize:I

    .line 175
    return-void
.end method

.method public startLoadItems()V
    .locals 2

    .prologue
    .line 110
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mPageSize:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(II)V

    .line 113
    :cond_0
    return-void
.end method
