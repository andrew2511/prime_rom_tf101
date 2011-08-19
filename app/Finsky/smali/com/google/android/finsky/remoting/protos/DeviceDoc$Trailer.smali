.class public final Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DeviceDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trailer"
.end annotation


# instance fields
.field private cachedSize:I

.field private duration_:Ljava/lang/String;

.field private hasDuration:Z

.field private hasThumbnailUrl:Z

.field private hasTitle:Z

.field private hasTrailerId:Z

.field private hasWatchUrl:Z

.field private thumbnailUrl_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private trailerId_:Ljava/lang/String;

.field private watchUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2337
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->trailerId_:Ljava/lang/String;

    .line 2359
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->title_:Ljava/lang/String;

    .line 2376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->thumbnailUrl_:Ljava/lang/String;

    .line 2393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->watchUrl_:Ljava/lang/String;

    .line 2410
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->duration_:Ljava/lang/String;

    .line 2458
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->cachedSize:I

    .line 2337
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2460
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->cachedSize:I

    if-gez v0, :cond_0

    .line 2462
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getSerializedSize()I

    .line 2464
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->cachedSize:I

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->duration_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2468
    const/4 v0, 0x0

    .line 2469
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasTrailerId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2470
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getTrailerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2473
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2474
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2477
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasThumbnailUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2478
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2481
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasWatchUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2482
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getWatchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2485
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasDuration()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2486
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2489
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->cachedSize:I

    .line 2490
    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->thumbnailUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTrailerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->trailerId_:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->watchUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDuration()Z
    .locals 1

    .prologue
    .line 2412
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasDuration:Z

    return v0
.end method

.method public hasThumbnailUrl()Z
    .locals 1

    .prologue
    .line 2378
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasThumbnailUrl:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 2361
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasTitle:Z

    return v0
.end method

.method public hasTrailerId()Z
    .locals 1

    .prologue
    .line 2344
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasTrailerId:Z

    return v0
.end method

.method public hasWatchUrl()Z
    .locals 1

    .prologue
    .line 2395
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasWatchUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2497
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2498
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2502
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2503
    :sswitch_0
    return-object p0

    .line 2508
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->setTrailerId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    goto :goto_0

    .line 2512
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    goto :goto_0

    .line 2516
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    goto :goto_0

    .line 2520
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->setWatchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    goto :goto_0

    .line 2524
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    goto :goto_0

    .line 2498
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 2335
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 2414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasDuration:Z

    .line 2415
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->duration_:Ljava/lang/String;

    .line 2416
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 2380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasThumbnailUrl:Z

    .line 2381
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->thumbnailUrl_:Ljava/lang/String;

    .line 2382
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 2363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasTitle:Z

    .line 2364
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->title_:Ljava/lang/String;

    .line 2365
    return-object p0
.end method

.method public setTrailerId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 2346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasTrailerId:Z

    .line 2347
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->trailerId_:Ljava/lang/String;

    .line 2348
    return-object p0
.end method

.method public setWatchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 2397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasWatchUrl:Z

    .line 2398
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->watchUrl_:Ljava/lang/String;

    .line 2399
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
    .line 2441
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasTrailerId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2442
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getTrailerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2444
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2445
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2447
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2448
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2450
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasWatchUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2451
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getWatchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2453
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2454
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2456
    :cond_4
    return-void
.end method
