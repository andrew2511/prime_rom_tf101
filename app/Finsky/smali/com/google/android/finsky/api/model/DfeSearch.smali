.class public Lcom/google/android/finsky/api/model/DfeSearch;
.super Lcom/google/android/finsky/api/model/BucketedList;
.source "DfeSearch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/BucketedList",
        "<",
        "Lcom/google/android/finsky/remoting/protos/SearchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mEvent:Lcom/google/android/finsky/analytics/Analytics$Event;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V
    .locals 1
    .parameter "api"
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/finsky/api/model/DfeSearch;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Lcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/Analytics$Event;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Lcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/Analytics$Event;)V
    .locals 0
    .parameter "api"
    .parameter "url"
    .parameter "analytics"
    .parameter "event"

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lcom/google/android/finsky/api/model/BucketedList;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 41
    iput-object p3, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 42
    iput-object p4, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mEvent:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 43
    return-void
.end method


# virtual methods
.method public getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "index"

    .prologue
    .line 94
    iget-object p0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mLastResponse:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v0

    return-object v0
.end method

.method public getBucketCount()I
    .locals 1

    .prologue
    .line 99
    iget-object p0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mLastResponse:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getBucketCount()I

    move-result v0

    return v0
.end method

.method public getBucketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object p0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mLastResponse:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getBucketList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/SearchResponse;)Ljava/util/List;
    .locals 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/SearchResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 61
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getBucketCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 75
    :goto_0
    return-object v4

    .line 64
    :cond_0
    invoke-virtual {p1, v6}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, cookie:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    if-eqz v4, :cond_1

    .line 67
    iget-object v4, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    iget-object v5, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mEvent:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-interface {v4, v5, v0}, Lcom/google/android/finsky/analytics/Analytics;->reportVirtualPageView(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V

    .line 70
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 71
    .local v3, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-virtual {p1, v6}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    .line 72
    .local v2, item:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    new-instance v4, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v4, v2, v0}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2           #item:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    :cond_2
    move-object v4, v3

    .line 75
    goto :goto_0
.end method

.method protected bridge synthetic getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/finsky/remoting/protos/SearchResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeSearch;->getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/SearchResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object p0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mLastResponse:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getOriginalQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAggregateResult()Z
    .locals 1

    .prologue
    .line 82
    iget-object p0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mLastResponse:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getAggregateQuery()Z

    move-result v0

    return v0
.end method

.method protected makeRequest(II)Lcom/android/volley/Request;
    .locals 6
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mUrl:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->search(Ljava/lang/String;IILcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method
