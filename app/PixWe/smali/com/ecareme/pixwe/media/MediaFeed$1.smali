.class Lcom/ecareme/pixwe/media/MediaFeed$1;
.super Ljava/lang/Object;
.source "MediaFeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/MediaFeed;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/MediaFeed;

.field private final synthetic val$copyMediaBuckets:Ljava/util/ArrayList;

.field private final synthetic val$data:Ljava/lang/Object;

.field private final synthetic val$operation:I


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/MediaFeed;Ljava/util/ArrayList;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->val$copyMediaBuckets:Ljava/util/ArrayList;

    iput p3, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->val$operation:I

    iput-object p4, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->val$data:Ljava/lang/Object;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 256
    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->val$copyMediaBuckets:Ljava/util/ArrayList;

    .line 257
    .local v6, mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    iget v10, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->val$operation:I

    if-nez v10, :cond_8

    .line 258
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 259
    .local v7, numBuckets:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v7, :cond_3

    .line 283
    iget-object v10, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v10}, Lcom/ecareme/pixwe/media/MediaFeed;->access$2(Lcom/ecareme/pixwe/media/MediaFeed;)Lcom/ecareme/pixwe/media/DataSource;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 284
    iget-object v10, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->val$data:Ljava/lang/Object;

    instance-of v10, v10, Lcom/ecareme/pixwe/media/MediaItem;

    if-eqz v10, :cond_1

    .line 285
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->val$data:Ljava/lang/Object;

    check-cast v3, Lcom/ecareme/pixwe/media/MediaItem;

    .line 286
    .local v3, item:Lcom/ecareme/pixwe/media/MediaItem;
    iget-object v9, v3, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 287
    .local v9, set:Lcom/ecareme/pixwe/media/MediaSet;
    iget-object v10, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v10}, Lcom/ecareme/pixwe/media/MediaFeed;->access$0(Lcom/ecareme/pixwe/media/MediaFeed;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/MediaClustering;

    .line 288
    .local v1, clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    iget-object v10, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v10, v3, v9}, Lcom/ecareme/pixwe/media/MediaFeed;->access$1(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaSet;)V

    .line 289
    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {v1, v3}, Lcom/ecareme/pixwe/media/MediaClustering;->removeItemFromClustering(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 292
    :cond_0
    invoke-virtual {v9}, Lcom/ecareme/pixwe/media/MediaSet;->updateNumExpectedItems()V

    .line 293
    invoke-virtual {v9, v13}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 295
    .end local v1           #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    .end local v3           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v9           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_1
    iget-object v10, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v10}, Lcom/ecareme/pixwe/media/MediaFeed;->access$2(Lcom/ecareme/pixwe/media/MediaFeed;)Lcom/ecareme/pixwe/media/DataSource;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->val$data:Ljava/lang/Object;

    invoke-interface {v10, v11, v6, v12}, Lcom/ecareme/pixwe/media/DataSource;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z

    .line 297
    :cond_2
    iget-object v10, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-virtual {v10, v13}, Lcom/ecareme/pixwe/media/MediaFeed;->updateListener(Z)V

    .line 298
    iget-object v10, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v10, v13}, Lcom/ecareme/pixwe/media/MediaFeed;->access$3(Lcom/ecareme/pixwe/media/MediaFeed;Z)V

    .line 302
    .end local v2           #i:I
    .end local v7           #numBuckets:I
    :goto_1
    return-void

    .line 260
    .restart local v2       #i:I
    .restart local v7       #numBuckets:I
    :cond_3
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 261
    .local v0, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    iget-object v9, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 262
    .restart local v9       #set:Lcom/ecareme/pixwe/media/MediaSet;
    iget-object v4, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 263
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    if-eqz v9, :cond_5

    if-nez v4, :cond_5

    .line 265
    iget-object v10, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-virtual {v10, v9}, Lcom/ecareme/pixwe/media/MediaFeed;->removeMediaSet(Lcom/ecareme/pixwe/media/MediaSet;)V

    .line 259
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_5
    if-eqz v9, :cond_4

    if-eqz v4, :cond_4

    .line 268
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 271
    .local v8, numItems:I
    iget-object v10, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v10}, Lcom/ecareme/pixwe/media/MediaFeed;->access$0(Lcom/ecareme/pixwe/media/MediaFeed;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/MediaClustering;

    .line 272
    .restart local v1       #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    if-lt v5, v8, :cond_6

    .line 279
    invoke-virtual {v9}, Lcom/ecareme/pixwe/media/MediaSet;->updateNumExpectedItems()V

    .line 280
    invoke-virtual {v9, v13}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    goto :goto_2

    .line 273
    :cond_6
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/MediaItem;

    .line 274
    .restart local v3       #item:Lcom/ecareme/pixwe/media/MediaItem;
    iget-object v10, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v10, v3, v9}, Lcom/ecareme/pixwe/media/MediaFeed;->access$1(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaSet;)V

    .line 275
    if-eqz v1, :cond_7

    .line 276
    invoke-virtual {v1, v3}, Lcom/ecareme/pixwe/media/MediaClustering;->removeItemFromClustering(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 272
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 300
    .end local v0           #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    .end local v1           #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    .end local v2           #i:I
    .end local v3           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v5           #j:I
    .end local v7           #numBuckets:I
    .end local v8           #numItems:I
    .end local v9           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_8
    iget-object v10, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v10}, Lcom/ecareme/pixwe/media/MediaFeed;->access$2(Lcom/ecareme/pixwe/media/MediaFeed;)Lcom/ecareme/pixwe/media/DataSource;

    move-result-object v10

    iget v11, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->val$operation:I

    iget-object v12, p0, Lcom/ecareme/pixwe/media/MediaFeed$1;->val$data:Ljava/lang/Object;

    invoke-interface {v10, v11, v6, v12}, Lcom/ecareme/pixwe/media/DataSource;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z

    goto :goto_1
.end method
