.class public Lcom/amazon/kcp/internal/webservices/DownloadCoverWebserviceClient;
.super Ljava/lang/Object;
.source "DownloadCoverWebserviceClient.java"


# instance fields
.field private webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 0
    .parameter "webConnector"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/DownloadCoverWebserviceClient;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    .line 27
    return-void
.end method

.method private insertDimensionsInUrl(Ljava/lang/String;Lcom/amazon/system/drawing/Dimension;)Ljava/lang/String;
    .locals 4
    .parameter "originalUrl"
    .parameter "maxDimension"

    .prologue
    .line 49
    if-eqz p2, :cond_0

    sget-object v2, Lcom/amazon/system/drawing/Dimension;->UNLIMITED:Lcom/amazon/system/drawing/Dimension;

    invoke-virtual {p2, v2}, Lcom/amazon/system/drawing/Dimension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, p1

    .line 65
    :goto_0
    return-object v2

    .line 54
    :cond_1
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 55
    .local v0, dotIndex:I
    if-ltz v0, :cond_2

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "._SX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/amazon/system/drawing/Dimension;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_SY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/amazon/system/drawing/Dimension;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, size:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v1           #size:Ljava/lang/String;
    :cond_2
    move-object v2, p1

    .line 65
    goto :goto_0
.end method


# virtual methods
.method public createDownloadCoverRequest(Ljava/lang/String;Lcom/amazon/system/drawing/Dimension;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;
    .locals 3
    .parameter "nonResizedCoverUrl"
    .parameter "maxDimension"
    .parameter "resultStream"
    .parameter "statusTracker"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/internal/webservices/DownloadCoverWebserviceClient;->insertDimensionsInUrl(Ljava/lang/String;Lcom/amazon/system/drawing/Dimension;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, urlWithDimensions:Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/kcp/internal/webservices/DownloadCoverWebserviceClient;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    const/4 v2, 0x1

    invoke-interface {v1, v0, p3, p4, v2}, Lcom/amazon/foundation/internal/net/LightWebConnector;->createRequest(Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;I)Lcom/amazon/foundation/internal/net/WebConnectorRequest;

    move-result-object v1

    return-object v1
.end method
