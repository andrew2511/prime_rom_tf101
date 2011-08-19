.class public final Lcom/google/android/finsky/remoting/protos/Common$Offer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Offer"
.end annotation


# instance fields
.field private cachedSize:I

.field private checkoutFlowRequired_:Z

.field private convertedPrice_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation
.end field

.field private currencyCode_:Ljava/lang/String;

.field private formattedAmount_:Ljava/lang/String;

.field private formattedFullAmount_:Ljava/lang/String;

.field private fullPriceMicros_:J

.field private hasCheckoutFlowRequired:Z

.field private hasCurrencyCode:Z

.field private hasFormattedAmount:Z

.field private hasFormattedFullAmount:Z

.field private hasFullPriceMicros:Z

.field private hasMicros:Z

.field private hasOfferType:Z

.field private hasRentalTerms:Z

.field private micros_:J

.field private offerType_:I

.field private rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 228
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 233
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->micros_:J

    .line 250
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->currencyCode_:Ljava/lang/String;

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedAmount_:Ljava/lang/String;

    .line 284
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->fullPriceMicros_:J

    .line 301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedFullAmount_:Ljava/lang/String;

    .line 317
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->checkoutFlowRequired_:Z

    .line 368
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->offerType_:I

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    .line 456
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    .line 228
    return-void
.end method


# virtual methods
.method public addConvertedPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 335
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    if-gez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getSerializedSize()I

    .line 462
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    return v0
.end method

.method public getCheckoutFlowRequired()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->checkoutFlowRequired_:Z

    return v0
.end method

.method public getConvertedPriceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->currencyCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedFullAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedFullAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPriceMicros()J
    .locals 2

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->fullPriceMicros_:J

    return-wide v0
.end method

.method public getMicros()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->micros_:J

    return-wide v0
.end method

.method public getOfferType()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->offerType_:I

    return v0
.end method

.method public getRentalTerms()Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 466
    const/4 v2, 0x0

    .line 467
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getMicros()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 479
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getConvertedPriceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 480
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 483
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 484
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCheckoutFlowRequired()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 487
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 488
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFullPriceMicros()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 491
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 492
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedFullAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 495
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 496
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 499
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 500
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getRentalTerms()Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 503
    :cond_8
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    .line 504
    return v2
.end method

.method public hasCheckoutFlowRequired()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired:Z

    return v0
.end method

.method public hasCurrencyCode()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode:Z

    return v0
.end method

.method public hasFormattedAmount()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount:Z

    return v0
.end method

.method public hasFormattedFullAmount()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount:Z

    return v0
.end method

.method public hasFullPriceMicros()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros:Z

    return v0
.end method

.method public hasMicros()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros:Z

    return v0
.end method

.method public hasOfferType()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType:Z

    return v0
.end method

.method public hasRentalTerms()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 512
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 516
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 517
    :sswitch_0
    return-object p0

    .line 522
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 526
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 530
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFormattedAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 534
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 535
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 536
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->addConvertedPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 540
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setCheckoutFlowRequired(Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 544
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFullPriceMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 548
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFormattedFullAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 552
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 556
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;-><init>()V

    .line 557
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 558
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setRentalTerms(Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 512
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
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
    .line 226
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    return-object v0
.end method

.method public setCheckoutFlowRequired(Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired:Z

    .line 356
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->checkoutFlowRequired_:Z

    .line 357
    return-object p0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode:Z

    .line 255
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->currencyCode_:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public setFormattedAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount:Z

    .line 272
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedAmount_:Ljava/lang/String;

    .line 273
    return-object p0
.end method

.method public setFormattedFullAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount:Z

    .line 306
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedFullAmount_:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.method public setFullPriceMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros:Z

    .line 289
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->fullPriceMicros_:J

    .line 290
    return-object p0
.end method

.method public setMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros:Z

    .line 238
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->micros_:J

    .line 239
    return-object p0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType:Z

    .line 373
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->offerType_:I

    .line 374
    return-object p0
.end method

.method public setRentalTerms(Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 390
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 392
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms:Z

    .line 393
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    .line 394
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getMicros()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 434
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 436
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getConvertedPriceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 437
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 439
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 440
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCheckoutFlowRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 442
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 443
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFullPriceMicros()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 445
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 446
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedFullAmount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 448
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 449
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 451
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 452
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getRentalTerms()Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 454
    :cond_8
    return-void
.end method
