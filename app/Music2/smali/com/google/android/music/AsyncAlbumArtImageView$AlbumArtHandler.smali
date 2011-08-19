.class Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;
.super Lcom/google/android/music/Worker;
.source "AsyncAlbumArtImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncAlbumArtImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumArtHandler"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 390
    const-string v0, "AsyncAlbumArtDrawable"

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 387
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->mHandler:Landroid/os/Handler;

    .line 391
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 395
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 399
    .local v8, imageView:Lcom/google/android/music/AsyncAlbumArtImageView;
    monitor-enter v8

    .line 400
    :try_start_0
    invoke-static {v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$400(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-nez v0, :cond_0

    monitor-exit v8

    .line 423
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-static {v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$400(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v9

    check-cast v9, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    .line 402
    .local v9, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    iget-wide v1, v9, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    .line 403
    .local v1, id:J
    iget-object v5, v9, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->album:Ljava/lang/String;

    .line 404
    .local v5, albumName:Ljava/lang/String;
    iget-object v6, v9, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->artist:Ljava/lang/String;

    .line 405
    .local v6, artistName:Ljava/lang/String;
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 407
    invoke-virtual {v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$900(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v3

    invoke-static {v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1000(Lcom/google/android/music/AsyncAlbumArtImageView;)I

    move-result v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedArtwork(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 411
    .local v7, d:Landroid/graphics/drawable/Drawable;
    monitor-enter v8

    .line 412
    :try_start_1
    invoke-static {v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$400(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-nez v0, :cond_1

    monitor-exit v8

    goto :goto_0

    .line 422
    .end local v9           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 405
    .end local v1           #id:J
    .end local v5           #albumName:Ljava/lang/String;
    .end local v6           #artistName:Ljava/lang/String;
    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 413
    .restart local v1       #id:J
    .restart local v5       #albumName:Ljava/lang/String;
    .restart local v6       #artistName:Ljava/lang/String;
    .restart local v7       #d:Landroid/graphics/drawable/Drawable;
    .restart local v9       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    :cond_1
    :try_start_3
    invoke-static {v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$400(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v9

    .end local v9           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    check-cast v9, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    .line 414
    .restart local v9       #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    iget-wide v3, v9, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    if-eqz v7, :cond_2

    .line 415
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$1;

    invoke-direct {v3, p0, v8, v7}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$1;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    :cond_2
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
