.class public final Lcom/ecareme/pixwe/media/MediaFeed;
.super Ljava/lang/Object;
.source "MediaFeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/MediaFeed$Listener;
    }
.end annotation


# static fields
.field private static final JOIN_TIMEOUT:I = 0x32

.field private static final NUM_INTERRUPT_RETRIES:I = 0x1e

.field private static final NUM_ITEMS_LOOKAHEAD:I = 0x3c

.field public static final OPERATION_CROP:I = 0x2

.field public static final OPERATION_DELETE:I = 0x0

.field public static final OPERATION_ROTATE:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAlbumSourceThread:Ljava/lang/Thread;

.field private mBufferedRange:Lcom/ecareme/pixwe/media/IndexRange;

.field private mClusterSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ecareme/pixwe/media/MediaSet;",
            "Lcom/ecareme/pixwe/media/MediaClustering;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataSource:Lcom/ecareme/pixwe/media/DataSource;

.field private mDataSourceThread:Ljava/lang/Thread;

.field private mExpandedMediaSetIndex:I

.field private mInClusteringMode:Z

.field private volatile mIsShutdown:Z

.field private mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

.field private mListenerNeedsLayout:Z

.field private mListenerNeedsUpdate:Z

.field private mLoading:Z

.field private mMediaFeedNeedsToRun:Z

.field private mMediaFilter:Lcom/ecareme/pixwe/media/MediaFilter;

.field private mMediaFilteredSet:Lcom/ecareme/pixwe/media/MediaSet;

.field private mMediaSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedRefresh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleImageMode:Z

.field private mSingleWrapper:Lcom/ecareme/pixwe/media/MediaSet;

.field private mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

.field private mWaitingForMediaScanner:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ecareme/pixwe/media/DataSource;Lcom/ecareme/pixwe/media/MediaFeed$Listener;)V
    .locals 5
    .parameter "context"
    .parameter "dataSource"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "MediaFeed"

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/ecareme/pixwe/media/IndexRange;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/IndexRange;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    .line 50
    new-instance v0, Lcom/ecareme/pixwe/media/IndexRange;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/IndexRange;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mBufferedRange:Lcom/ecareme/pixwe/media/IndexRange;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 54
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 55
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 56
    new-instance v0, Lcom/ecareme/pixwe/media/MediaSet;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/MediaSet;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mSingleWrapper:Lcom/ecareme/pixwe/media/MediaSet;

    .line 57
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mInClusteringMode:Z

    .line 58
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    .line 63
    iput-object v4, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    .line 64
    iput-object v4, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mContentObservers:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    .line 71
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mIsShutdown:Z

    .line 80
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mContext:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    .line 82
    iput-object p2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    .line 83
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mSingleWrapper:Lcom/ecareme/pixwe/media/MediaSet;

    invoke-virtual {v0, v3}, Lcom/ecareme/pixwe/media/MediaSet;->setNumExpectedItems(I)V

    .line 84
    iput-boolean v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mLoading:Z

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/MediaFeed;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Lcom/ecareme/pixwe/media/MediaFeed;->removeItemFromMediaSet(Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaSet;)V

    return-void
.end method

