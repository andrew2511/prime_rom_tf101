.class public Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;
.super Ljava/lang/Object;
.source "WebservicesModelFactory.java"


# instance fields
.field private browseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

.field private detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

.field private firstBrowseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

.field private reviewsModel:Lcom/amazon/kcp/store/models/internal/CReviewsModel;

.field private storeInfoModel:Lcom/amazon/kcp/store/models/IStoreInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->firstBrowseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    .line 23
    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->browseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    .line 24
    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    .line 25
    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->reviewsModel:Lcom/amazon/kcp/store/models/internal/CReviewsModel;

    return-void
.end method


# virtual methods
.method public getBrowseModel(J)Lcom/amazon/kcp/store/models/internal/CBrowseModel;
    .locals 2
    .parameter "nodeId"

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->firstBrowseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->firstBrowseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->firstBrowseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->setNodeId(J)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->firstBrowseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    .line 109
    :goto_0
    return-object v0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->browseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->browseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->getNodeId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_3

    .line 105
    :cond_2
    new-instance v0, Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    invoke-direct {v0}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->browseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->browseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/store/models/internal/CBrowseModel;->setNodeId(J)V

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->browseModel:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    goto :goto_0
.end method

.method public getDetailsModel(Lcom/amazon/kcp/store/models/IBookInfo;)Lcom/amazon/kcp/store/models/internal/CDetailsModel;
    .locals 2
    .parameter "info"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/store/models/IBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/store/models/IBookInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    invoke-direct {v0}, Lcom/amazon/kcp/store/models/internal/CDetailsModel;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    invoke-interface {p1}, Lcom/amazon/kcp/store/models/IBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->setAsin(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    invoke-interface {p1}, Lcom/amazon/kcp/store/models/IBookInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->setTitle(Ljava/lang/String;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->detailsModel:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    return-object v0
.end method

.method public getReviewsModel(Ljava/lang/String;I)Lcom/amazon/kcp/store/models/internal/CReviewsModel;
    .locals 1
    .parameter "asin"
    .parameter "pageSize"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->reviewsModel:Lcom/amazon/kcp/store/models/internal/CReviewsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->reviewsModel:Lcom/amazon/kcp/store/models/internal/CReviewsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->reviewsModel:Lcom/amazon/kcp/store/models/internal/CReviewsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->getPageSize()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 40
    :cond_0
    new-instance v0, Lcom/amazon/kcp/store/models/internal/CReviewsModel;

    invoke-direct {v0}, Lcom/amazon/kcp/store/models/internal/CReviewsModel;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->reviewsModel:Lcom/amazon/kcp/store/models/internal/CReviewsModel;

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->reviewsModel:Lcom/amazon/kcp/store/models/internal/CReviewsModel;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->setAsin(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->reviewsModel:Lcom/amazon/kcp/store/models/internal/CReviewsModel;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->setPageSize(I)V

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->reviewsModel:Lcom/amazon/kcp/store/models/internal/CReviewsModel;

    return-object v0
.end method

.method public getStoreInfoModel()Lcom/amazon/kcp/store/models/IStoreInfoModel;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->storeInfoModel:Lcom/amazon/kcp/store/models/IStoreInfoModel;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/amazon/kcp/store/models/internal/StoreInfoModel;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->getBrowseModel(J)Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/store/models/internal/StoreInfoModel;-><init>(Lcom/amazon/kcp/store/models/IBrowseModel;)V

    iput-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->storeInfoModel:Lcom/amazon/kcp/store/models/IStoreInfoModel;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->storeInfoModel:Lcom/amazon/kcp/store/models/IStoreInfoModel;

    return-object v0
.end method
