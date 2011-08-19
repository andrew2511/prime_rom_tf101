.class public final Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Rating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Rating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AggregateRating"
.end annotation


# instance fields
.field private cachedSize:I

.field private fiveStarRatings_:J

.field private fourStarRatings_:J

.field private hasFiveStarRatings:Z

.field private hasFourStarRatings:Z

.field private hasOneStarRatings:Z

.field private hasRatingsCount:Z

.field private hasStarRating:Z

.field private hasThreeStarRatings:Z

.field private hasThumbsDownCount:Z

.field private hasThumbsUpCount:Z

.field private hasTwoStarRatings:Z

.field private hasType:Z

.field private oneStarRatings_:J

.field private ratingsCount_:J

.field private starRating_:F

.field private threeStarRatings_:J

.field private thumbsDownCount_:J

.field private thumbsUpCount_:J

.field private twoStarRatings_:J

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->type_:I

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->starRating_:F

    .line 150
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->ratingsCount_:J

    .line 167
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->oneStarRatings_:J

    .line 184
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->twoStarRatings_:J

    .line 201
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->threeStarRatings_:J

    .line 218
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fourStarRatings_:J

    .line 235
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fiveStarRatings_:J

    .line 252
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsUpCount_:J

    .line 269
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsDownCount_:J

    .line 337
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->cachedSize:I

    .line 106
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->cachedSize:I

    if-gez v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getSerializedSize()I

    .line 343
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->cachedSize:I

    return v0
.end method

.method public getFiveStarRatings()J
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fiveStarRatings_:J

    return-wide v0
.end method

.method public getFourStarRatings()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fourStarRatings_:J

    return-wide v0
.end method

.method public getOneStarRatings()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->oneStarRatings_:J

    return-wide v0
.end method

.method public getRatingsCount()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->ratingsCount_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasStarRating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getStarRating()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasRatingsCount()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getRatingsCount()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 360
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasOneStarRatings()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 361
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getOneStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasTwoStarRatings()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 365
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getTwoStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThreeStarRatings()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 369
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThreeStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 372
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFourStarRatings()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 373
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFourStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 376
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFiveStarRatings()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 377
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFiveStarRatings()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 380
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsUpCount()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 381
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThumbsUpCount()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 384
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsDownCount()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 385
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThumbsDownCount()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    :cond_9
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->cachedSize:I

    .line 389
    return v0
.end method

.method public getStarRating()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->starRating_:F

    return v0
.end method

.method public getThreeStarRatings()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->threeStarRatings_:J

    return-wide v0
.end method

.method public getThumbsDownCount()J
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsDownCount_:J

    return-wide v0
.end method

.method public getThumbsUpCount()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsUpCount_:J

    return-wide v0
.end method

.method public getTwoStarRatings()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->twoStarRatings_:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->type_:I

    return v0
.end method

.method public hasFiveStarRatings()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFiveStarRatings:Z

    return v0
.end method

.method public hasFourStarRatings()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFourStarRatings:Z

    return v0
.end method

.method public hasOneStarRatings()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasOneStarRatings:Z

    return v0
.end method

.method public hasRatingsCount()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasRatingsCount:Z

    return v0
.end method

.method public hasStarRating()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasStarRating:Z

    return v0
.end method

.method public hasThreeStarRatings()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThreeStarRatings:Z

    return v0
.end method

.method public hasThumbsDownCount()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsDownCount:Z

    return v0
.end method

.method public hasThumbsUpCount()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsUpCount:Z

    return v0
.end method

.method public hasTwoStarRatings()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasTwoStarRatings:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 397
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 401
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    :sswitch_0
    return-object p0

    .line 407
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setType(I)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 411
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setStarRating(F)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 415
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setRatingsCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 419
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setOneStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 423
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setTwoStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 427
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setThreeStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 431
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setFourStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 435
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setFiveStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 439
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setThumbsUpCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 443
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->setThumbsDownCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    goto :goto_0

    .line 397
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
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
    .line 104
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v0

    return-object v0
.end method

.method public setFiveStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFiveStarRatings:Z

    .line 240
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fiveStarRatings_:J

    .line 241
    return-object p0
.end method

.method public setFourStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFourStarRatings:Z

    .line 223
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->fourStarRatings_:J

    .line 224
    return-object p0
.end method

.method public setOneStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasOneStarRatings:Z

    .line 172
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->oneStarRatings_:J

    .line 173
    return-object p0
.end method

.method public setRatingsCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasRatingsCount:Z

    .line 155
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->ratingsCount_:J

    .line 156
    return-object p0
.end method

.method public setStarRating(F)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasStarRating:Z

    .line 138
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->starRating_:F

    .line 139
    return-object p0
.end method

.method public setThreeStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThreeStarRatings:Z

    .line 206
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->threeStarRatings_:J

    .line 207
    return-object p0
.end method

.method public setThumbsDownCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsDownCount:Z

    .line 274
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsDownCount_:J

    .line 275
    return-object p0
.end method

.method public setThumbsUpCount(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsUpCount:Z

    .line 257
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->thumbsUpCount_:J

    .line 258
    return-object p0
.end method

.method public setTwoStarRatings(J)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasTwoStarRatings:Z

    .line 189
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->twoStarRatings_:J

    .line 190
    return-object p0
.end method

.method public setType(I)Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1
    .parameter "value"

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasType:Z

    .line 121
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->type_:I

    .line 122
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasStarRating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getStarRating()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasRatingsCount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getRatingsCount()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasOneStarRatings()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getOneStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 317
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasTwoStarRatings()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getTwoStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 320
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThreeStarRatings()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThreeStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 323
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFourStarRatings()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 324
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFourStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 326
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasFiveStarRatings()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 327
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFiveStarRatings()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 329
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsUpCount()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 330
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThumbsUpCount()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 332
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->hasThumbsDownCount()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 333
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThumbsDownCount()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 335
    :cond_9
    return-void
.end method
