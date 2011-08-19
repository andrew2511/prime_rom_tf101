.class public final Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DeviceDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumDetails"
.end annotation


# instance fields
.field private album_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

.field private cachedSize:I

.field private hasAlbum:Z

.field private song_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1316
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->album_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    .line 1340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->song_:Ljava/util/List;

    .line 1398
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->cachedSize:I

    .line 1316
    return-void
.end method


# virtual methods
.method public addSong(Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1357
    if-nez p1, :cond_0

    .line 1358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->song_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->song_:Ljava/util/List;

    .line 1363
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->song_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1364
    return-object p0
.end method

.method public getAlbum()Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->album_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1400
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 1402
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->getSerializedSize()I

    .line 1404
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1408
    const/4 v2, 0x0

    .line 1409
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->hasAlbum()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1410
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->getAlbum()Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1413
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->getSongList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;

    .line 1414
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1417
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;
    :cond_1
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->cachedSize:I

    .line 1418
    return v2
.end method

.method public getSongList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->song_:Ljava/util/List;

    return-object v0
.end method

.method public hasAlbum()Z
    .locals 1

    .prologue
    .line 1322
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->hasAlbum:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1425
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1426
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1430
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1431
    :sswitch_0
    return-object p0

    .line 1436
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;-><init>()V

    .line 1437
    .local v1, value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1438
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->setAlbum(Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;

    goto :goto_0

    .line 1442
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;-><init>()V

    .line 1443
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1444
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->addSong(Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;

    goto :goto_0

    .line 1426
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
    .line 1314
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;

    move-result-object v0

    return-object v0
.end method

.method public setAlbum(Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1325
    if-nez p1, :cond_0

    .line 1326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1328
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->hasAlbum:Z

    .line 1329
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->album_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    .line 1330
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
    .line 1390
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->hasAlbum()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1391
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->getAlbum()Lcom/google/android/finsky/remoting/protos/MusicInfo$Album;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1393
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;->getSongList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;

    .line 1394
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1396
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;
    :cond_1
    return-void
.end method
