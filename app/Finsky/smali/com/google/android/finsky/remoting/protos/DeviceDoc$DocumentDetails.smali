.class public final Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DeviceDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentDetails"
.end annotation


# instance fields
.field private albumDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;

.field private appDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

.field private artistDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;

.field private bookDetails_:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

.field private cachedSize:I

.field private hasAlbumDetails:Z

.field private hasAppDetails:Z

.field private hasArtistDetails:Z

.field private hasBookDetails:Z

.field private hasSongDetails:Z

.field private hasVideoDetails:Z

.field private songDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;

.field private videoDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 494
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 499
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->appDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    .line 519
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->albumDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;

    .line 539
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->artistDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;

    .line 559
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->songDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;

    .line 579
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->bookDetails_:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    .line 599
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->videoDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    .line 668
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->cachedSize:I

    .line 494
    return-void
.end method


# virtual methods
.method public getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->albumDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;

    return-object v0
.end method

.method public getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->appDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    return-object v0
.end method

.method public getArtistDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->artistDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;

    return-object v0
.end method

.method public getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->bookDetails_:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getSerializedSize()I

    .line 674
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasAppDetails()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasAlbumDetails()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 687
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasArtistDetails()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 688
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 691
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasSongDetails()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 692
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 695
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasBookDetails()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 696
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 699
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasVideoDetails()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 700
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 703
    :cond_5
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->cachedSize:I

    .line 704
    return v0
.end method

.method public getSongDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->songDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;

    return-object v0
.end method

.method public getVideoDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->videoDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    return-object v0
.end method

.method public hasAlbumDetails()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasAlbumDetails:Z

    return v0
.end method

.method public hasAppDetails()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasAppDetails:Z

    return v0
.end method

.method public hasArtistDetails()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasArtistDetails:Z

    return v0
.end method

.method public hasBookDetails()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasBookDetails:Z

    return v0
.end method

.method public hasSongDetails()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasSongDetails:Z

    return v0
.end method

.method public hasVideoDetails()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasVideoDetails:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 712
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 716
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 717
    :sswitch_0
    return-object p0

    .line 722
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;-><init>()V

    .line 723
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 724
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->setAppDetails(Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    goto :goto_0

    .line 728
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;-><init>()V

    .line 729
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 730
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->setAlbumDetails(Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    goto :goto_0

    .line 734
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;-><init>()V

    .line 735
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 736
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->setArtistDetails(Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    goto :goto_0

    .line 740
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;-><init>()V

    .line 741
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 742
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->setSongDetails(Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    goto :goto_0

    .line 746
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;
    :sswitch_5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;-><init>()V

    .line 747
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 748
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->setBookDetails(Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    goto :goto_0

    .line 752
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;-><init>()V

    .line 753
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 754
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->setVideoDetails(Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    goto :goto_0

    .line 712
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
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
    .line 492
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    move-result-object v0

    return-object v0
.end method

.method public setAlbumDetails(Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 523
    if-nez p1, :cond_0

    .line 524
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 526
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasAlbumDetails:Z

    .line 527
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->albumDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;

    .line 528
    return-object p0
.end method

.method public setAppDetails(Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 506
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasAppDetails:Z

    .line 507
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->appDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    .line 508
    return-object p0
.end method

.method public setArtistDetails(Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 543
    if-nez p1, :cond_0

    .line 544
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 546
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasArtistDetails:Z

    .line 547
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->artistDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;

    .line 548
    return-object p0
.end method

.method public setBookDetails(Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 583
    if-nez p1, :cond_0

    .line 584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 586
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasBookDetails:Z

    .line 587
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->bookDetails_:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    .line 588
    return-object p0
.end method

.method public setSongDetails(Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 563
    if-nez p1, :cond_0

    .line 564
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 566
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasSongDetails:Z

    .line 567
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->songDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;

    .line 568
    return-object p0
.end method

.method public setVideoDetails(Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 603
    if-nez p1, :cond_0

    .line 604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 606
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasVideoDetails:Z

    .line 607
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->videoDetails_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    .line 608
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
    .line 648
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasAppDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasAlbumDetails()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AlbumDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 654
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasArtistDetails()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$ArtistDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 657
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasSongDetails()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 658
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$SongDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 660
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasBookDetails()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 661
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 663
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasVideoDetails()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 664
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 666
    :cond_5
    return-void
.end method
