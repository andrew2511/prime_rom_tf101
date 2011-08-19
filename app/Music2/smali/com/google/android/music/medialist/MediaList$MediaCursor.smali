.class public Lcom/google/android/music/medialist/MediaList$MediaCursor;
.super Landroid/database/CursorWrapper;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/MediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaCursor"
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 292
    if-nez p1, :cond_0

    .line 293
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrapped cursor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    iput-object p1, p0, Lcom/google/android/music/medialist/MediaList$MediaCursor;->mCursor:Landroid/database/Cursor;

    .line 296
    return-void
.end method


# virtual methods
.method public getCountSync()I
    .locals 2

    .prologue
    .line 320
    iget-object v1, p0, Lcom/google/android/music/medialist/MediaList$MediaCursor;->mCursor:Landroid/database/Cursor;

    instance-of v1, v1, Lcom/google/android/music/AsyncCursor;

    if-eqz v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/android/music/medialist/MediaList$MediaCursor;->mCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/google/android/music/AsyncCursor;

    .line 322
    .local v0, ac:Lcom/google/android/music/AsyncCursor;
    invoke-virtual {v0}, Lcom/google/android/music/AsyncCursor;->getCountSync()I

    move-result v1

    .line 324
    .end local v0           #ac:Lcom/google/android/music/AsyncCursor;
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public hasCount()Z
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Lcom/google/android/music/medialist/MediaList$MediaCursor;->mCursor:Landroid/database/Cursor;

    instance-of v1, v1, Lcom/google/android/music/AsyncCursor;

    if-eqz v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/android/music/medialist/MediaList$MediaCursor;->mCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/google/android/music/AsyncCursor;

    .line 330
    .local v0, ac:Lcom/google/android/music/AsyncCursor;
    invoke-virtual {v0}, Lcom/google/android/music/AsyncCursor;->hasCount()Z

    move-result v1

    .line 332
    .end local v0           #ac:Lcom/google/android/music/AsyncCursor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveItem(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 309
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
