.class Lcom/android/gallery3d/data/Cluster;
.super Ljava/lang/Object;
.source "TimeClustering.java"


# instance fields
.field public mGeographicallySeparatedFromPrevCluster:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    .line 355
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/gallery3d/data/SmallItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    return-void
.end method

.method public generateCaption(Landroid/content/Context;)Ljava/lang/String;
    .locals 24
    .parameter "context"

    .prologue
    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 376
    .local v21, n:I
    const-wide/16 v5, 0x0

    .line 377
    .local v5, minTimestamp:J
    const-wide/16 v7, 0x0

    .line 379
    .local v7, maxTimestamp:J
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/SmallItem;

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v22, v0

    .line 381
    .local v22, t:J
    const-wide/16 v12, 0x0

    cmp-long v4, v22, v12

    if-nez v4, :cond_0

    .line 379
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 382
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v4, v5, v12

    if-nez v4, :cond_1

    .line 383
    move-wide/from16 v7, v22

    move-wide/from16 v5, v22

    goto :goto_1

    .line 385
    :cond_1
    move-wide v0, v5

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 386
    move-wide v0, v7

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_1

    .line 389
    .end local v22           #t:J
    :cond_2
    const-wide/16 v12, 0x0

    cmp-long v4, v5, v12

    if-nez v4, :cond_3

    const-string v4, ""

    .line 433
    :goto_2
    return-object v4

    .line 392
    :cond_3
    const-string v4, "MMddyy"

    invoke-static {v4, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 394
    .local v20, minDay:Ljava/lang/String;
    const-string v4, "MMddyy"

    invoke-static {v4, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 397
    .local v19, maxDay:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    move-object/from16 v0, v19

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 400
    const/high16 v9, 0x8

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v15

    .line 406
    .local v15, caption:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 407
    const v9, 0x10010

    .line 410
    .local v9, flags:I
    move-object/from16 v0, p1

    move-wide v1, v5

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v16

    .line 412
    .local v16, dateRangeWithOptionalYear:Ljava/lang/String;
    or-int/lit8 v4, v9, 0x4

    move-object/from16 v0, p1

    move-wide v1, v5

    move v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v17

    .line 414
    .local v17, dateRangeWithYear:Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 419
    add-long v12, v5, v7

    const-wide/16 v14, 0x2

    div-long v10, v12, v14

    .line 420
    .local v10, midTimestamp:J
    or-int/lit8 v14, v9, 0x1

    move-object/from16 v9, p1

    move-wide v12, v10

    invoke-static/range {v9 .. v14}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v9           #flags:I
    move-result-object v15

    .end local v10           #midTimestamp:J
    .end local v16           #dateRangeWithOptionalYear:Ljava/lang/String;
    .end local v17           #dateRangeWithYear:Ljava/lang/String;
    :cond_4
    :goto_3
    move-object v4, v15

    .line 433
    goto :goto_2

    .line 427
    .end local v15           #caption:Ljava/lang/String;
    :cond_5
    const v9, 0x10030

    .restart local v9       #flags:I
    move-object/from16 v4, p1

    .line 429
    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #caption:Ljava/lang/String;
    goto :goto_3
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastItem()Lcom/android/gallery3d/data/SmallItem;
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 367
    .local v0, n:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/data/SmallItem;

    move-object v1, p0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
