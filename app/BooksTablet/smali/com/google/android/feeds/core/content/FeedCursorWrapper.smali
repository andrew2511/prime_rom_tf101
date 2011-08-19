.class public Lcom/google/android/feeds/core/content/FeedCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "FeedCursorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feeds/core/content/FeedCursorWrapper$1;,
        Lcom/google/android/feeds/core/content/FeedCursorWrapper$RequestHandler;,
        Lcom/google/android/feeds/core/content/FeedCursorWrapper$SavedFeedCursorWrapper;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_RETRY_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FeedCursorWrapper"


# instance fields
.field private mActivated:Z

.field private mClosed:Z

.field private final mContentObservable:Landroid/database/ContentObservable;

.field private final mContext:Landroid/content/Context;

.field private final mExtras:Landroid/os/Bundle;

.field private final mFeedResolverFactory:Lcom/google/android/feeds/core/content/FeedResolverFactory;

.field private final mLock:Ljava/lang/Object;

.field private mMaxRetryCount:I

.field private mPendingExtras:Landroid/os/Bundle;

.field private final mProjection:[Ljava/lang/String;

.field private mRequestHandler:Landroid/os/Handler;

.field private mSaved:Z

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;

.field private final mSortOrder:Ljava/lang/String;

.field private final mUid:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/feeds/core/content/FeedResolverFactory;)V
    .locals 3
    .parameter "cursor"
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "factory"

    .prologue
    const/4 v2, 0x1

    .line 235
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 192
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mMaxRetryCount:I

    .line 236
    if-nez p1, :cond_0

    .line 237
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cursor is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    if-nez p2, :cond_1

    .line 240
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    if-nez p3, :cond_2

    .line 243
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_2
    if-nez p4, :cond_3

    .line 246
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "projection is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_3
    if-nez p8, :cond_4

    .line 249
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_4
    iput-object p2, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mContext:Landroid/content/Context;

    .line 252
    iput-object p3, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mUri:Landroid/net/Uri;

    .line 253
    iput-object p4, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mProjection:[Ljava/lang/String;

    .line 254
    iput-object p5, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mSelection:Ljava/lang/String;

    .line 255
    iput-object p6, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mSelectionArgs:[Ljava/lang/String;

    .line 256
    iput-object p7, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mSortOrder:Ljava/lang/String;

    .line 257
    iput-object p8, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mFeedResolverFactory:Lcom/google/android/feeds/core/content/FeedResolverFactory;

    .line 259
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mContentObservable:Landroid/database/ContentObservable;

    .line 260
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mLock:Ljava/lang/Object;

    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mExtras:Landroid/os/Bundle;

    .line 262
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mUid:I

    .line 263
    iput-boolean v2, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mActivated:Z

    .line 264
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mExtras:Landroid/os/Bundle;

    const-string v1, "com.google.android.feeds.cursor.extra.MORE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    sget-object v0, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADED:Lcom/google/android/feeds/core/provider/FeedStatus;

    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/feeds/core/provider/FeedStatus;->writeTo(Landroid/os/Bundle;)V

    .line 266
    return-void
.end method

.method static synthetic access$101(Lcom/google/android/feeds/core/content/FeedCursorWrapper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/feeds/core/content/FeedCursorWrapper;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/feeds/core/content/FeedCursorWrapper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mUid:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/feeds/core/content/FeedCursorWrapper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mSaved:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/feeds/core/content/FeedCursorWrapper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mClosed:Z

    return p1
.end method

.method private changeExtras(Landroid/os/Bundle;)V
    .locals 2
    .parameter "extras"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_0
    iput-object p1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mPendingExtras:Landroid/os/Bundle;

    .line 416
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->dispatchChange()V

    .line 418
    return-void

    .line 416
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private changeStatus(Lcom/google/android/feeds/core/provider/FeedStatus;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v0, extras:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Lcom/google/android/feeds/core/provider/FeedStatus;->writeTo(Landroid/os/Bundle;)V

    .line 410
    invoke-direct {p0, v0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->changeExtras(Landroid/os/Bundle;)V

    .line 411
    return-void
.end method

.method private static createErrorBundle(Ljava/lang/Throwable;Lcom/google/android/feeds/core/provider/FeedCommand;)Landroid/os/Bundle;
    .locals 4
    .parameter "t"
    .parameter "retryCommand"

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 86
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 88
    :cond_0
    if-nez p1, :cond_1

    .line 89
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 92
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, message:Ljava/lang/String;
    const-string v2, "FeedCursorWrapper"

    if-eqz v1, :cond_2

    move-object v3, v1

    :goto_0
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, extras:Landroid/os/Bundle;
    sget-object v2, Lcom/google/android/feeds/core/provider/FeedStatus;->ERROR:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-virtual {v2, v0}, Lcom/google/android/feeds/core/provider/FeedStatus;->writeTo(Landroid/os/Bundle;)V

    .line 98
    const-string v2, "com.google.android.feeds.cursor.extra.ERROR_EXCEPTION_OBJECT"

    invoke-static {p0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->marshall(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 99
    const-string v2, "com.google.android.feeds.cursor.extra.RETRY_COMMAND"

    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 101
    return-object v0

    .line 93
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private dispatchChange()V
    .locals 2

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, selfChange:Z
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v1, v0}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 472
    return-void
.end method

.method private getRequestHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 475
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mRequestHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 476
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedCursorWrapper("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 478
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 479
    new-instance v1, Lcom/google/android/feeds/core/content/FeedCursorWrapper$RequestHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/feeds/core/content/FeedCursorWrapper$RequestHandler;-><init>(Lcom/google/android/feeds/core/content/FeedCursorWrapper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mRequestHandler:Landroid/os/Handler;

    .line 481
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mRequestHandler:Landroid/os/Handler;

    return-object v1
.end method

.method private hasPendingExtras()Z
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mPendingExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 487
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isBusy()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 491
    invoke-virtual {p0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 499
    :goto_0
    return v1

    .line 493
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mActivated:Z

    if-nez v1, :cond_1

    move v1, v2

    .line 494
    goto :goto_0

    .line 495
    :cond_1
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->hasPendingExtras()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 496
    goto :goto_0

    .line 498
    :cond_2
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mExtras:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v0

    .line 499
    .local v0, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADING:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->REQUERYING:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-ne v0, v1, :cond_4

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isFeedCommand(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "extras"

    .prologue
    .line 72
    const-string v0, "com.google.android.feeds.cursor.respond.input.extra.COMMAND"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static marshall(Ljava/lang/Object;)[B
    .locals 4
    .parameter "obj"

    .prologue
    .line 110
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 112
    .local v2, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 114
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 115
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 118
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v3

    .line 116
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 118
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mClosed:Z

    .line 290
    iget-boolean v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mSaved:Z

    if-nez v0, :cond_0

    .line 291
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mRequestHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mRequestHandler:Landroid/os/Handler;

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 302
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/database/CursorWrapper;->deactivate()V

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mActivated:Z

    .line 278
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 271
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method handleQuery(Lcom/google/android/feeds/core/provider/FeedCommand;I)V
    .locals 13
    .parameter "command"
    .parameter "maxRetryCount"

    .prologue
    const/4 v11, 0x0

    .line 421
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 425
    .local v7, extras:Landroid/os/Bundle;
    :try_start_0
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mUri:Landroid/net/Uri;

    .line 426
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mProjection:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mProjection:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 427
    .local v2, projection:[Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mSelection:Ljava/lang/String;

    .line 428
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mSelectionArgs:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 429
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mSortOrder:Ljava/lang/String;

    .line 430
    .local v5, sortOrder:Ljava/lang/String;
    const/4 v6, 0x0

    .line 431
    .local v6, output:Landroid/database/MatrixCursor;
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mFeedResolverFactory:Lcom/google/android/feeds/core/content/FeedResolverFactory;

    invoke-interface/range {v0 .. v7}, Lcom/google/android/feeds/core/content/FeedResolverFactory;->createFeedResolver(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/MatrixCursor;Landroid/os/Bundle;)Lcom/google/android/feeds/core/content/FeedResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/feeds/core/provider/FeedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v9

    .line 436
    .local v9, resolver:Lcom/google/android/feeds/core/content/FeedResolver;
    const/4 v10, 0x0

    .line 438
    .local v10, retryCount:I
    :goto_2
    :try_start_1
    invoke-interface {v9, p1}, Lcom/google/android/feeds/core/content/FeedResolver;->getContent(Lcom/google/android/feeds/core/provider/FeedCommand;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/HttpRetryException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/feeds/core/provider/FeedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4

    .line 451
    :try_start_2
    sget-object v0, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADED:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-virtual {v0, v7}, Lcom/google/android/feeds/core/provider/FeedStatus;->writeTo(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/feeds/core/provider/FeedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4

    .line 462
    invoke-direct {p0, v7}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->changeExtras(Landroid/os/Bundle;)V

    .line 464
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v5           #sortOrder:Ljava/lang/String;
    .end local v6           #output:Landroid/database/MatrixCursor;
    .end local v9           #resolver:Lcom/google/android/feeds/core/content/FeedResolver;
    .end local v10           #retryCount:I
    :goto_3
    return-void

    .restart local v1       #uri:Landroid/net/Uri;
    :cond_0
    move-object v2, v11

    .line 426
    goto :goto_0

    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    :cond_1
    move-object v4, v11

    .line 428
    goto :goto_1

    .line 440
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v5       #sortOrder:Ljava/lang/String;
    .restart local v6       #output:Landroid/database/MatrixCursor;
    .restart local v9       #resolver:Lcom/google/android/feeds/core/content/FeedResolver;
    .restart local v10       #retryCount:I
    :catch_0
    move-exception v8

    .line 441
    .local v8, e:Ljava/net/HttpRetryException;
    if-lt v10, p2, :cond_2

    .line 442
    :try_start_3
    invoke-virtual {v7}, Landroid/os/Bundle;->clear()V

    .line 436
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 445
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Maximum retries ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") exceeded"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/feeds/core/provider/FeedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    .line 452
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v5           #sortOrder:Ljava/lang/String;
    .end local v6           #output:Landroid/database/MatrixCursor;
    .end local v8           #e:Ljava/net/HttpRetryException;
    .end local v9           #resolver:Lcom/google/android/feeds/core/content/FeedResolver;
    .end local v10           #retryCount:I
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 453
    .local v8, e:Lcom/google/android/feeds/core/provider/FeedException;
    :try_start_4
    invoke-static {v8, p1}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->createErrorBundle(Ljava/lang/Throwable;Lcom/google/android/feeds/core/provider/FeedCommand;)Landroid/os/Bundle;

    move-result-object v7

    .line 454
    invoke-virtual {v8, v7}, Lcom/google/android/feeds/core/provider/FeedException;->copyExtrasTo(Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 462
    invoke-direct {p0, v7}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->changeExtras(Landroid/os/Bundle;)V

    goto :goto_3

    .line 455
    .end local v8           #e:Lcom/google/android/feeds/core/provider/FeedException;
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 456
    .local v8, e:Ljava/io/IOException;
    :try_start_5
    invoke-static {v8, p1}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->createErrorBundle(Ljava/lang/Throwable;Lcom/google/android/feeds/core/provider/FeedCommand;)Landroid/os/Bundle;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    .line 462
    invoke-direct {p0, v7}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->changeExtras(Landroid/os/Bundle;)V

    goto :goto_3

    .line 457
    .end local v8           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    move-object v8, v0

    .line 458
    .local v8, e:Ljava/lang/RuntimeException;
    :try_start_6
    invoke-static {v8, p1}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->createErrorBundle(Ljava/lang/Throwable;Lcom/google/android/feeds/core/provider/FeedCommand;)Landroid/os/Bundle;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    .line 462
    invoke-direct {p0, v7}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->changeExtras(Landroid/os/Bundle;)V

    goto :goto_3

    .line 459
    .end local v8           #e:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v0

    move-object v8, v0

    .line 460
    .local v8, e:Ljava/lang/Error;
    :try_start_7
    invoke-static {v8, p1}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->createErrorBundle(Ljava/lang/Throwable;Lcom/google/android/feeds/core/provider/FeedCommand;)Landroid/os/Bundle;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v7

    .line 462
    invoke-direct {p0, v7}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->changeExtras(Landroid/os/Bundle;)V

    goto :goto_3

    .end local v8           #e:Ljava/lang/Error;
    :catchall_0
    move-exception v0

    invoke-direct {p0, v7}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->changeExtras(Landroid/os/Bundle;)V

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mClosed:Z

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 386
    iget-boolean v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mClosed:Z

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 389
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->hasPendingExtras()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    .line 399
    :cond_0
    return-void
.end method

.method public requery()Z
    .locals 3

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mActivated:Z

    .line 307
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->hasPendingExtras()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 310
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mExtras:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mPendingExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mPendingExtras:Landroid/os/Bundle;

    .line 313
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-super {p0}, Landroid/database/CursorWrapper;->requery()Z

    move-result v0

    return v0

    .line 313
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12
    .parameter "extras"

    .prologue
    const/4 v11, 0x1

    .line 319
    invoke-static {p1}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->isFeedCommand(Landroid/os/Bundle;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 320
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand;

    invoke-direct {v0, p1}, Lcom/google/android/feeds/core/provider/FeedCommand;-><init>(Landroid/os/Bundle;)V

    .line 321
    .local v0, command:Lcom/google/android/feeds/core/provider/FeedCommand;
    invoke-virtual {v0}, Lcom/google/android/feeds/core/provider/FeedCommand;->getType()Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    move-result-object v7

    .line 323
    .local v7, type:Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 324
    .local v5, responseBundle:Landroid/os/Bundle;
    sget-object v9, Lcom/google/android/feeds/core/content/FeedCursorWrapper$1;->$SwitchMap$com$google$android$feeds$core$provider$FeedCommand$Type:[I

    invoke-virtual {v7}, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 372
    sget-object v4, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->UNSUPPORTED_OPERATION:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 376
    .local v4, response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    :goto_0
    invoke-virtual {v4, v5}, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->writeTo(Landroid/os/Bundle;)V

    move-object v9, v5

    .line 379
    .end local v0           #command:Lcom/google/android/feeds/core/provider/FeedCommand;
    .end local v4           #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .end local v5           #responseBundle:Landroid/os/Bundle;
    .end local v7           #type:Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    :goto_1
    return-object v9

    .line 326
    .restart local v0       #command:Lcom/google/android/feeds/core/provider/FeedCommand;
    .restart local v5       #responseBundle:Landroid/os/Bundle;
    .restart local v7       #type:Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->isBusy()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 327
    sget-object v4, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->ILLEGAL_STATE:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .restart local v4       #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    goto :goto_0

    .line 330
    .end local v4           #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    :cond_0
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand;

    .end local v0           #command:Lcom/google/android/feeds/core/provider/FeedCommand;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v0, v9}, Lcom/google/android/feeds/core/provider/FeedCommand;-><init>(Landroid/os/Bundle;)V

    .line 333
    .restart local v0       #command:Lcom/google/android/feeds/core/provider/FeedCommand;
    invoke-virtual {p0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->getCount()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/google/android/feeds/core/provider/FeedCommand;->rowCount(I)Lcom/google/android/feeds/core/provider/FeedCommand;

    .line 334
    invoke-virtual {p0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/feeds/core/provider/FeedCommand;->state(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedCommand;

    .line 336
    invoke-virtual {v0}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAsync()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 337
    invoke-virtual {v0}, Lcom/google/android/feeds/core/provider/FeedCommand;->getRowCount()I

    move-result v6

    .line 338
    .local v6, rowCount:I
    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 339
    :cond_1
    sget-object v9, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADING:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-direct {p0, v9}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->changeStatus(Lcom/google/android/feeds/core/provider/FeedStatus;)V

    .line 343
    :goto_2
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->getRequestHandler()Landroid/os/Handler;

    move-result-object v1

    .line 344
    .local v1, handler:Landroid/os/Handler;
    iget v9, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mMaxRetryCount:I

    const/4 v10, 0x0

    invoke-virtual {v1, v11, v9, v10, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 346
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 350
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #msg:Landroid/os/Message;
    .end local v6           #rowCount:I
    :goto_3
    sget-object v4, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->OK:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 352
    .restart local v4       #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    goto :goto_0

    .line 341
    .end local v4           #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .restart local v6       #rowCount:I
    :cond_2
    sget-object v9, Lcom/google/android/feeds/core/provider/FeedStatus;->REQUERYING:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-direct {p0, v9}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->changeStatus(Lcom/google/android/feeds/core/provider/FeedStatus;)V

    goto :goto_2

    .line 348
    .end local v6           #rowCount:I
    :cond_3
    iget v9, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mMaxRetryCount:I

    invoke-virtual {p0, v0, v9}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->handleQuery(Lcom/google/android/feeds/core/provider/FeedCommand;I)V

    goto :goto_3

    .line 355
    :pswitch_1
    iget-boolean v9, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mSaved:Z

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mClosed:Z

    if-eqz v9, :cond_5

    .line 356
    :cond_4
    sget-object v4, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->ILLEGAL_STATE:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .restart local v4       #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    goto :goto_0

    .line 358
    .end local v4           #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    :cond_5
    iget-object v9, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/feeds/core/content/SavedCursorProvider;->get(Landroid/content/Context;)Lcom/google/android/feeds/core/content/SavedCursorProvider;

    move-result-object v3

    .line 359
    .local v3, provider:Lcom/google/android/feeds/core/content/SavedCursorProvider;
    if-eqz v3, :cond_6

    .line 360
    sget-object v4, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->OK:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 361
    .restart local v4       #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    new-instance v9, Lcom/google/android/feeds/core/content/FeedCursorWrapper$SavedFeedCursorWrapper;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/google/android/feeds/core/content/FeedCursorWrapper$SavedFeedCursorWrapper;-><init>(Lcom/google/android/feeds/core/content/FeedCursorWrapper;Lcom/google/android/feeds/core/content/FeedCursorWrapper$1;)V

    invoke-virtual {v3, v9}, Lcom/google/android/feeds/core/content/SavedCursorProvider;->save(Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;)Landroid/net/Uri;

    move-result-object v8

    .line 362
    .local v8, uri:Landroid/net/Uri;
    sget-object v9, Lcom/google/android/feeds/core/provider/FeedCommand$Output;->URI:Lcom/google/android/feeds/core/provider/FeedCommand$Output;

    invoke-virtual {v9}, Lcom/google/android/feeds/core/provider/FeedCommand$Output;->key()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 364
    iput-boolean v11, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mSaved:Z

    goto/16 :goto_0

    .line 366
    .end local v4           #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_6
    sget-object v4, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->UNSUPPORTED_OPERATION:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .restart local v4       #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    goto/16 :goto_0

    .line 379
    .end local v0           #command:Lcom/google/android/feeds/core/provider/FeedCommand;
    .end local v3           #provider:Lcom/google/android/feeds/core/content/SavedCursorProvider;
    .end local v4           #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .end local v5           #responseBundle:Landroid/os/Bundle;
    .end local v7           #type:Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    :cond_7
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    goto/16 :goto_1

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 404
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 405
    return-void
.end method
