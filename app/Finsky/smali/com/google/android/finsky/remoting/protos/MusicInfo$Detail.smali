.class public final Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "MusicInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/MusicInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Detail"
.end annotation


# instance fields
.field private artistName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private artist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;",
            ">;"
        }
    .end annotation
.end field

.field private artwork_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private censoring_:I

.field private deprecatedGenre_:Ljava/lang/String;

.field private description_:Ljava/lang/String;

.field private durationSec_:I

.field private genre_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasCensoring:Z

.field private hasDeprecatedGenre:Z

.field private hasDescription:Z

.field private hasDurationSec:Z

.field private hasLabel:Z

.field private hasMusicLanguage:Z

.field private hasOriginalReleaseDate:Z

.field private label_:Ljava/lang/String;

.field private musicLanguage_:Ljava/lang/String;

.field private originalReleaseDate_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artistName_:Ljava/util/List;

    .line 207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->deprecatedGenre_:Ljava/lang/String;

    .line 224
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->censoring_:I

    .line 241
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->durationSec_:I

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->description_:Ljava/lang/String;

    .line 275
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->originalReleaseDate_:Ljava/lang/String;

    .line 291
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artwork_:Ljava/util/List;

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->musicLanguage_:Ljava/lang/String;

    .line 342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->label_:Ljava/lang/String;

    .line 358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artist_:Ljava/util/List;

    .line 391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->genre_:Ljava/util/List;

    .line 485
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->cachedSize:I

    .line 165
    return-void
.end method


# virtual methods
.method public addArtist(Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 1
    .parameter "value"

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artist_:Ljava/util/List;

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    return-object p0
.end method

.method public addArtistName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 1
    .parameter "value"

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artistName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artistName_:Ljava/util/List;

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artistName_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-object p0
.end method

.method public addArtwork(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 1
    .parameter "value"

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artwork_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artwork_:Ljava/util/List;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artwork_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    return-object p0
.end method

.method public addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 1
    .parameter "value"

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->genre_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->genre_:Ljava/util/List;

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->genre_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    return-object p0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artist_:Ljava/util/List;

    return-object v0
.end method

.method public getArtistNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artistName_:Ljava/util/List;

    return-object v0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->artwork_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->cachedSize:I

    if-gez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getSerializedSize()I

    .line 491
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->cachedSize:I

    return v0
.end method

.method public getCensoring()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->censoring_:I

    return v0
.end method

.method public getDeprecatedGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->deprecatedGenre_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationSec()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->durationSec_:I

    return v0
.end method

.method public getGenreList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->genre_:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->musicLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->originalReleaseDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 495
    const/4 v3, 0x0

    .line 497
    .local v3, size:I
    const/4 v0, 0x0

    .line 498
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getArtistNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 499
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 502
    .end local v1           #element:Ljava/lang/String;
    :cond_0
    add-int/2addr v3, v0

    .line 503
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getArtistNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 505
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasDeprecatedGenre()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getDeprecatedGenre()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasCensoring()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 510
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getCensoring()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 513
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasDurationSec()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 514
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getDurationSec()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 517
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasDescription()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 518
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 521
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasOriginalReleaseDate()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 522
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getOriginalReleaseDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 525
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getArtworkList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 526
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/4 v4, 0x7

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 529
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasMusicLanguage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 530
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getMusicLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 533
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasLabel()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 534
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 537
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getArtistList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

    .line 538
    .local v1, element:Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
    const/16 v4, 0xa

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    .line 542
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
    :cond_9
    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getGenreList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 544
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3

    .line 547
    .end local v1           #element:Ljava/lang/String;
    :cond_a
    add-int/2addr v3, v0

    .line 548
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getGenreList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 550
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->cachedSize:I

    .line 551
    return v3
.end method

.method public hasCensoring()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasCensoring:Z

    return v0
.end method

.method public hasDeprecatedGenre()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasDeprecatedGenre:Z

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasDescription:Z

    return v0
.end method

.method public hasDurationSec()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasDurationSec:Z

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasLabel:Z

    return v0
.end method

.method public hasMusicLanguage()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasMusicLanguage:Z

    return v0
.end method

.method public hasOriginalReleaseDate()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasOriginalReleaseDate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 559
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 563
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 564
    :sswitch_0
    return-object p0

    .line 569
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->addArtistName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    goto :goto_0

    .line 573
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->setDeprecatedGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    goto :goto_0

    .line 577
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->setCensoring(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    goto :goto_0

    .line 581
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->setDurationSec(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    goto :goto_0

    .line 585
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->setDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    goto :goto_0

    .line 589
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->setOriginalReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    goto :goto_0

    .line 593
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;-><init>()V

    .line 594
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 595
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->addArtwork(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    goto :goto_0

    .line 599
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->setMusicLanguage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    goto :goto_0

    .line 603
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->setLabel(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    goto :goto_0

    .line 607
    :sswitch_a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;-><init>()V

    .line 608
    .local v1, value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 609
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->addArtist(Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    goto :goto_0

    .line 613
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->addGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    goto :goto_0

    .line 559
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;

    move-result-object v0

    return-object v0
.end method

.method public setCensoring(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 1
    .parameter "value"

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasCensoring:Z

    .line 229
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->censoring_:I

    .line 230
    return-object p0
.end method

.method public setDeprecatedGenre(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 1
    .parameter "value"

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasDeprecatedGenre:Z

    .line 212
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->deprecatedGenre_:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 1
    .parameter "value"

    .prologue
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasDescription:Z

    .line 263
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->description_:Ljava/lang/String;

    .line 264
    return-object p0
.end method

.method public setDurationSec(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 1
    .parameter "value"

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasDurationSec:Z

    .line 246
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->durationSec_:I

    .line 247
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 1
    .parameter "value"

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasLabel:Z

    .line 347
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->label_:Ljava/lang/String;

    .line 348
    return-object p0
.end method

.method public setMusicLanguage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 1
    .parameter "value"

    .prologue
    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasMusicLanguage:Z

    .line 330
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->musicLanguage_:Ljava/lang/String;

    .line 331
    return-object p0
.end method

.method public setOriginalReleaseDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;
    .locals 1
    .parameter "value"

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasOriginalReleaseDate:Z

    .line 280
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->originalReleaseDate_:Ljava/lang/String;

    .line 281
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
    .line 450
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getArtistNameList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 451
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 453
    .end local v0           #element:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasDeprecatedGenre()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getDeprecatedGenre()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasCensoring()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getCensoring()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 459
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasDurationSec()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getDurationSec()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 462
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasDescription()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 463
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 465
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasOriginalReleaseDate()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 466
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getOriginalReleaseDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 468
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getArtworkList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 469
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 471
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasMusicLanguage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 472
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getMusicLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 474
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->hasLabel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 475
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 477
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getArtistList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

    .line 478
    .local v0, element:Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 480
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Detail;->getGenreList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 481
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_3

    .line 483
    .end local v0           #element:Ljava/lang/String;
    :cond_a
    return-void
.end method
