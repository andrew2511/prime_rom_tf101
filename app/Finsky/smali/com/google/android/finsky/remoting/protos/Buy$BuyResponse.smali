.class public final Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuyResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    }
.end annotation


# instance fields
.field private baseCheckoutUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private checkoutInfo_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

.field private checkoutServiceId_:Ljava/lang/String;

.field private checkoutTokenRequired_:Z

.field private continueViaUrl_:Ljava/lang/String;

.field private hasBaseCheckoutUrl:Z

.field private hasCheckoutInfo:Z

.field private hasCheckoutServiceId:Z

.field private hasCheckoutTokenRequired:Z

.field private hasContinueViaUrl:Z

.field private hasPurchaseResponse:Z

.field private hasPurchaseStatusUrl:Z

.field private purchaseResponse_:Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;

.field private purchaseStatusUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 419
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseResponse_:Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;

    .line 439
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutInfo_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    .line 459
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->continueViaUrl_:Ljava/lang/String;

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutTokenRequired_:Z

    .line 493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutServiceId_:Ljava/lang/String;

    .line 510
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->baseCheckoutUrl_:Ljava/lang/String;

    .line 527
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusUrl_:Ljava/lang/String;

    .line 588
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getBaseCheckoutUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->baseCheckoutUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getSerializedSize()I

    .line 594
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->cachedSize:I

    return v0
.end method

.method public getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutInfo_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    return-object v0
.end method

.method public getCheckoutServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutServiceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckoutTokenRequired()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutTokenRequired_:Z

    return v0
.end method

.method public getContinueViaUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->continueViaUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseResponse()Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseResponse_:Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;

    return-object v0
.end method

.method public getPurchaseStatusUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseResponse()Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 607
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasContinueViaUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 608
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getContinueViaUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 611
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 612
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 615
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutServiceId()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 616
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 619
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutTokenRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 620
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutTokenRequired()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 623
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasBaseCheckoutUrl()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 624
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getBaseCheckoutUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 627
    :cond_6
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->cachedSize:I

    .line 628
    return v0
.end method

.method public hasBaseCheckoutUrl()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasBaseCheckoutUrl:Z

    return v0
.end method

.method public hasCheckoutInfo()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo:Z

    return v0
.end method

.method public hasCheckoutServiceId()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutServiceId:Z

    return v0
.end method

.method public hasCheckoutTokenRequired()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutTokenRequired:Z

    return v0
.end method

.method public hasContinueViaUrl()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasContinueViaUrl:Z

    return v0
.end method

.method public hasPurchaseResponse()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseResponse:Z

    return v0
.end method

.method public hasPurchaseStatusUrl()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 636
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 640
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    :sswitch_0
    return-object p0

    .line 646
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;-><init>()V

    .line 647
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 648
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setPurchaseResponse(Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 652
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;-><init>()V

    .line 653
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 654
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setCheckoutInfo(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 658
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setContinueViaUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 662
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setPurchaseStatusUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 666
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setCheckoutServiceId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 670
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 674
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setBaseCheckoutUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 636
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x13 -> :sswitch_2
        0x42 -> :sswitch_3
        0x4a -> :sswitch_4
        0x62 -> :sswitch_5
        0x68 -> :sswitch_6
        0x72 -> :sswitch_7
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-result-object v0

    return-object v0
.end method

.method public setBaseCheckoutUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasBaseCheckoutUrl:Z

    .line 515
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->baseCheckoutUrl_:Ljava/lang/String;

    .line 516
    return-object p0
.end method

.method public setCheckoutInfo(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 443
    if-nez p1, :cond_0

    .line 444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 446
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo:Z

    .line 447
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutInfo_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    .line 448
    return-object p0
.end method

.method public setCheckoutServiceId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutServiceId:Z

    .line 498
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutServiceId_:Ljava/lang/String;

    .line 499
    return-object p0
.end method

.method public setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutTokenRequired:Z

    .line 481
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutTokenRequired_:Z

    .line 482
    return-object p0
.end method

.method public setContinueViaUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasContinueViaUrl:Z

    .line 464
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->continueViaUrl_:Ljava/lang/String;

    .line 465
    return-object p0
.end method

.method public setPurchaseResponse(Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 423
    if-nez p1, :cond_0

    .line 424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 426
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseResponse:Z

    .line 427
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseResponse_:Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;

    .line 428
    return-object p0
.end method

.method public setPurchaseStatusUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl:Z

    .line 532
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusUrl_:Ljava/lang/String;

    .line 533
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
    .line 565
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseResponse()Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 571
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasContinueViaUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getContinueViaUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 574
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 577
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutServiceId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 578
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 580
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutTokenRequired()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 581
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutTokenRequired()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 583
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasBaseCheckoutUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 584
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getBaseCheckoutUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 586
    :cond_6
    return-void
.end method
