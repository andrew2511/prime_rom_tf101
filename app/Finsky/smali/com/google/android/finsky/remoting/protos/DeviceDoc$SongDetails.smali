.class public final Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DeviceDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SongDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPrice:Z

.field private hasTrack:Z

.field private price_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

.field private track_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1616
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1621
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->track_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    .line 1641
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->price_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1685
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->cachedSize:I

    .line 1616
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1687
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 1689
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->getSerializedSize()I

    .line 1691
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->cachedSize:I

    return v0
.end method

.method public getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->price_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1695
    const/4 v0, 0x0

    .line 1696
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->hasTrack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1697
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->getTrack()Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1700
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->hasPrice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1701
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1704
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->cachedSize:I

    .line 1705
    return v0
.end method

.method public getTrack()Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->track_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    return-object v0
.end method

.method public hasPrice()Z
    .locals 1

    .prologue
    .line 1642
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->hasPrice:Z

    return v0
.end method

.method public hasTrack()Z
    .locals 1

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->hasTrack:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1712
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1713
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1717
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1718
    :sswitch_0
    return-object p0

    .line 1723
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;-><init>()V

    .line 1724
    .local v1, value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1725
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->setTrack(Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;

    goto :goto_0

    .line 1729
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 1730
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1731
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->setPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;

    goto :goto_0

    .line 1713
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
    .line 1614
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;

    move-result-object v0

    return-object v0
.end method

.method public setPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1645
    if-nez p1, :cond_0

    .line 1646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1648
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->hasPrice:Z

    .line 1649
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->price_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1650
    return-object p0
.end method

.method public setTrack(Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 1625
    if-nez p1, :cond_0

    .line 1626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1628
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->hasTrack:Z

    .line 1629
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->track_:Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    .line 1630
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
    .line 1677
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->hasTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->getTrack()Lcom/google/android/finsky/remoting/protos/MusicInfo$Track;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1680
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1681
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1683
    :cond_1
    return-void
.end method
