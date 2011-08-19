.class public Lcom/google/android/finsky/api/model/DfeBrowse;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "DfeBrowse.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/DfeModel;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Lcom/google/android/finsky/analytics/Analytics;)V
    .locals 0
    .parameter "dfeApi"
    .parameter "landingUrl"
    .parameter "analytics"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 33
    iput-object p3, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 34
    invoke-virtual {p1, p2, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getBrowseLayout(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 35
    return-void
.end method


# virtual methods
.method public buildContentList()Lcom/google/android/finsky/api/model/DfeList;
    .locals 6

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getContentsUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    sget-object v5, Lcom/google/android/finsky/analytics/Analytics$Event;->BROWSE:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;ZLcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/Analytics$Event;)V

    goto :goto_0
.end method

.method public buildPromoList()Lcom/google/android/finsky/api/model/DfeList;
    .locals 6

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasPromotionalItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getPromoUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    sget-object v5, Lcom/google/android/finsky/analytics/Analytics$Event;->PROMOTED:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;ZLcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/Analytics$Event;)V

    goto :goto_0
.end method

.method public getBreadcrumbList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getBreadcrumbList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getCategoryList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategories()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getCategoryList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getCategoryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPromotionalItems()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getPromoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->clearErrors()V

    .line 103
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeBrowse;->onResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)V

    return-void
.end method
