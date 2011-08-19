.class public final Lcom/ecareme/pixwe/media/ConcatenatedDataSource;
.super Ljava/lang/Object;
.source "ConcatenatedDataSource.java"

# interfaces
.implements Lcom/ecareme/pixwe/media/DataSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConcatenatedDataSource"


# instance fields
.field private final mFirst:Lcom/ecareme/pixwe/media/DataSource;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/media/DataSource;Lcom/ecareme/pixwe/media/DataSource;)V
    .locals 0
    .parameter "first"
    .parameter "second"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/ecareme/pixwe/media/ConcatenatedDataSource;->mFirst:Lcom/ecareme/pixwe/media/DataSource;

    .line 29
    return-void
.end method


# virtual methods
.method public getDatabaseUris()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lcom/ecareme/pixwe/media/ConcatenatedDataSource;->mFirst:Lcom/ecareme/pixwe/media/DataSource;

    invoke-interface {v1}, Lcom/ecareme/pixwe/media/DataSource;->getDatabaseUris()[Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, first:[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/ArrayUtils;->addAll([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getThumbnailCache()Lcom/ecareme/pixwe/media/DiskCache;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ConcatenatedDataSource should not create MediaItems"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadItemsForSet(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaSet;II)V
    .locals 3
    .parameter "feed"
    .parameter "parentSet"
    .parameter "rangeStart"
    .parameter "rangeEnd"

    .prologue
    .line 36
    if-eqz p2, :cond_0

    .line 37
    iget-object v0, p2, Lcom/ecareme/pixwe/media/MediaSet;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    .line 38
    .local v0, dataSource:Lcom/ecareme/pixwe/media/DataSource;
    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ecareme/pixwe/media/DataSource;->loadItemsForSet(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaSet;II)V

    .line 44
    .end local v0           #dataSource:Lcom/ecareme/pixwe/media/DataSource;
    :cond_0
    :goto_0
    return-void

    .line 41
    .restart local v0       #dataSource:Lcom/ecareme/pixwe/media/DataSource;
    :cond_1
    const-string v1, "ConcatenatedDataSource"

    const-string v2, "MediaSet was not added to the feed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadMediaSets(Lcom/ecareme/pixwe/media/MediaFeed;)V
    .locals 1
    .parameter "feed"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ConcatenatedDataSource;->mFirst:Lcom/ecareme/pixwe/media/DataSource;

    invoke-interface {v0, p1}, Lcom/ecareme/pixwe/media/DataSource;->loadMediaSets(Lcom/ecareme/pixwe/media/MediaFeed;)V

    .line 33
    return-void
.end method

.method public performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 9
    .parameter "operation"
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaBucket;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v6, singleBucket:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 50
    .local v3, numBuckets:I
    const/4 v4, 0x1

    .line 51
    .local v4, retVal:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 64
    return v4

    .line 52
    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 53
    .local v0, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    iget-object v5, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 54
    .local v5, set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v5, :cond_1

    .line 55
    iget-object v1, v5, Lcom/ecareme/pixwe/media/MediaSet;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    .line 56
    .local v1, dataSource:Lcom/ecareme/pixwe/media/DataSource;
    if-eqz v1, :cond_2

    .line 57
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-interface {v1, p1, v6, p3}, Lcom/ecareme/pixwe/media/DataSource;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z

    move-result v7

    and-int/2addr v4, v7

    .line 51
    .end local v1           #dataSource:Lcom/ecareme/pixwe/media/DataSource;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .restart local v1       #dataSource:Lcom/ecareme/pixwe/media/DataSource;
    :cond_2
    const-string v7, "ConcatenatedDataSource"

    const-string v8, "MediaSet was not added to the feed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public refresh(Lcom/ecareme/pixwe/media/MediaFeed;[Ljava/lang/String;)V
    .locals 1
    .parameter "feed"
    .parameter "databaseUris"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ConcatenatedDataSource;->mFirst:Lcom/ecareme/pixwe/media/DataSource;

    invoke-interface {v0, p1, p2}, Lcom/ecareme/pixwe/media/DataSource;->refresh(Lcom/ecareme/pixwe/media/MediaFeed;[Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ConcatenatedDataSource;->mFirst:Lcom/ecareme/pixwe/media/DataSource;

    invoke-interface {v0}, Lcom/ecareme/pixwe/media/DataSource;->shutdown()V

    .line 73
    return-void
.end method
