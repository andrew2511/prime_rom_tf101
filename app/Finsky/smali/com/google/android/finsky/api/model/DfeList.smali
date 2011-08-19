.class public Lcom/google/android/finsky/api/model/DfeList;
.super Lcom/google/android/finsky/api/model/BucketedList;
.source "DfeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/BucketedList",
        "<",
        "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mEvent:Lcom/google/android/finsky/analytics/Analytics$Event;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;ZLcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/Analytics$Event;)V
    .locals 0
    .parameter "api"
    .parameter "url"
    .parameter "autoLoadNextPage"
    .parameter "analytics"
    .parameter "event"

    .prologue
    .line 44
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/api/model/BucketedList;-><init>(Ljava/lang/String;Z)V

    .line 45
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 46
    iput-object p5, p0, Lcom/google/android/finsky/api/model/DfeList;->mEvent:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 47
    iput-object p4, p0, Lcom/google/android/finsky/api/model/DfeList;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 48
    return-void
.end method


# virtual methods
.method public getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "index"

    .prologue
    .line 70
    iget-object p0, p0, Lcom/google/android/finsky/api/model/DfeList;->mLastResponse:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v0

    return-object v0
.end method

.method public getBucketCount()I
    .locals 1

    .prologue
    .line 75
    iget-object p0, p0, Lcom/google/android/finsky/api/model/DfeList;->mLastResponse:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getBucketCount()I

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
    .line 80
    iget-object p0, p0, Lcom/google/android/finsky/api/model/DfeList;->mLastResponse:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getBucketList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;
    .locals 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 58
    .local v3, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getBucketCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 59
    invoke-virtual {p1, v6}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, cookie:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/api/model/DfeList;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    iget-object v5, p0, Lcom/google/android/finsky/api/model/DfeList;->mEvent:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-interface {v4, v5, v0}, Lcom/google/android/finsky/analytics/Analytics;->reportVirtualPageView(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v6}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    .line 62
    .local v2, item:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    new-instance v4, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v4, v2, v0}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    .end local v0           #cookie:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    :cond_0
    return-object v3
.end method

.method protected bridge synthetic getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeList;->getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeList;->mUrl:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->getList(Ljava/lang/String;IILcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method
