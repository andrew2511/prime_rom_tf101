.class public final Lcom/google/android/finsky/remoting/protos/Doc$Image;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    }
.end annotation


# instance fields
.field private altTextLocalized_:Ljava/lang/String;

.field private cachedSize:I

.field private dimension_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

.field private hasAltTextLocalized:Z

.field private hasDimension:Z

.field private hasImageType:Z

.field private hasImageUrl:Z

.field private hasSecureUrl:Z

.field private imageType_:I

.field private imageUrl_:Ljava/lang/String;

.field private secureUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageType_:I

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->dimension_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageUrl_:Ljava/lang/String;

    .line 356
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->secureUrl_:Ljava/lang/String;

    .line 373
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->altTextLocalized_:Ljava/lang/String;

    .line 424
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->cachedSize:I

    .line 165
    return-void
.end method


# virtual methods
.method public getAltTextLocalized()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->altTextLocalized_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->cachedSize:I

    if-gez v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSerializedSize()I

    .line 430
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->cachedSize:I

    return v0
.end method

.method public getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->dimension_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageType_:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->secureUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasDimension()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 447
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasAltTextLocalized()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 448
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getAltTextLocalized()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 451
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSecureUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 452
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSecureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 455
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->cachedSize:I

    .line 456
    return v0
.end method

.method public hasAltTextLocalized()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasAltTextLocalized:Z

    return v0
.end method

.method public hasDimension()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasDimension:Z

    return v0
.end method

.method public hasImageType()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageType:Z

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageUrl:Z

    return v0
.end method

.method public hasSecureUrl()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSecureUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 464
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 468
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    :sswitch_0
    return-object p0

    .line 474
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setImageType(I)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 478
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;-><init>()V

    .line 479
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 480
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setDimension(Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 484
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 488
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setAltTextLocalized(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 492
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setSecureUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 464
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x13 -> :sswitch_2
        0x2a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
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
    .line 163
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v0

    return-object v0
.end method

.method public setAltTextLocalized(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasAltTextLocalized:Z

    .line 378
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->altTextLocalized_:Ljava/lang/String;

    .line 379
    return-object p0
.end method

.method public setDimension(Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 323
    if-nez p1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 326
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasDimension:Z

    .line 327
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->dimension_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 328
    return-object p0
.end method

.method public setImageType(I)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageType:Z

    .line 307
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageType_:I

    .line 308
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageUrl:Z

    .line 344
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageUrl_:Ljava/lang/String;

    .line 345
    return-object p0
.end method

.method public setSecureUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSecureUrl:Z

    .line 361
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->secureUrl_:Ljava/lang/String;

    .line 362
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
    .line 407
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasDimension()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 413
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 416
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasAltTextLocalized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getAltTextLocalized()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 419
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSecureUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 420
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSecureUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 422
    :cond_4
    return-void
.end method
