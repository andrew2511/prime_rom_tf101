.class Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaListWrapper"
.end annotation


# static fields
.field private static final MAX_RADIUS_TO_SEARCH:I = 0xfa

.field private static final REFRESH_STATE_FAILURE:I = 0x0

.field private static final REFRESH_STATE_FILE_NOT_FOUND:I = 0x2

.field private static final REFRESH_STATE_SUCCESS:I = 0x1


# instance fields
.field mColIdx:I

.field mContext:Landroid/content/Context;

.field mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

.field private mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final mRefreshContentObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method public constructor <init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I

    .line 268
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 494
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;

    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;-><init>(Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mRefreshContentObserver:Landroid/database/ContentObserver;

    .line 271
    iput-object p2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mContext:Landroid/content/Context;

    .line 272
    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->refresh()I

    move-result v0

    return v0
.end method

.method private getColIdx()V
    .locals 3

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 327
    iget v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 329
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v2, "audio_id"

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 337
    return-void

    .line 330
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 331
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_2
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 335
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private performSearchForOldIdLocked(Landroid/database/Cursor;IJ)I
    .locals 8
    .parameter "cursor"
    .parameter "oldPosition"
    .parameter "oldId"

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    .line 443
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 444
    .local v3, newCount:I
    if-ge v3, v5, :cond_0

    move v5, v7

    .line 491
    :goto_0
    return v5

    .line 447
    :cond_0
    move v4, p2

    .line 448
    .local v4, position:I
    const/4 v1, 0x1

    .line 449
    .local v1, forwardSearch:Z
    const/4 v0, 0x1

    .line 452
    .local v0, backwardSearch:Z
    if-gt v3, p2, :cond_1

    .line 453
    const/4 v1, 0x0

    .line 454
    sub-int v4, v3, v5

    .line 458
    :cond_1
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v5, v4}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v6, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I

    invoke-virtual {v5, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v5, p3

    if-nez v5, :cond_2

    move v5, v4

    .line 459
    goto :goto_0

    .line 463
    :cond_2
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    const/16 v5, 0xfa

    if-ge v2, v5, :cond_7

    .line 464
    if-eqz v1, :cond_4

    .line 465
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    add-int v6, v4, v2

    invoke-virtual {v5, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 466
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v6, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I

    invoke-virtual {v5, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v5, p3

    if-nez v5, :cond_4

    .line 467
    add-int v5, v4, v2

    goto :goto_0

    .line 470
    :cond_3
    const/4 v1, 0x0

    .line 471
    if-nez v0, :cond_4

    move v5, v7

    .line 472
    goto :goto_0

    .line 477
    :cond_4
    if-eqz v0, :cond_6

    .line 478
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    sub-int v6, v4, v2

    invoke-virtual {v5, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 479
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v6, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I

    invoke-virtual {v5, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v5, p3

    if-nez v5, :cond_6

    .line 480
    sub-int v5, v4, v2

    goto :goto_0

    .line 483
    :cond_5
    const/4 v0, 0x0

    .line 484
    if-nez v1, :cond_6

    move v5, v7

    .line 485
    goto :goto_0

    .line 463
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move v5, v7

    .line 491
    goto :goto_0
.end method

.method private refresh()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 404
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 406
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v2, :cond_5

    .line 407
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$700(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v1

    .line 408
    .local v1, oldPosition:I
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->requery()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCountSync()I

    move-result v2

    if-nez v2, :cond_2

    .line 409
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->close()V

    .line 410
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 411
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->stop()V

    .line 413
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v3, "com.android.music.metachanged"

    invoke-static {v2, v3}, Lcom/google/android/music/MusicPlaybackService;->access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 415
    :cond_1
    const-string v2, "MediaPlaybackService"

    const-string v3, "New list failed to query or returned an empty list"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v4

    .end local v1           #oldPosition:I
    :goto_0
    return v2

    .line 419
    .restart local v1       #oldPosition:I
    :cond_2
    if-eq v1, v6, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$500(Lcom/google/android/music/MusicPlaybackService;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 421
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$700(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v4}, Lcom/google/android/music/MusicPlaybackService;->access$500(Lcom/google/android/music/MusicPlaybackService;)J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->performSearchForOldIdLocked(Landroid/database/Cursor;IJ)I

    move-result v0

    .line 422
    .local v0, newPos:I
    if-eq v0, v6, :cond_3

    .line 423
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2, v0}, Lcom/google/android/music/MusicPlaybackService;->access$702(Lcom/google/android/music/MusicPlaybackService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v7

    goto :goto_0

    .line 426
    :cond_3
    :try_start_2
    const-string v2, "MediaPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find old file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v4}, Lcom/google/android/music/MusicPlaybackService;->access$500(Lcom/google/android/music/MusicPlaybackService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in new list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    const/4 v2, 0x2

    .line 436
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0           #newPos:I
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v7

    goto :goto_0

    .line 432
    .end local v1           #oldPosition:I
    :cond_5
    :try_start_3
    const-string v2, "MediaPlaybackService"

    const-string v3, "Could not find old position... mCursor was null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method


# virtual methods
.method public get(I)J
    .locals 7
    .parameter "index"

    .prologue
    const-wide/16 v5, -0x1

    .line 348
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mContext:Landroid/content/Context;

    const-string v3, "MediaListWrapper.get() on main thread"

    invoke-static {v2, v3}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 350
    if-gez p1, :cond_1

    .line 351
    invoke-static {}, Lcom/google/android/music/MusicPlaybackService;->access$600()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    const-string v2, "MediaPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid position requested: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move-wide v2, v5

    .line 399
    :goto_1
    return-wide v2

    .line 355
    :cond_0
    const-string v2, "MediaPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid position requested: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 361
    .local v1, lock:Ljava/util/concurrent/locks/Lock;
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 362
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v2, :cond_7

    .line 363
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->getColIdx()V

    .line 364
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2, p1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 365
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 366
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 367
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 368
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v2, :cond_3

    .line 369
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->requery()Z

    .line 370
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lt p1, v2, :cond_2

    .line 394
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    move-wide v2, v5

    .line 399
    goto :goto_1

    .line 394
    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    move-wide v2, v5

    .line 399
    goto :goto_1

    .line 377
    :cond_4
    :goto_4
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 378
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 379
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 380
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 381
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v2, :cond_5

    .line 382
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->requery()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 390
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 394
    .local v0, ex:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_5
    move-wide v2, v5

    .line 399
    goto :goto_1

    .line 394
    .end local v0           #ex:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_5
    :try_start_5
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    move-wide v2, v5

    .line 399
    goto :goto_1

    .line 387
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-wide v2

    .line 394
    :try_start_7
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 395
    :catch_1
    move-exception v4

    goto/16 :goto_1

    .line 394
    :cond_7
    :try_start_8
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :goto_7
    move-wide v2, v5

    .line 399
    goto/16 :goto_1

    .line 393
    :catchall_0
    move-exception v2

    .line 394
    :try_start_9
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 399
    :goto_8
    throw v2

    .line 395
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_6

    :catch_5
    move-exception v2

    goto :goto_7

    .restart local v0       #ex:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_6
    move-exception v2

    goto :goto_5

    .end local v0           #ex:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_7
    move-exception v3

    goto :goto_8
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 311
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCountSync()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    .line 314
    :cond_0
    const/4 v0, 0x0

    .line 316
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setMediaList(Lcom/google/android/music/medialist/SongList;)V
    .locals 4
    .parameter "medialist"

    .prologue
    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/music/MusicPlaybackService;->access$502(Lcom/google/android/music/MusicPlaybackService;J)J

    .line 283
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 284
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mRefreshContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 286
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->close()V

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :cond_0
    if-nez p1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 306
    :goto_0
    return-void

    .line 294
    :cond_1
    :try_start_1
    instance-of v1, p1, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v1, :cond_3

    .line 295
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duration"

    aput-object v2, v0, v1

    .line 299
    .local v0, cols:[Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/music/medialist/SongList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 300
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mRefreshContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 297
    .end local v0           #cols:[Ljava/lang/String;
    :cond_3
    const/4 v1, 0x2

    :try_start_2
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duration"

    aput-object v2, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0       #cols:[Ljava/lang/String;
    goto :goto_1

    .line 304
    .end local v0           #cols:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
