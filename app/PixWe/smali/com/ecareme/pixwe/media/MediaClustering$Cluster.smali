.class public final Lcom/ecareme/pixwe/media/MediaClustering$Cluster;
.super Lcom/ecareme/pixwe/media/MediaSet;
.source "MediaClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/MediaClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cluster"
.end annotation


# static fields
.field private static final MMDDYY_FORMAT:Ljava/lang/String; = "MMddyy"


# instance fields
.field private mClusterChanged:Z

.field private mGeographicallySeparatedFromPrevCluster:Z

.field private mIsPicassaAlbum:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "isPicassaAlbum"

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MediaSet;-><init>()V

    .line 281
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    .line 282
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mClusterChanged:Z

    .line 283
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mIsPicassaAlbum:Z

    .line 287
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mIsPicassaAlbum:Z

    .line 288
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/MediaClustering$Cluster;)Z
    .locals 1
    .parameter

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    return v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/MediaClustering$Cluster;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    return-void
.end method


# virtual methods
.method public addItem(Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 353
    invoke-super {p0, p1}, Lcom/ecareme/pixwe/media/MediaSet;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mClusterChanged:Z

    .line 355
    return-void
.end method

.method public generateCaption(Landroid/content/Context;)V
    .locals 20
    .parameter "context"

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mClusterChanged:Z

    move v4, v0

    if-eqz v4, :cond_3

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 294
    .local v19, resources:Landroid/content/res/Resources;
    const-wide/16 v5, -0x1

    .line 295
    .local v5, minTimestamp:J
    const-wide/16 v7, -0x1

    .line 296
    .local v7, maxTimestamp:J
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->areTimestampsAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 297
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mMinTimestamp:J

    move-wide v5, v0

    .line 298
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mMaxTimestamp:J

    move-wide v7, v0

    .line 304
    :cond_0
    :goto_0
    const-wide/16 v12, -0x1

    cmp-long v4, v5, v12

    if-eqz v4, :cond_6

    .line 305
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mIsPicassaAlbum:Z

    move v4, v0

    if-eqz v4, :cond_1

    .line 306
    sget-object v4, Lcom/ecareme/pixwe/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v12, v4

    sub-long/2addr v5, v12

    .line 307
    sget-object v4, Lcom/ecareme/pixwe/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v12, v4

    sub-long/2addr v7, v12

    .line 309
    :cond_1
    const-string v4, "MMddyy"

    invoke-static {v4, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 310
    .local v18, minDay:Ljava/lang/String;
    const-string v4, "MMddyy"

    invoke-static {v4, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 312
    .local v17, maxDay:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    move-object/from16 v0, v17

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 315
    const/high16 v9, 0x8

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mName:Ljava/lang/String;

    .line 320
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    const v9, 0x10010

    .line 324
    .local v9, flags:I
    move-object/from16 v0, p1

    move-wide v1, v5

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v15

    .line 326
    .local v15, dateRangeWithOptionalYear:Ljava/lang/String;
    or-int/lit8 v4, v9, 0x4

    .line 325
    move-object/from16 v0, p1

    move-wide v1, v5

    move v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v16

    .line 327
    .local v16, dateRangeWithYear:Ljava/lang/String;
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 332
    add-long v12, v5, v7

    const-wide/16 v14, 0x2

    div-long v10, v12, v14

    .line 334
    .local v10, midTimestamp:J
    or-int/lit8 v14, v9, 0x1

    move-object/from16 v9, p1

    move-wide v12, v10

    .line 333
    invoke-static/range {v9 .. v14}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v9           #flags:I
    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mName:Ljava/lang/String;

    .line 346
    .end local v10           #midTimestamp:J
    .end local v15           #dateRangeWithOptionalYear:Ljava/lang/String;
    .end local v16           #dateRangeWithYear:Ljava/lang/String;
    .end local v17           #maxDay:Ljava/lang/String;
    .end local v18           #minDay:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->updateNumExpectedItems()V

    .line 347
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->generateTitle(Z)V

    .line 348
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mClusterChanged:Z

    .line 350
    .end local v5           #minTimestamp:J
    .end local v7           #maxTimestamp:J
    .end local v19           #resources:Landroid/content/res/Resources;
    :cond_3
    return-void

    .line 299
    .restart local v5       #minTimestamp:J
    .restart local v7       #maxTimestamp:J
    .restart local v19       #resources:Landroid/content/res/Resources;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->areAddedTimestampsAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mMinAddedTimestamp:J

    move-wide v5, v0

    .line 301
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mMaxAddedTimestamp:J

    move-wide v7, v0

    goto/16 :goto_0

    .line 340
    .restart local v17       #maxDay:Ljava/lang/String;
    .restart local v18       #minDay:Ljava/lang/String;
    :cond_5
    const v9, 0x10030

    .restart local v9       #flags:I
    move-object/from16 v4, p1

    .line 341
    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mName:Ljava/lang/String;

    goto :goto_1

    .line 344
    .end local v9           #flags:I
    .end local v17           #maxDay:Ljava/lang/String;
    .end local v18           #minDay:Ljava/lang/String;
    :cond_6
    const v4, 0x7f06003b

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mName:Ljava/lang/String;

    goto :goto_1
.end method

.method public getLastItem()Lcom/ecareme/pixwe/media/MediaItem;
    .locals 3

    .prologue
    .line 366
    invoke-super {p0}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 367
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mNumItemsLoaded:I

    if-nez v1, :cond_1

    .line 368
    :cond_0
    const/4 v1, 0x0

    .line 370
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_1
    iget v1, p0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mNumItemsLoaded:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ecareme/pixwe/media/MediaItem;

    move-object v1, p0

    goto :goto_0
.end method

.method public removeItem(Lcom/ecareme/pixwe/media/MediaItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 358
    invoke-super {p0, p1}, Lcom/ecareme/pixwe/media/MediaSet;->removeItem(Lcom/ecareme/pixwe/media/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mClusterChanged:Z

    move v0, v1

    .line 362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
