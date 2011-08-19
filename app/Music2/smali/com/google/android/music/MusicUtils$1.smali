.class final Lcom/google/android/music/MusicUtils$1;
.super Landroid/database/ContentObserver;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicUtils;->openPlaylistCursor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 443
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 446
    invoke-static {}, Lcom/google/android/music/MusicUtils;->access$000()Lcom/google/android/music/AsyncCursor;

    move-result-object v0

    monitor-enter v0

    .line 447
    :try_start_0
    invoke-static {}, Lcom/google/android/music/MusicUtils;->access$000()Lcom/google/android/music/AsyncCursor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/AsyncCursor;->requery()Z

    .line 448
    invoke-static {}, Lcom/google/android/music/MusicUtils;->access$000()Lcom/google/android/music/AsyncCursor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/AsyncCursor;->moveToFirst()Z

    .line 449
    monitor-exit v0

    .line 450
    return-void

    .line 449
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
