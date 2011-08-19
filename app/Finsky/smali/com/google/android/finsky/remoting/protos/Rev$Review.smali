.class public final Lcom/google/android/finsky/remoting/protos/Rev$Review;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Rev.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Rev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Review"
.end annotation


# instance fields
.field private authorGaiaId_:J

.field private authorName_:Ljava/lang/String;

.field private authorType_:I

.field private cachedSize:I

.field private commentId_:Ljava/lang/String;

.field private commentRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

.field private comment_:Ljava/lang/String;

.field private con_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private docid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

.field private documentVersion_:Ljava/lang/String;

.field private hasAuthorGaiaId:Z

.field private hasAuthorName:Z

.field private hasAuthorType:Z

.field private hasComment:Z

.field private hasCommentId:Z

.field private hasCommentRating:Z

.field private hasDocid:Z

.field private hasDocumentVersion:Z

.field private hasImageUrl:Z

.field private hasSource:Z

.field private hasSourceUrl:Z

.field private hasStarRating:Z

.field private hasTimestampMsec:Z

.field private hasTitle:Z

.field private hasUrl:Z

.field private imageUrl_:Ljava/lang/String;

.field private pro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sourceUrl_:Ljava/lang/String;

.field private source_:Ljava/lang/String;

.field private starRating_:I

.field private timestampMsec_:J

.field private title_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 18
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->docid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorName_:Ljava/lang/String;

    .line 55
    iput-wide v3, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorGaiaId_:J

    .line 72
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorType_:I

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->url_:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->source_:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->sourceUrl_:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->imageUrl_:Ljava/lang/String;

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentVersion_:Ljava/lang/String;

    .line 174
    iput-wide v3, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->timestampMsec_:J

    .line 191
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->starRating_:I

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->title_:Ljava/lang/String;

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->comment_:Ljava/lang/String;

    .line 242
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentId_:Ljava/lang/String;

    .line 259
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->pro_:Ljava/util/List;

    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->con_:Ljava/util/List;

    .line 429
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public addCon(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->con_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->con_:Ljava/util/List;

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->con_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    return-object p0
.end method

.method public addPro(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->pro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->pro_:Ljava/util/List;

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->pro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-object p0
.end method

.method public getAuthorGaiaId()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorGaiaId_:J

    return-wide v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorType()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorType_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    if-gez v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSerializedSize()I

    .line 435
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->comment_:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    return-object v0
.end method

.method public getConList()Ljava/util/List;
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
    .line 314
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->con_:Ljava/util/List;

    return-object v0
.end method

.method public getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->docid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    return-object v0
.end method

.method public getDocumentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getProList()Ljava/util/List;
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
    .line 281
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->pro_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 439
    const/4 v3, 0x0

    .line 440
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 441
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 445
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 449
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 452
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 453
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 456
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 457
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 460
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 461
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 464
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 465
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 468
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 469
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 472
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 473
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 476
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentRating()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 477
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 481
    :cond_9
    const/4 v0, 0x0

    .line 482
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getProList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 483
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 486
    .end local v1           #element:Ljava/lang/String;
    :cond_a
    add-int/2addr v3, v0

    .line 487
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getProList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 490
    const/4 v0, 0x0

    .line 491
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getConList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 492
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 495
    .end local v1           #element:Ljava/lang/String;
    :cond_b
    add-int/2addr v3, v0

    .line 496
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getConList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 498
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorGaiaId()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 499
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorGaiaId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 502
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorType()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 503
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 506
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasImageUrl()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 507
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 510
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSourceUrl()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 511
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSourceUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 514
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocid()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 515
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 518
    :cond_10
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->cachedSize:I

    .line 519
    return v3
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->sourceUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->starRating_:I

    return v0
.end method

.method public getTimestampMsec()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->timestampMsec_:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthorGaiaId()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorGaiaId:Z

    return v0
.end method

.method public hasAuthorName()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName:Z

    return v0
.end method

.method public hasAuthorType()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorType:Z

    return v0
.end method

.method public hasComment()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment:Z

    return v0
.end method

.method public hasCommentId()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId:Z

    return v0
.end method

.method public hasCommentRating()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentRating:Z

    return v0
.end method

.method public hasDocid()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocid:Z

    return v0
.end method

.method public hasDocumentVersion()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion:Z

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasImageUrl:Z

    return v0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource:Z

    return v0
.end method

.method public hasSourceUrl()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSourceUrl:Z

    return v0
.end method

.method public hasStarRating()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating:Z

    return v0
.end method

.method public hasTimestampMsec()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 527
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 531
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 532
    :sswitch_0
    return-object p0

    .line 537
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setAuthorName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 541
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 545
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setSource(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 549
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setDocumentVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 553
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 557
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setStarRating(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 561
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 565
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 569
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setCommentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 573
    :sswitch_a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;-><init>()V

    .line 574
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 575
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setCommentRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 579
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->addPro(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 583
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->addCon(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 587
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setAuthorGaiaId(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto :goto_0

    .line 591
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setAuthorType(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 595
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 599
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setSourceUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 603
    :sswitch_11
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;-><init>()V

    .line 604
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 605
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setDocid(Lcom/google/android/finsky/remoting/protos/Doc$Docid;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    goto/16 :goto_0

    .line 527
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x69 -> :sswitch_d
        0x70 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v0

    return-object v0
.end method

.method public setAuthorGaiaId(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorGaiaId:Z

    .line 60
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorGaiaId_:J

    .line 61
    return-object p0
.end method

.method public setAuthorName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName:Z

    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorName_:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public setAuthorType(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorType:Z

    .line 77
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->authorType_:I

    .line 78
    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment:Z

    .line 230
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->comment_:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId:Z

    .line 247
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentId_:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public setCommentRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 266
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentRating:Z

    .line 267
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->commentRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 268
    return-object p0
.end method

.method public setDocid(Lcom/google/android/finsky/remoting/protos/Doc$Docid;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocid:Z

    .line 26
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->docid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    .line 27
    return-object p0
.end method

.method public setDocumentVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion:Z

    .line 162
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->documentVersion_:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasImageUrl:Z

    .line 145
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->imageUrl_:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource:Z

    .line 111
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->source_:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public setSourceUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSourceUrl:Z

    .line 128
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->sourceUrl_:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public setStarRating(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating:Z

    .line 196
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->starRating_:I

    .line 197
    return-object p0
.end method

.method public setTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec:Z

    .line 179
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->timestampMsec_:J

    .line 180
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle:Z

    .line 213
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->title_:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "value"

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl:Z

    .line 94
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$Review;->url_:Ljava/lang/String;

    .line 95
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
    .line 376
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSource()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 385
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocumentVersion()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 386
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocumentVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 388
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTimestampMsec()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 389
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTimestampMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 391
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasStarRating()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 392
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 394
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 395
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 397
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasComment()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 398
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 400
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentId()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 401
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 403
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasCommentRating()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 404
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 406
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getProList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 409
    .end local v0           #element:Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getConList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 412
    .end local v0           #element:Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorGaiaId()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 413
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorGaiaId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 415
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasAuthorType()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 416
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getAuthorType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 418
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasImageUrl()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 419
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 421
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasSourceUrl()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 422
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getSourceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 424
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasDocid()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 425
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 427
    :cond_10
    return-void
.end method
