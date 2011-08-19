.class public final Lcom/google/android/finsky/remoting/protos/Response$Payload;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payload"
.end annotation


# instance fields
.field private browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

.field private buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

.field private cachedSize:I

.field private detailsResponse_:Lcom/google/android/finsky/remoting/protos/DetailsResponse;

.field private hasBrowseResponse:Z

.field private hasBuyResponse:Z

.field private hasDetailsResponse:Z

.field private hasListResponse:Z

.field private hasPurchaseStatusResponse:Z

.field private hasReviewResponse:Z

.field private hasSearchResponse:Z

.field private hasTocResponse:Z

.field private hasUpdateFopResponse:Z

.field private listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

.field private purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

.field private reviewResponse_:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

.field private searchResponse_:Lcom/google/android/finsky/remoting/protos/SearchResponse;

.field private tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

.field private updateFopResponse_:Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 195
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .line 215
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->detailsResponse_:Lcom/google/android/finsky/remoting/protos/DetailsResponse;

    .line 235
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->reviewResponse_:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .line 255
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 275
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->searchResponse_:Lcom/google/android/finsky/remoting/protos/SearchResponse;

    .line 295
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .line 315
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 335
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .line 355
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->updateFopResponse_:Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;

    .line 448
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    .line 190
    return-void
.end method


# virtual methods
.method public getBrowseResponse()Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    return-object v0
.end method

.method public getBuyResponse()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    if-gez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getSerializedSize()I

    .line 454
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    return v0
.end method

.method public getDetailsResponse()Lcom/google/android/finsky/remoting/protos/DetailsResponse;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->detailsResponse_:Lcom/google/android/finsky/remoting/protos/DetailsResponse;

    return-object v0
.end method

.method public getListResponse()Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    return-object v0
.end method

.method public getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    return-object v0
.end method

.method public getReviewResponse()Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->reviewResponse_:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    return-object v0
.end method

.method public getSearchResponse()Lcom/google/android/finsky/remoting/protos/SearchResponse;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->searchResponse_:Lcom/google/android/finsky/remoting/protos/SearchResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getListResponse()Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDetailsResponse()Lcom/google/android/finsky/remoting/protos/DetailsResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getReviewResponse()Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 471
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 472
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBuyResponse()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 475
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 476
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getSearchResponse()Lcom/google/android/finsky/remoting/protos/SearchResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 479
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 480
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getTocResponse()Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 483
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 484
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBrowseResponse()Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 487
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 488
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 491
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateFopResponse()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 492
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getUpdateFopResponse()Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    :cond_8
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    .line 496
    return v0
.end method

.method public getTocResponse()Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    return-object v0
.end method

.method public getUpdateFopResponse()Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->updateFopResponse_:Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;

    return-object v0
.end method

.method public hasBrowseResponse()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse:Z

    return v0
.end method

.method public hasBuyResponse()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse:Z

    return v0
.end method

.method public hasDetailsResponse()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse:Z

    return v0
.end method

.method public hasListResponse()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse:Z

    return v0
.end method

.method public hasPurchaseStatusResponse()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse:Z

    return v0
.end method

.method public hasReviewResponse()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse:Z

    return v0
.end method

.method public hasSearchResponse()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse:Z

    return v0
.end method

.method public hasTocResponse()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse:Z

    return v0
.end method

.method public hasUpdateFopResponse()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateFopResponse:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 504
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 508
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    :sswitch_0
    return-object p0

    .line 514
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;-><init>()V

    .line 515
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 516
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setListResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 520
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DetailsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;-><init>()V

    .line 521
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DetailsResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 522
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setDetailsResponse(Lcom/google/android/finsky/remoting/protos/DetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 526
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DetailsResponse;
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;-><init>()V

    .line 527
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 528
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setReviewResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 532
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;-><init>()V

    .line 533
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 534
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setBuyResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 538
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    :sswitch_5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/SearchResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/SearchResponse;-><init>()V

    .line 539
    .local v1, value:Lcom/google/android/finsky/remoting/protos/SearchResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 540
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setSearchResponse(Lcom/google/android/finsky/remoting/protos/SearchResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 544
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/SearchResponse;
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;-><init>()V

    .line 545
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 546
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setTocResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 550
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;-><init>()V

    .line 551
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 552
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setBrowseResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 556
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;-><init>()V

    .line 557
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 558
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 562
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;-><init>()V

    .line 563
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 564
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setUpdateFopResponse(Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 504
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    move-result-object v0

    return-object v0
.end method

.method public setBrowseResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 322
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse:Z

    .line 323
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 324
    return-object p0
.end method

.method public setBuyResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 262
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse:Z

    .line 263
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 264
    return-object p0
.end method

.method public setDetailsResponse(Lcom/google/android/finsky/remoting/protos/DetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 222
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse:Z

    .line 223
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->detailsResponse_:Lcom/google/android/finsky/remoting/protos/DetailsResponse;

    .line 224
    return-object p0
.end method

.method public setListResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 202
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse:Z

    .line 203
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .line 204
    return-object p0
.end method

.method public setPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 342
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse:Z

    .line 343
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .line 344
    return-object p0
.end method

.method public setReviewResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 242
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse:Z

    .line 243
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->reviewResponse_:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .line 244
    return-object p0
.end method

.method public setSearchResponse(Lcom/google/android/finsky/remoting/protos/SearchResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 282
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse:Z

    .line 283
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->searchResponse_:Lcom/google/android/finsky/remoting/protos/SearchResponse;

    .line 284
    return-object p0
.end method

.method public setTocResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 302
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse:Z

    .line 303
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .line 304
    return-object p0
.end method

.method public setUpdateFopResponse(Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 362
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateFopResponse:Z

    .line 363
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->updateFopResponse_:Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;

    .line 364
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getListResponse()Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDetailsResponse()Lcom/google/android/finsky/remoting/protos/DetailsResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getReviewResponse()Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 428
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBuyResponse()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 431
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 432
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getSearchResponse()Lcom/google/android/finsky/remoting/protos/SearchResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 434
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 435
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getTocResponse()Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 437
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 438
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBrowseResponse()Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 440
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 441
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 443
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateFopResponse()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 444
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getUpdateFopResponse()Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 446
    :cond_8
    return-void
.end method