.method static synthetic access$10(Lcom/ecareme/pixwe/media/MediaFeed;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 925
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/MediaFeed;->refresh([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/media/MediaFeed;)Lcom/ecareme/pixwe/media/DataSource;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/media/MediaFeed;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    return-void
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/media/MediaFeed;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/media/MediaFeed;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MediaFeed;->loadMediaSets()V

    return-void
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/media/MediaFeed;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mWaitingForMediaScanner:Z

    return-void
.end method

.method static synthetic access$7(Lcom/ecareme/pixwe/media/MediaFeed;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 510
    invoke-direct {p0, p1, p2}, Lcom/ecareme/pixwe/media/MediaFeed;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8(Lcom/ecareme/pixwe/media/MediaFeed;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mWaitingForMediaScanner:Z

    return v0
.end method

.method static synthetic access$9(Lcom/ecareme/pixwe/media/MediaFeed;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mLoading:Z

    return-void
.end method

.method private disableClusteringIfNecessary()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 817
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mInClusteringMode:Z

    if-eqz v0, :cond_0

    .line 819
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mInClusteringMode:Z

    .line 820
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    move v0, v2

    .line 823
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private loadMediaSets()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 482
    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    if-nez v6, :cond_0

    .line 508
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v4, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 485
    .local v4, sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    monitor-enter v4

    .line 486
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 487
    .local v1, numSets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 491
    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    iget-object v7, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    invoke-interface {v7}, Lcom/ecareme/pixwe/media/DataSource;->getDatabaseUris()[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p0, v7}, Lcom/ecareme/pixwe/media/DataSource;->refresh(Lcom/ecareme/pixwe/media/MediaFeed;[Ljava/lang/String;)V

    .line 492
    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    invoke-interface {v6, p0}, Lcom/ecareme/pixwe/media/DataSource;->loadMediaSets(Lcom/ecareme/pixwe/media/MediaFeed;)V

    .line 493
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v5, setsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v1, :cond_2

    .line 500
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 501
    .local v2, numSetsToRemove:I
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v2, :cond_4

    .line 504
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 485
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    iput-boolean v8, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 507
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/ecareme/pixwe/media/MediaFeed;->updateListener(Z)V

    goto :goto_0

    .line 488
    .end local v2           #numSetsToRemove:I
    .end local v5           #setsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/MediaSet;

    .line 489
    .local v3, set:Lcom/ecareme/pixwe/media/MediaSet;
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/ecareme/pixwe/media/MediaSet;->mFlagForDelete:Z

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 495
    .end local v3           #set:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local v5       #setsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/MediaSet;

    .line 496
    .restart local v3       #set:Lcom/ecareme/pixwe/media/MediaSet;
    iget-boolean v6, v3, Lcom/ecareme/pixwe/media/MediaSet;->mFlagForDelete:Z

    if-eqz v6, :cond_3

    .line 497
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 502
    .end local v3           #set:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local v2       #numSetsToRemove:I
    :cond_4
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 485
    .end local v0           #i:I
    .end local v1           #numSets:I
    .end local v2           #numSetsToRemove:I
    .end local v5           #setsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private refresh([Ljava/lang/String;)V
    .locals 3
    .parameter "databaseUris"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    monitor-enter v0

    .line 927
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    if-eqz v1, :cond_0

    .line 928
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 929
    :try_start_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 926
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 933
    return-void

    .line 928
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 926
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private removeItemFromMediaSet(Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaSet;)V
    .locals 3
    .parameter "item"
    .parameter "mediaSet"

    .prologue
    .line 316
    invoke-virtual {p2, p1}, Lcom/ecareme/pixwe/media/MediaSet;->removeItem(Lcom/ecareme/pixwe/media/MediaItem;)Z

    .line 317
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaClustering;

    .line 319
    .local v0, clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0, p1}, Lcom/ecareme/pixwe/media/MediaClustering;->removeItemFromClustering(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 317
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 324
    return-void

    .line 317
    .end local v0           #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private repeatShuttingDownThread(Ljava/lang/Thread;)V
    .locals 5
    .parameter "targetThread"

    .prologue
    .line 120
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const-string v2, "MediaFeed"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot stop the thread: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    :goto_1
    return-void

    .line 121
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 123
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "MediaFeed"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot stop the thread: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 1
    .parameter "string"
    .parameter "duration"

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ecareme/pixwe/media/MediaFeed;->showToast(Ljava/lang/String;IZ)V

    .line 512
    return-void
.end method

.method private showToast(Ljava/lang/String;IZ)V
    .locals 2
    .parameter "string"
    .parameter "duration"
    .parameter "centered"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ecareme/pixwe/media/MediaFeed$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ecareme/pixwe/media/MediaFeed$3;-><init>(Lcom/ecareme/pixwe/media/MediaFeed;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 528
    :cond_0
    return-void
.end method


# virtual methods
.method public addItemToMediaSet(Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaSet;)V
    .locals 7
    .parameter "item"
    .parameter "mediaSet"

    .prologue
    const/4 v6, 0x1

    .line 228
    iput-object p2, p1, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 229
    invoke-virtual {p2, p1}, Lcom/ecareme/pixwe/media/MediaSet;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 230
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    monitor-enter v1

    .line 231
    :try_start_0
    iget v2, p1, Lcom/ecareme/pixwe/media/MediaItem;->mClusteringState:I

    if-nez v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaClustering;

    .line 233
    .local v0, clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/ecareme/pixwe/media/MediaClustering;

    .end local v0           #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    invoke-virtual {p2}, Lcom/ecareme/pixwe/media/MediaSet;->isPicassaAlbum()Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/ecareme/pixwe/media/MediaClustering;-><init>(Z)V

    .line 235
    .restart local v0       #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    iget-wide v2, p2, Lcom/ecareme/pixwe/media/MediaSet;->mMaxTimestamp:J

    iget-wide v4, p2, Lcom/ecareme/pixwe/media/MediaSet;->mMinTimestamp:J

    sub-long/2addr v2, v4

    invoke-virtual {p2}, Lcom/ecareme/pixwe/media/MediaSet;->getNumExpectedItems()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/ecareme/pixwe/media/MediaClustering;->setTimeRange(JI)V

    .line 238
    invoke-virtual {v0, p1}, Lcom/ecareme/pixwe/media/MediaClustering;->addItemForClustering(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 239
    const/4 v2, 0x1

    iput v2, p1, Lcom/ecareme/pixwe/media/MediaItem;->mClusteringState:I

    .line 230
    .end local v0           #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iput-boolean v6, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 243
    return-void

    .line 230
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addMediaSet(JLcom/ecareme/pixwe/media/DataSource;)Lcom/ecareme/pixwe/media/MediaSet;
    .locals 2
    .parameter "setId"
    .parameter "dataSource"

    .prologue
    .line 195
    new-instance v0, Lcom/ecareme/pixwe/media/MediaSet;

    invoke-direct {v0, p3}, Lcom/ecareme/pixwe/media/MediaSet;-><init>(Lcom/ecareme/pixwe/media/DataSource;)V

    .line 196
    .local v0, mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    iput-wide p1, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    .line 197
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 201
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 202
    return-object v0
.end method

.method public canExpandSet(I)Z
    .locals 8
    .parameter "slotIndex"

    .prologue
    const/4 v7, 0x0

    .line 786
    move v1, p1

    .line 787
    .local v1, mediaSetIndex:I
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-ltz v1, :cond_1

    .line 788
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/MediaSet;

    .line 789
    .local v2, set:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v3

    if-lez v3, :cond_1

    .line 790
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaItem;

    .line 791
    .local v0, item:Lcom/ecareme/pixwe/media/MediaItem;
    iget-wide v3, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move v3, v7

    .line 797
    .end local v0           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v2           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :goto_0
    return v3

    .line 794
    .restart local v0       #item:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v2       #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v2           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_1
    move v3, v7

    .line 797
    goto :goto_0
.end method

.method public copySlotStateFrom(Lcom/ecareme/pixwe/media/MediaFeed;)V
    .locals 1
    .parameter "another"

    .prologue
    .line 354
    iget v0, p1, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    iput v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    .line 355
    iget-boolean v0, p1, Lcom/ecareme/pixwe/media/MediaFeed;->mInClusteringMode:Z

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mInClusteringMode:Z

    .line 356
    return-void
.end method

.method public expandMediaSet(I)V
    .locals 4
    .parameter "mediaSetIndex"

    .prologue
    const/4 v3, 0x1

    .line 762
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    invoke-interface {v1, p0}, Lcom/ecareme/pixwe/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/ecareme/pixwe/media/MediaFeed;)V

    .line 765
    :cond_0
    iget v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    if-lez v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 767
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 768
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaSet;

    .line 769
    .local v0, set:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v1

    if-nez v1, :cond_1

    .line 770
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaSet;->clear()V

    .line 774
    .end local v0           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_1
    iput p1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    .line 775
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 781
    :cond_2
    invoke-virtual {p0, v3}, Lcom/ecareme/pixwe/media/MediaFeed;->updateListener(Z)V

    .line 782
    iput-boolean v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 783
    return-void
.end method

.method public getBreaks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClustering()Lcom/ecareme/pixwe/media/MediaClustering;
    .locals 3

    .prologue
    .line 210
    iget v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ecareme/pixwe/media/MediaClustering;

    move-object v0, p0

    .line 213
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClustersForSet(Lcom/ecareme/pixwe/media/MediaSet;)Ljava/util/ArrayList;
    .locals 3
    .parameter "set"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ecareme/pixwe/media/MediaSet;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaClustering$Cluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaClustering$Cluster;>;"
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/MediaClustering;

    .line 220
    .local v1, mediaClustering:Lcom/ecareme/pixwe/media/MediaClustering;
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/MediaClustering;->getClusters()Ljava/util/ArrayList;

    move-result-object v0

    .line 224
    .end local v1           #mediaClustering:Lcom/ecareme/pixwe/media/MediaClustering;
    :cond_0
    return-object v0
.end method

.method public getCurrentSet()Lcom/ecareme/pixwe/media/MediaSet;
    .locals 2

    .prologue
    .line 831
    iget v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 832
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ecareme/pixwe/media/MediaSet;

    move-object v0, p0

    .line 834
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataSource()Lcom/ecareme/pixwe/media/DataSource;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    return-object v0
.end method

.method public getExpandedMediaSet()Lcom/ecareme/pixwe/media/MediaSet;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 910
    iget v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v0, v2

    .line 914
    .end local p0
    :goto_0
    return-object v0

    .line 912
    .restart local p0
    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    move-object v0, v2

    .line 913
    goto :goto_0

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ecareme/pixwe/media/MediaSet;

    move-object v0, p0

    goto :goto_0
.end method

.method public getFilteredSet()Lcom/ecareme/pixwe/media/MediaSet;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFilteredSet:Lcom/ecareme/pixwe/media/MediaSet;

    return-object v0
.end method

.method public getMediaSet(J)Lcom/ecareme/pixwe/media/MediaSet;
    .locals 7
    .parameter "setId"

    .prologue
    const/4 v6, 0x0

    .line 173
    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    .line 175
    :try_start_0
    iget-object v4, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 176
    .local v2, mMediaSetsSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .end local v1           #i:I
    .end local v2           #mMediaSetsSize:I
    :cond_0
    move-object v4, v6

    .line 187
    :goto_1
    return-object v4

    .line 177
    .restart local v1       #i:I
    .restart local v2       #mMediaSetsSize:I
    :cond_1
    iget-object v4, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/MediaSet;

    .line 178
    .local v3, set:Lcom/ecareme/pixwe/media/MediaSet;
    iget-wide v4, v3, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 179
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/ecareme/pixwe/media/MediaSet;->mFlagForDelete:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 180
    goto :goto_1

    .line 176
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1           #i:I
    .end local v2           #mMediaSetsSize:I
    .end local v3           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    move-object v4, v6

    .line 184
    goto :goto_1
.end method

.method public getMediaSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumSlots()I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 332
    iget v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    .line 333
    .local v1, currentMediaSetIndex:I
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 334
    .local v2, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 336
    .local v3, mediaSetsSize:I
    iget-boolean v6, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mInClusteringMode:Z

    if-nez v6, :cond_3

    .line 337
    if-eq v1, v7, :cond_0

    if-lt v1, v3, :cond_1

    :cond_0
    move v6, v3

    .line 350
    .end local p0
    :goto_0
    return v6

    .line 340
    .restart local p0
    :cond_1
    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFilteredSet:Lcom/ecareme/pixwe/media/MediaSet;

    if-nez v6, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ecareme/pixwe/media/MediaSet;

    move-object v5, p0

    .line 341
    .local v5, setToUse:Lcom/ecareme/pixwe/media/MediaSet;
    :goto_1
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaSet;->getNumExpectedItems()I

    move-result v6

    goto :goto_0

    .line 340
    .end local v5           #setToUse:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local p0
    :cond_2
    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFilteredSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object v5, v6

    goto :goto_1

    .line 343
    :cond_3
    if-eq v1, v7, :cond_4

    if-ge v1, v3, :cond_4

    .line 344
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ecareme/pixwe/media/MediaSet;

    .line 345
    .local v4, set:Lcom/ecareme/pixwe/media/MediaSet;
    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaClustering;

    .line 346
    .local v0, clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    if-eqz v0, :cond_4

    .line 347
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaClustering;->getClustersForDisplay()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_0

    .line 350
    .end local v0           #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    .end local v4           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getSetForSlot(I)Lcom/ecareme/pixwe/media/MediaSet;
    .locals 12
    .parameter "slotIndex"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 385
    if-gez p1, :cond_0

    move-object v9, v10

    .line 422
    .end local p0
    :goto_0
    return-object v9

    .line 389
    .restart local p0
    :cond_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 390
    .local v5, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 391
    .local v6, mediaSetsSize:I
    iget v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    .line 393
    .local v3, currentMediaSetIndex:I
    iget-boolean v9, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mInClusteringMode:Z

    if-nez v9, :cond_7

    .line 394
    if-eq v3, v11, :cond_1

    if-lt v3, v6, :cond_3

    .line 395
    :cond_1
    if-lt p1, v6, :cond_2

    move-object v9, v10

    .line 396
    goto :goto_0

    .line 398
    :cond_2
    iget-object v9, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ecareme/pixwe/media/MediaSet;

    move-object v9, p0

    goto :goto_0

    .line 400
    .restart local p0
    :cond_3
    iget-object v9, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mSingleWrapper:Lcom/ecareme/pixwe/media/MediaSet;

    invoke-virtual {v9}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v9

    if-nez v9, :cond_4

    .line 401
    iget-object v9, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mSingleWrapper:Lcom/ecareme/pixwe/media/MediaSet;

    invoke-virtual {v9, v10}, Lcom/ecareme/pixwe/media/MediaSet;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 403
    :cond_4
    iget-object v9, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFilteredSet:Lcom/ecareme/pixwe/media/MediaSet;

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ecareme/pixwe/media/MediaSet;

    move-object v8, v9

    .line 404
    .local v8, setToUse:Lcom/ecareme/pixwe/media/MediaSet;
    :goto_1
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 405
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v9

    if-lt p1, v9, :cond_6

    move-object v9, v10

    .line 406
    goto :goto_0

    .line 403
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v8           #setToUse:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_5
    iget-object v9, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFilteredSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object v8, v9

    goto :goto_1

    .line 408
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .restart local v8       #setToUse:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_6
    iget-object v9, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mSingleWrapper:Lcom/ecareme/pixwe/media/MediaSet;

    invoke-virtual {v9}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-virtual {v10, v11, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v9, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mSingleWrapper:Lcom/ecareme/pixwe/media/MediaSet;

    goto :goto_0

    .line 410
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v8           #setToUse:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_7
    if-eq v3, v11, :cond_8

    if-ge v3, v6, :cond_8

    .line 411
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ecareme/pixwe/media/MediaSet;

    .line 412
    .local v7, set:Lcom/ecareme/pixwe/media/MediaSet;
    iget-object v9, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/MediaClustering;

    .line 413
    .local v1, clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    if-eqz v1, :cond_8

    .line 414
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/MediaClustering;->getClustersForDisplay()Ljava/util/ArrayList;

    move-result-object v2

    .line 415
    .local v2, clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaClustering$Cluster;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, p1, :cond_8

    .line 416
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    .line 417
    .local v0, cluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;
    iget-object v9, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->generateCaption(Landroid/content/Context;)V

    move-object v9, v0

    .line 418
    goto/16 :goto_0

    .end local v0           #cluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;
    .end local v1           #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    .end local v2           #clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaClustering$Cluster;>;"
    .end local v7           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_8
    move-object v9, v10

    .line 422
    goto/16 :goto_0
.end method

.method public getWaitingForMediaScanner()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mWaitingForMediaScanner:Z

    return v0
.end method

.method public hasExpandedMediaSet()Z
    .locals 2

    .prologue
    .line 801
    iget v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClustered()Z
    .locals 1

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mInClusteringMode:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mLoading:Z

    return v0
.end method

.method public isSingleImageMode()Z
    .locals 1

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mSingleImageMode:Z

    return v0
.end method

.method public moveSetToFront(Lcom/ecareme/pixwe/media/MediaSet;)V
    .locals 10
    .parameter "mediaSet"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 862
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 863
    .local v2, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 864
    .local v3, numSets:I
    if-nez v3, :cond_1

    .line 865
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ecareme/pixwe/media/MediaSet;

    .line 869
    .local v7, setToFind:Lcom/ecareme/pixwe/media/MediaSet;
    if-eq v7, p1, :cond_0

    .line 872
    invoke-virtual {v2, v8, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 873
    const/4 v1, -0x1

    .line 874
    .local v1, indexToSwapTill:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-lt v0, v3, :cond_3

    .line 882
    :goto_2
    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    .line 883
    move v0, v1

    :goto_3
    if-gt v0, v9, :cond_5

    .line 890
    :cond_2
    iput-boolean v9, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    goto :goto_0

    .line 875
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ecareme/pixwe/media/MediaSet;

    .line 876
    .local v4, set:Lcom/ecareme/pixwe/media/MediaSet;
    if-ne v4, p1, :cond_4

    .line 877
    invoke-virtual {v2, v0, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 878
    move v1, v0

    .line 879
    goto :goto_2

    .line 874
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 884
    .end local v4           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_5
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ecareme/pixwe/media/MediaSet;

    .line 885
    .local v5, setEnd:Lcom/ecareme/pixwe/media/MediaSet;
    sub-int v8, v0, v9

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ecareme/pixwe/media/MediaSet;

    .line 886
    .local v6, setPrev:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-virtual {v2, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 887
    sub-int v8, v0, v9

    invoke-virtual {v2, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 883
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public onPause()V
    .locals 10

    .prologue
    .line 936
    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mContentObservers:Ljava/util/HashMap;

    .line 937
    .local v6, observers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/database/ContentObserver;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 938
    .local v3, numObservers:I
    if-lez v3, :cond_0

    .line 939
    new-array v8, v3, [Ljava/lang/String;

    .line 940
    .local v8, uris:[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 941
    .local v2, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 942
    invoke-interface {v2, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8           #uris:[Ljava/lang/String;
    check-cast v8, [Ljava/lang/String;

    .line 943
    .restart local v8       #uris:[Ljava/lang/String;
    array-length v4, v8

    .line 944
    .local v4, numUris:I
    iget-object v9, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 945
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_1

    .line 955
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i:I
    .end local v2           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #numUris:I
    .end local v8           #uris:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 956
    return-void

    .line 946
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #i:I
    .restart local v2       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #numUris:I
    .restart local v8       #uris:[Ljava/lang/String;
    :cond_1
    aget-object v7, v8, v1

    .line 947
    .local v7, uri:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 948
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/ContentObserver;

    .line 949
    .local v5, observer:Landroid/database/ContentObserver;
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 950
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    .end local v5           #observer:Landroid/database/ContentObserver;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 13

    .prologue
    .line 959
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mContext:Landroid/content/Context;

    .line 960
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    .line 961
    .local v2, dataSource:Lcom/ecareme/pixwe/media/DataSource;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    invoke-interface {v2}, Lcom/ecareme/pixwe/media/DataSource;->getDatabaseUris()[Ljava/lang/String;

    move-result-object v10

    .line 965
    .local v10, uris:[Ljava/lang/String;
    iget-object v7, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mContentObservers:Ljava/util/HashMap;

    .line 966
    .local v7, observers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/database/ContentObserver;>;"
    instance-of v11, v0, Lcom/ecareme/pixwe/view/common/HomeActivity;

    if-eqz v11, :cond_2

    .line 967
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 968
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz v10, :cond_2

    .line 969
    array-length v5, v10

    .line 970
    .local v5, numUris:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v5, :cond_3

    .line 988
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #i:I
    .end local v5           #numUris:I
    :cond_2
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MediaFeed;->refresh()V

    goto :goto_0

    .line 971
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v4       #i:I
    .restart local v5       #numUris:I
    :cond_3
    aget-object v9, v10, v4

    .line 972
    .local v9, uri:Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/ContentObserver;

    .line 973
    .local v8, presentObserver:Landroid/database/ContentObserver;
    if-nez v8, :cond_4

    .line 974
    invoke-static {v0}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ecareme/pixwe/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 975
    .local v3, handler:Landroid/os/Handler;
    new-instance v6, Lcom/ecareme/pixwe/media/MediaFeed$4;

    invoke-direct {v6, p0, v3, v9}, Lcom/ecareme/pixwe/media/MediaFeed$4;-><init>(Lcom/ecareme/pixwe/media/MediaFeed;Landroid/os/Handler;Ljava/lang/String;)V

    .line 982
    .local v6, observer:Landroid/database/ContentObserver;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 983
    invoke-virtual {v7, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    .end local v3           #handler:Landroid/os/Handler;
    .end local v6           #observer:Landroid/database/ContentObserver;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public performClustering()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 838
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    if-eqz v3, :cond_0

    .line 839
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    invoke-interface {v3, p0}, Lcom/ecareme/pixwe/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/ecareme/pixwe/media/MediaFeed;)V

    .line 841
    :cond_0
    const/4 v2, 0x0

    .line 842
    .local v2, setToUse:Lcom/ecareme/pixwe/media/MediaSet;
    iget v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v4, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 843
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v4, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #setToUse:Lcom/ecareme/pixwe/media/MediaSet;
    check-cast v2, Lcom/ecareme/pixwe/media/MediaSet;

    .line 845
    .restart local v2       #setToUse:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_1
    if-eqz v2, :cond_2

    .line 846
    const/4 v1, 0x0

    .line 847
    .local v1, clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    iget-object v4, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    monitor-enter v4

    .line 849
    :try_start_0
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/ecareme/pixwe/media/MediaClustering;

    move-object v1, v0

    .line 850
    if-eqz v1, :cond_3

    .line 851
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Lcom/ecareme/pixwe/media/MediaClustering;->compute(Lcom/ecareme/pixwe/media/MediaItem;Z)V

    .line 847
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    iput-boolean v6, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mInClusteringMode:Z

    .line 857
    invoke-virtual {p0, v6}, Lcom/ecareme/pixwe/media/MediaFeed;->updateListener(Z)V

    .line 859
    .end local v1           #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    :cond_2
    :goto_0
    return-void

    .line 853
    .restart local v1       #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    :cond_3
    :try_start_1
    monitor-exit v4

    goto :goto_0

    .line 847
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)V
    .locals 6
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
            ")V"
        }
    .end annotation

    .prologue
    .line 246
    .local p2, mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 247
    .local v2, numBuckets:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    .local v0, copyMediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 251
    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    if-eqz v4, :cond_0

    .line 252
    iget-object v4, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    invoke-interface {v4, p0}, Lcom/ecareme/pixwe/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/ecareme/pixwe/media/MediaFeed;)V

    .line 254
    :cond_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/ecareme/pixwe/media/MediaFeed$1;

    invoke-direct {v4, p0, v0, p1, p3}, Lcom/ecareme/pixwe/media/MediaFeed$1;-><init>(Lcom/ecareme/pixwe/media/MediaFeed;Ljava/util/ArrayList;ILjava/lang/Object;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 304
    .local v3, operationThread:Ljava/lang/Thread;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Operation "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 306
    return-void

    .line 249
    .end local v3           #operationThread:Ljava/lang/Thread;
    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ecareme/pixwe/media/MediaBucket;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 918
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    monitor-enter v0

    .line 920
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    invoke-interface {v2}, Lcom/ecareme/pixwe/media/DataSource;->getDatabaseUris()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    monitor-exit v0

    .line 923
    :cond_0
    return-void

    .line 919
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeFilter()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 159
    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFilter:Lcom/ecareme/pixwe/media/MediaFilter;

    .line 160
    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFilteredSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 161
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    invoke-interface {v0, p0}, Lcom/ecareme/pixwe/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/ecareme/pixwe/media/MediaFeed;)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->updateListener(Z)V

    .line 165
    :cond_0
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 166
    return-void
.end method

.method public removeMediaSet(Lcom/ecareme/pixwe/media/MediaSet;)V
    .locals 2
    .parameter "set"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    monitor-enter v0

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 309
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 313
    return-void

    .line 309
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public replaceMediaSet(JLcom/ecareme/pixwe/media/DataSource;)Lcom/ecareme/pixwe/media/MediaSet;
    .locals 4
    .parameter "setId"
    .parameter "dataSource"

    .prologue
    .line 894
    const-string v1, "MediaFeed"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Replacing media set "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {p0, p1, p2}, Lcom/ecareme/pixwe/media/MediaFeed;->getMediaSet(J)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v0

    .line 896
    .local v0, set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaSet;->refresh()V

    .line 898
    :cond_0
    return-object v0
.end method

.method public restorePreviousClusteringState()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 805
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MediaFeed;->disableClusteringIfNecessary()Z

    move-result v0

    .line 806
    .local v0, retVal:Z
    if-eqz v0, :cond_1

    .line 807
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    invoke-interface {v1, p0}, Lcom/ecareme/pixwe/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/ecareme/pixwe/media/MediaFeed;)V

    .line 810
    :cond_0
    invoke-virtual {p0, v2}, Lcom/ecareme/pixwe/media/MediaFeed;->updateListener(Z)V

    .line 811
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 813
    :cond_1
    return v0
.end method

.method public run()V
    .locals 37

    .prologue
    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    move-object v9, v0

    .line 532
    .local v9, dataSource:Lcom/ecareme/pixwe/media/DataSource;
    const/16 v30, 0xa

    .line 533
    .local v30, sleepMs:I
    const/16 v34, 0xa

    invoke-static/range {v34 .. v34}, Landroid/os/Process;->setThreadPriority(I)V

    .line 534
    if-eqz v9, :cond_1

    .line 535
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v34

    if-nez v34, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mIsShutdown:Z

    move/from16 v34, v0

    if-eqz v34, :cond_2

    .line 758
    :cond_1
    :goto_1
    return-void

    .line 536
    :cond_2
    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/String;

    .line 537
    .local v10, databaseUris:[Ljava/lang/String;
    const/16 v25, 0x0

    .line 538
    .local v25, performRefresh:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 539
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    if-lez v35, :cond_4

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 542
    .local v22, numRequests:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move v0, v15

    move/from16 v1, v22

    if-lt v0, v1, :cond_f

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->clear()V

    .line 546
    const/16 v25, 0x1

    .line 548
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 549
    .local v32, uris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v10, :cond_3

    .line 550
    move-object v0, v10

    array-length v0, v0

    move/from16 v24, v0

    .line 551
    .local v24, numUris:I
    const/4 v15, 0x0

    :goto_3
    move v0, v15

    move/from16 v1, v24

    if-lt v0, v1, :cond_10

    .line 557
    .end local v24           #numUris:I
    :cond_3
    const/16 v35, 0x0

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object v10, v0

    .line 558
    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v35

    move-object/from16 v0, v35

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, [Ljava/lang/String;

    move-object v10, v0

    .line 538
    .end local v15           #i:I
    .end local v22           #numRequests:I
    .end local v32           #uris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    monitor-exit v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 561
    const/16 v29, 0x0

    .line 562
    .local v29, settingFeedAboutToChange:Z
    if-eqz v25, :cond_6

    .line 563
    if-eqz v9, :cond_6

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    move-object/from16 v34, v0

    if-eqz v34, :cond_5

    .line 565
    const/16 v29, 0x1

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/ecareme/pixwe/media/MediaFeed;)V

    .line 568
    :cond_5
    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-interface {v0, v1, v2}, Lcom/ecareme/pixwe/media/DataSource;->refresh(Lcom/ecareme/pixwe/media/MediaFeed;[Ljava/lang/String;)V

    .line 569
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 572
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsUpdate:Z

    move/from16 v34, v0

    if-eqz v34, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    move/from16 v34, v0

    if-nez v34, :cond_12

    .line 573
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    move-object/from16 v34, v0

    if-eqz v34, :cond_7

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 576
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lcom/ecareme/pixwe/media/MediaFeed$Listener;->onFeedChanged(Lcom/ecareme/pixwe/media/MediaFeed;Z)V

    .line 575
    monitor-exit v34
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 579
    :cond_7
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    :try_start_2
    invoke-static/range {v34 .. v35}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 590
    :goto_4
    const/16 v30, 0x12c

    .line 591
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    move/from16 v34, v0

    if-eqz v34, :cond_0

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object v5

    .line 594
    .local v5, app:Lcom/ecareme/pixwe/app/App;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/ecareme/pixwe/app/App;->isPaused()Z

    move-result v34

    if-nez v34, :cond_0

    .line 596
    if-eqz v29, :cond_8

    .line 597
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->updateListener(Z)V

    .line 599
    :cond_8
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 601
    .local v18, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    monitor-enter v18

    .line 602
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mExpandedMediaSetIndex:I

    move v12, v0

    .line 603
    .local v12, expandedSetIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move v0, v12

    move/from16 v1, v34

    if-lt v0, v1, :cond_9

    .line 604
    const/4 v12, -0x1

    .line 606
    :cond_9
    const/16 v34, -0x1

    move v0, v12

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    .line 608
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 609
    .local v23, numSets:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v33, v0

    .line 610
    .local v33, visibleRange:Lcom/ecareme/pixwe/media/IndexRange;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mBufferedRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v6, v0

    .line 611
    .local v6, bufferedRange:Lcom/ecareme/pixwe/media/IndexRange;
    const/16 v27, 0x1

    .line 612
    .local v27, scanMediaSets:Z
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_5
    move v0, v15

    move/from16 v1, v23

    if-lt v0, v1, :cond_13

    .line 645
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 646
    const/4 v15, 0x0

    :goto_6
    move v0, v15

    move/from16 v1, v23

    if-lt v0, v1, :cond_16

    .line 681
    .end local v6           #bufferedRange:Lcom/ecareme/pixwe/media/IndexRange;
    .end local v15           #i:I
    .end local v23           #numSets:I
    .end local v27           #scanMediaSets:Z
    .end local v33           #visibleRange:Lcom/ecareme/pixwe/media/IndexRange;
    :cond_a
    const/16 v34, -0x1

    move v0, v12

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 683
    .restart local v23       #numSets:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_7
    move v0, v15

    move/from16 v1, v23

    if-lt v0, v1, :cond_1c

    .line 697
    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #app:Lcom/ecareme/pixwe/app/App;
    check-cast v5, Lcom/ecareme/pixwe/media/MediaSet;

    move-object v0, v5

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    move/from16 v21, v0

    .line 698
    .local v21, numItemsLoaded:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v26, v0

    .line 700
    .local v26, requestedItems:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mInClusteringMode:Z

    move/from16 v34, v0

    if-eqz v34, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v34, v0

    if-eqz v34, :cond_b

    .line 701
    const/16 v26, 0x0

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ecareme/pixwe/media/MediaClustering;

    .line 703
    .local v7, clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    if-eqz v7, :cond_b

    .line 704
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/MediaClustering;->getClustersForDisplay()Ljava/util/ArrayList;

    move-result-object v8

    .line 705
    .local v8, clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaClustering$Cluster;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 706
    .local v19, numClusters:I
    const/4 v15, 0x0

    :goto_8
    move v0, v15

    move/from16 v1, v19

    if-lt v0, v1, :cond_1f

    .line 711
    .end local v7           #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    .end local v8           #clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaClustering$Cluster;>;"
    .end local v19           #numClusters:I
    :cond_b
    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/ecareme/pixwe/media/MediaSet;

    .line 712
    .local v28, set:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-virtual/range {v28 .. v28}, Lcom/ecareme/pixwe/media/MediaSet;->getNumExpectedItems()I

    move-result v34

    move/from16 v0, v21

    move/from16 v1, v34

    if-ge v0, v1, :cond_c

    .line 717
    monitor-enter v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 718
    :try_start_4
    div-int/lit8 v34, v26, 0x3c

    .line 719
    mul-int/lit8 v34, v34, 0x3c

    add-int/lit8 v34, v34, 0x3c

    .line 718
    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move/from16 v3, v21

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DataSource;->loadItemsForSet(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaSet;II)V

    .line 720
    invoke-virtual/range {v28 .. v28}, Lcom/ecareme/pixwe/media/MediaSet;->checkForDeletedItems()V

    .line 717
    monitor-exit v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 728
    :try_start_5
    move-object/from16 v0, v28

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    move/from16 v34, v0

    move/from16 v0, v21

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    move-object/from16 v34, v0

    if-eqz v34, :cond_c

    .line 729
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lcom/ecareme/pixwe/media/MediaFeed$Listener;->onFeedChanged(Lcom/ecareme/pixwe/media/MediaFeed;Z)V

    .line 731
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsLayout:Z

    .line 735
    .end local v15           #i:I
    .end local v21           #numItemsLoaded:I
    .end local v23           #numSets:I
    .end local v26           #requestedItems:I
    .end local v28           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFilter:Lcom/ecareme/pixwe/media/MediaFilter;

    move-object v13, v0

    .line 736
    .local v13, filter:Lcom/ecareme/pixwe/media/MediaFilter;
    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFilteredSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v34, v0

    if-nez v34, :cond_e

    .line 737
    const/16 v34, -0x1

    move v0, v12

    move/from16 v1, v34

    if-eq v0, v1, :cond_d

    .line 738
    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/ecareme/pixwe/media/MediaSet;

    .line 739
    .restart local v28       #set:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-virtual/range {v28 .. v28}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v17

    .line 740
    .local v17, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual/range {v28 .. v28}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v20

    .line 741
    .local v20, numItems:I
    new-instance v14, Lcom/ecareme/pixwe/media/MediaSet;

    invoke-direct {v14}, Lcom/ecareme/pixwe/media/MediaSet;-><init>()V

    .line 742
    .local v14, filteredSet:Lcom/ecareme/pixwe/media/MediaSet;
    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->setNumExpectedItems(I)V

    .line 743
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFilteredSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 744
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_9
    move v0, v15

    move/from16 v1, v20

    if-lt v0, v1, :cond_20

    .line 750
    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/MediaSet;->updateNumExpectedItems()V

    .line 751
    const/16 v34, 0x1

    move-object v0, v14

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 753
    .end local v14           #filteredSet:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v15           #i:I
    .end local v17           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v20           #numItems:I
    .end local v28           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_d
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->updateListener(Z)V

    .line 601
    :cond_e
    monitor-exit v18

    goto/16 :goto_0

    .end local v12           #expandedSetIndex:I
    .end local v13           #filter:Lcom/ecareme/pixwe/media/MediaFilter;
    :catchall_0
    move-exception v34

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v34

    .line 543
    .end local v18           #mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .end local v29           #settingFeedAboutToChange:Z
    .restart local v15       #i:I
    .restart local v22       #numRequests:I
    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {v10, v5}, Lcom/ecareme/pixwe/media/ArrayUtils;->addAll([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 542
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 552
    .restart local v24       #numUris:I
    .restart local v32       #uris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_10
    aget-object v31, v10, v15

    .line 553
    .local v31, uri:Ljava/lang/String;
    if-eqz v31, :cond_11

    .line 554
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_11
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 538
    .end local v15           #i:I
    .end local v22           #numRequests:I
    .end local v24           #numUris:I
    .end local v31           #uri:Ljava/lang/String;
    .end local v32           #uris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v35

    monitor-exit v34
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v35

    .line 575
    .restart local v29       #settingFeedAboutToChange:Z
    :catchall_2
    move-exception v35

    :try_start_7
    monitor-exit v34
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v35

    .line 580
    :catch_0
    move-exception v11

    .line 581
    .local v11, e:Ljava/lang/InterruptedException;
    goto/16 :goto_1

    .line 585
    .end local v11           #e:Ljava/lang/InterruptedException;
    :cond_12
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    :try_start_8
    invoke-static/range {v34 .. v35}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    .line 586
    :catch_1
    move-exception v11

    .line 587
    .restart local v11       #e:Ljava/lang/InterruptedException;
    goto/16 :goto_1

    .line 613
    .end local v11           #e:Ljava/lang/InterruptedException;
    .restart local v5       #app:Lcom/ecareme/pixwe/app/App;
    .restart local v6       #bufferedRange:Lcom/ecareme/pixwe/media/IndexRange;
    .restart local v12       #expandedSetIndex:I
    .restart local v15       #i:I
    .restart local v18       #mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .restart local v23       #numSets:I
    .restart local v27       #scanMediaSets:Z
    .restart local v33       #visibleRange:Lcom/ecareme/pixwe/media/IndexRange;
    :cond_13
    :try_start_9
    move-object/from16 v0, v33

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move/from16 v34, v0

    move v0, v15

    move/from16 v1, v34

    if-lt v0, v1, :cond_15

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v34, v0

    move v0, v15

    move/from16 v1, v34

    if-gt v0, v1, :cond_15

    if-eqz v27, :cond_15

    .line 614
    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/ecareme/pixwe/media/MediaSet;

    .line 615
    .restart local v28       #set:Lcom/ecareme/pixwe/media/MediaSet;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    move/from16 v21, v0

    .line 616
    .restart local v21       #numItemsLoaded:I
    invoke-virtual/range {v28 .. v28}, Lcom/ecareme/pixwe/media/MediaSet;->getNumExpectedItems()I

    move-result v34

    move/from16 v0, v21

    move/from16 v1, v34

    if-ge v0, v1, :cond_15

    const/16 v34, 0x8

    move/from16 v0, v21

    move/from16 v1, v34

    if-ge v0, v1, :cond_15

    .line 617
    monitor-enter v28
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 619
    const/16 v34, 0x8

    :try_start_a
    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move/from16 v3, v21

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DataSource;->loadItemsForSet(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaSet;II)V

    .line 620
    invoke-virtual/range {v28 .. v28}, Lcom/ecareme/pixwe/media/MediaSet;->checkForDeletedItems()V

    .line 617
    monitor-exit v28
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 626
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    move-object/from16 v34, v0

    if-eqz v34, :cond_14

    .line 627
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lcom/ecareme/pixwe/media/MediaFeed$Listener;->onFeedChanged(Lcom/ecareme/pixwe/media/MediaFeed;Z)V

    .line 629
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsLayout:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 631
    :cond_14
    const/16 v30, 0x64

    .line 612
    .end local v21           #numItemsLoaded:I
    .end local v28           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_15
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 617
    .restart local v21       #numItemsLoaded:I
    .restart local v28       #set:Lcom/ecareme/pixwe/media/MediaSet;
    :catchall_3
    move-exception v34

    :try_start_c
    monitor-exit v28
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v34

    .line 647
    .end local v21           #numItemsLoaded:I
    .end local v28           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_16
    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/ecareme/pixwe/media/MediaSet;

    .line 648
    .restart local v28       #set:Lcom/ecareme/pixwe/media/MediaSet;
    move-object v0, v6

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move/from16 v34, v0

    move v0, v15

    move/from16 v1, v34

    if-lt v0, v1, :cond_19

    move-object v0, v6

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v34, v0

    move v0, v15

    move/from16 v1, v34

    if-gt v0, v1, :cond_19

    .line 649
    if-eqz v27, :cond_18

    .line 650
    move-object/from16 v0, v28

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    move/from16 v21, v0

    .line 651
    .restart local v21       #numItemsLoaded:I
    invoke-virtual/range {v28 .. v28}, Lcom/ecareme/pixwe/media/MediaSet;->getNumExpectedItems()I

    move-result v34

    move/from16 v0, v21

    move/from16 v1, v34

    if-ge v0, v1, :cond_18

    const/16 v34, 0x8

    move/from16 v0, v21

    move/from16 v1, v34

    if-ge v0, v1, :cond_18

    .line 652
    monitor-enter v28
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 653
    const/16 v34, 0x8

    :try_start_e
    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move/from16 v3, v21

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DataSource;->loadItemsForSet(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaSet;II)V

    .line 654
    invoke-virtual/range {v28 .. v28}, Lcom/ecareme/pixwe/media/MediaSet;->checkForDeletedItems()V

    .line 652
    monitor-exit v28
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 660
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    move-object/from16 v34, v0

    if-eqz v34, :cond_17

    .line 661
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lcom/ecareme/pixwe/media/MediaFeed$Listener;->onFeedChanged(Lcom/ecareme/pixwe/media/MediaFeed;Z)V

    .line 663
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsLayout:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 665
    :cond_17
    const/16 v30, 0x64

    .line 666
    const/16 v27, 0x0

    .line 646
    .end local v21           #numItemsLoaded:I
    :cond_18
    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 652
    .restart local v21       #numItemsLoaded:I
    :catchall_4
    move-exception v34

    :try_start_10
    monitor-exit v28
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v34

    .line 669
    .end local v21           #numItemsLoaded:I
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsUpdate:Z

    move/from16 v34, v0

    if-nez v34, :cond_18

    move-object v0, v6

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move/from16 v34, v0

    move v0, v15

    move/from16 v1, v34

    if-lt v0, v1, :cond_1a

    move-object v0, v6

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v34, v0

    move v0, v15

    move/from16 v1, v34

    if-le v0, v1, :cond_18

    .line 671
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ecareme/pixwe/media/MediaClustering;

    .line 672
    .restart local v7       #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    if-eqz v7, :cond_1b

    .line 673
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/MediaClustering;->clear()V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    :cond_1b
    invoke-virtual/range {v28 .. v28}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v34

    if-eqz v34, :cond_18

    .line 677
    invoke-virtual/range {v28 .. v28}, Lcom/ecareme/pixwe/media/MediaSet;->clear()V

    goto :goto_a

    .line 685
    .end local v6           #bufferedRange:Lcom/ecareme/pixwe/media/IndexRange;
    .end local v7           #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    .end local v27           #scanMediaSets:Z
    .end local v28           #set:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v33           #visibleRange:Lcom/ecareme/pixwe/media/IndexRange;
    :cond_1c
    if-eq v15, v12, :cond_1e

    .line 686
    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/ecareme/pixwe/media/MediaSet;

    .line 687
    .restart local v28       #set:Lcom/ecareme/pixwe/media/MediaSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ecareme/pixwe/media/MediaClustering;

    .line 688
    .restart local v7       #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    if-eqz v7, :cond_1d

    .line 689
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/MediaClustering;->clear()V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_1d
    move-object/from16 v0, v28

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    move/from16 v34, v0

    if-eqz v34, :cond_1e

    .line 693
    invoke-virtual/range {v28 .. v28}, Lcom/ecareme/pixwe/media/MediaSet;->clear()V

    .line 683
    .end local v7           #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    .end local v28           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_1e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7

    .line 707
    .end local v5           #app:Lcom/ecareme/pixwe/app/App;
    .restart local v7       #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    .restart local v8       #clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaClustering$Cluster;>;"
    .restart local v19       #numClusters:I
    .restart local v21       #numItemsLoaded:I
    .restart local v26       #requestedItems:I
    :cond_1f
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->getNumExpectedItems()I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result v34

    add-int v26, v26, v34

    .line 706
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_8

    .line 717
    .end local v7           #clustering:Lcom/ecareme/pixwe/media/MediaClustering;
    .end local v8           #clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaClustering$Cluster;>;"
    .end local v19           #numClusters:I
    .restart local v28       #set:Lcom/ecareme/pixwe/media/MediaSet;
    :catchall_5
    move-exception v34

    :try_start_12
    monitor-exit v28
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    throw v34

    .line 745
    .end local v21           #numItemsLoaded:I
    .end local v23           #numSets:I
    .end local v26           #requestedItems:I
    .restart local v13       #filter:Lcom/ecareme/pixwe/media/MediaFilter;
    .restart local v14       #filteredSet:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local v17       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .restart local v20       #numItems:I
    :cond_20
    move-object/from16 v0, v17

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ecareme/pixwe/media/MediaItem;

    .line 746
    .local v16, item:Lcom/ecareme/pixwe/media/MediaItem;
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFilter;->pass(Lcom/ecareme/pixwe/media/MediaItem;)Z

    move-result v34

    if-eqz v34, :cond_21

    .line 747
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 744
    :cond_21
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_9
.end method

.method public setFilter(Lcom/ecareme/pixwe/media/MediaFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFilter:Lcom/ecareme/pixwe/media/MediaFilter;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFilteredSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 152
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    invoke-interface {v0, p0}, Lcom/ecareme/pixwe/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/ecareme/pixwe/media/MediaFeed;)V

    .line 155
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 156
    return-void
.end method

.method public setSingleImageMode(Z)V
    .locals 0
    .parameter "singleImageMode"

    .prologue
    .line 902
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mSingleImageMode:Z

    .line 903
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 5
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 137
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v3, v3, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v3, v3, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    if-eq p2, v3, :cond_1

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iput p1, v3, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    .line 139
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iput p2, v3, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    .line 140
    const/16 v0, 0x60

    .line 141
    .local v0, numItems:I
    div-int/lit8 v1, v0, 0x2

    .line 142
    .local v1, numItemsBy2:I
    div-int/lit8 v2, v0, 0x4

    .line 143
    .local v2, numItemsBy4:I
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mBufferedRange:Lcom/ecareme/pixwe/media/IndexRange;

    div-int v4, p1, v1

    mul-int/2addr v4, v1

    sub-int/2addr v4, v2

    iput v4, v3, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    .line 144
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mBufferedRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget-object v4, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mBufferedRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v4, v4, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    .line 145
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 147
    .end local v0           #numItems:I
    .end local v1           #numItemsBy2:I
    .end local v2           #numItemsBy4:I
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 88
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mIsShutdown:Z

    .line 89
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    if-eqz v5, :cond_0

    .line 90
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    invoke-interface {v5}, Lcom/ecareme/pixwe/media/DataSource;->shutdown()V

    .line 91
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    invoke-direct {p0, v5}, Lcom/ecareme/pixwe/media/MediaFeed;->repeatShuttingDownThread(Ljava/lang/Thread;)V

    .line 92
    iput-object v7, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    .line 94
    :cond_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    if-eqz v5, :cond_1

    .line 95
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    invoke-direct {p0, v5}, Lcom/ecareme/pixwe/media/MediaFeed;->repeatShuttingDownThread(Ljava/lang/Thread;)V

    .line 96
    iput-object v7, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    .line 98
    :cond_1
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 99
    .local v3, numSets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_2

    .line 103
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    monitor-enter v5

    .line 104
    :try_start_0
    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 103
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 107
    .local v2, numClusters:I
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_3

    .line 113
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 114
    iput-object v7, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListener:Lcom/ecareme/pixwe/media/MediaFeed$Listener;

    .line 115
    iput-object v7, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    .line 116
    iput-object v7, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mSingleWrapper:Lcom/ecareme/pixwe/media/MediaSet;

    .line 117
    return-void

    .line 100
    .end local v2           #numClusters:I
    :cond_2
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ecareme/pixwe/media/MediaSet;

    .line 101
    .local v4, set:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/MediaSet;->clear()V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v4           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 108
    .restart local v2       #numClusters:I
    :cond_3
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/MediaClustering;

    .line 109
    .local v1, mc:Lcom/ecareme/pixwe/media/MediaClustering;
    if-eqz v1, :cond_4

    .line 110
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/MediaClustering;->clear()V

    .line 107
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public start()V
    .locals 3

    .prologue
    .line 434
    move-object v0, p0

    .line 435
    .local v0, feed:Lcom/ecareme/pixwe/media/MediaFeed;
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MediaFeed;->onResume()V

    .line 436
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mLoading:Z

    .line 437
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    .line 438
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    const-string v2, "MediaFeed"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 439
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mIsShutdown:Z

    .line 440
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ecareme/pixwe/media/MediaFeed$2;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/media/MediaFeed$2;-><init>(Lcom/ecareme/pixwe/media/MediaFeed;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    .line 477
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    const-string v2, "MediaSets"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 479
    return-void
.end method

.method public updateListener(Z)V
    .locals 1
    .parameter "needsLayout"

    .prologue
    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 328
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/MediaFeed;->mListenerNeedsLayout:Z

    .line 329
    return-void
.end method
