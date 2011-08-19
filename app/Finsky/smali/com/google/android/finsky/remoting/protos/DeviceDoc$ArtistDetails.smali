.class public final Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DeviceDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArtistDetails"
.end annotation


# instance fields
.field private album_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;",
            ">;"
        }
    .end annotation
.end field

.field private artist_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

.field private cachedSize:I

.field private hasArtist:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1466
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->artist_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

    .line 1490
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->album_:Ljava/util/List;

    .line 1548
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->cachedSize:I

    .line 1466
    return-void
.end method


# virtual methods
.method public addAlbum(Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1507
    if-nez p1, :cond_0

    .line 1508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->album_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->album_:Ljava/util/List;

    .line 1513
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->album_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    return-object p0
.end method

.method public getAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->album_:Ljava/util/List;

    return-object v0
.end method

.method public getArtist()Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->artist_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1550
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 1552
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->getSerializedSize()I

    .line 1554
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1558
    const/4 v2, 0x0

    .line 1559
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->hasArtist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1560
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->getArtist()Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1563
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->getAlbumList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    .line 1564
    .local v0, element:Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1567
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
    :cond_1
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->cachedSize:I

    .line 1568
    return v2
.end method

.method public hasArtist()Z
    .locals 1

    .prologue
    .line 1472
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->hasArtist:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1575
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1576
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1580
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1581
    :sswitch_0
    return-object p0

    .line 1586
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;-><init>()V

    .line 1587
    .local v1, value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1588
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->setArtist(Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;

    goto :goto_0

    .line 1592
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;-><init>()V

    .line 1593
    .local v1, value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1594
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->addAlbum(Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;

    goto :goto_0

    .line 1576
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 1464
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;

    move-result-object v0

    return-object v0
.end method

.method public setArtist(Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1475
    if-nez p1, :cond_0

    .line 1476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1478
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->hasArtist:Z

    .line 1479
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->artist_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

    .line 1480
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1540
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->hasArtist()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1541
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->getArtist()Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1543
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;->getAlbumList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    .line 1544
    .local v0, element:Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1546
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
    :cond_1
    return-void
.end method
