.class public interface abstract Lcom/ecareme/pixwe/media/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# virtual methods
.method public abstract getDatabaseUris()[Ljava/lang/String;
.end method

.method public abstract getThumbnailCache()Lcom/ecareme/pixwe/media/DiskCache;
.end method

.method public abstract loadItemsForSet(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaSet;II)V
.end method

.method public abstract loadMediaSets(Lcom/ecareme/pixwe/media/MediaFeed;)V
.end method

.method public abstract performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z
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
.end method

.method public abstract refresh(Lcom/ecareme/pixwe/media/MediaFeed;[Ljava/lang/String;)V
.end method

.method public abstract shutdown()V
.end method
