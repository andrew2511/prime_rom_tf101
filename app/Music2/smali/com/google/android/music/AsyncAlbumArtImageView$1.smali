.class Lcom/google/android/music/AsyncAlbumArtImageView$1;
.super Ljava/lang/Object;
.source "AsyncAlbumArtImageView.java"

# interfaces
.implements Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncAlbumArtImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AsyncAlbumArtImageView;


# direct methods
.method constructor <init>(Lcom/google/android/music/AsyncAlbumArtImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAlbumArtChanged(J)V
    .locals 4
    .parameter "albumId"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-static {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$400(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-static {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$400(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    iget-wide v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$502(Lcom/google/android/music/AsyncAlbumArtImageView;Z)Z

    .line 200
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$602(Lcom/google/android/music/AsyncAlbumArtImageView;I)I

    .line 201
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$702(Lcom/google/android/music/AsyncAlbumArtImageView;I)I

    .line 202
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    new-instance v2, Lcom/google/android/music/AsyncAlbumArtImageView$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/AsyncAlbumArtImageView$1$1;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->post(Ljava/lang/Runnable;)Z

    .line 209
    :cond_0
    monitor-exit v1

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
