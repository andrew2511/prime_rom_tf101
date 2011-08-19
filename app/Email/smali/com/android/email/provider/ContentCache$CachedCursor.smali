.class public final Lcom/android/email/provider/ContentCache$CachedCursor;
.super Landroid/database/CursorWrapper;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CachedCursor"
.end annotation


# instance fields
.field private isClosed:Z

.field private final mCache:Lcom/android/email/provider/ContentCache;

.field private mCount:I

.field private final mCursor:Landroid/database/Cursor;

.field private final mId:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/android/email/provider/ContentCache;Ljava/lang/String;)V
    .locals 1
    .parameter "cursor"
    .parameter "cache"
    .parameter "id"

    .prologue
    const/4 v0, -0x1

    .line 287
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 281
    iput v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    .line 283
    iput v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCount:I

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->isClosed:Z

    .line 288
    iput-object p1, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    .line 289
    iput-object p2, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCache:Lcom/android/email/provider/ContentCache;

    .line 290
    iput-object p3, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mId:Ljava/lang/String;

    .line 292
    sget-object v0, Lcom/android/email/provider/ContentCache;->sActiveCursors:Lcom/android/email/provider/ContentCache$CounterMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCache$CounterMap;->add(Ljava/lang/Object;)V

    .line 293
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCache:Lcom/android/email/provider/ContentCache;

    monitor-enter v1

    .line 303
    :try_start_0
    sget-object v2, Lcom/android/email/provider/ContentCache;->sActiveCursors:Lcom/android/email/provider/ContentCache$CounterMap;

    iget-object v3, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Lcom/android/email/provider/ContentCache$CounterMap;->subtract(Ljava/lang/Object;)I

    move-result v0

    .line 304
    .local v0, count:I
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCache:Lcom/android/email/provider/ContentCache;

    invoke-static {v2}, Lcom/android/email/provider/ContentCache;->access$100(Lcom/android/email/provider/ContentCache;)Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    if-eq v2, v3, :cond_0

    .line 305
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 307
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->isClosed:Z

    .line 309
    return-void

    .line 307
    .end local v0           #count:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCount:I

    if-gez v0, :cond_0

    .line 319
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCount:I

    .line 321
    :cond_0
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCount:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    return v0
.end method

.method public final isAfterLast()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 378
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->isClosed:Z

    return v0
.end method

.method public final isLast()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 368
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$CachedCursor;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 358
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$CachedCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$CachedCursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-ge p1, v0, :cond_1

    .line 330
    :cond_0
    const/4 v0, 0x0

    .line 333
    :goto_0
    return v0

    .line 332
    :cond_1
    iput p1, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    .line 333
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
