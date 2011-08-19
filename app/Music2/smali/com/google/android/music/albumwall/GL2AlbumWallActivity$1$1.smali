.class Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1$1;
.super Ljava/lang/Object;
.source "GL2AlbumWallActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->onPlaylistCreated(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSongCount:I

.field final synthetic this$1:Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;

.field final synthetic val$id:J

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1$1;->this$1:Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;

    iput-wide p2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1$1;->val$id:J

    iput-object p4, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 4

    .prologue
    .line 279
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1$1;->this$1:Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;

    iget-object v1, v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->val$songList:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/music/medialist/MediaList;->thaw(Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList;

    move-result-object v0

    .line 280
    .local v0, mediaList:Lcom/google/android/music/medialist/MediaList;
    if-nez v0, :cond_0

    .line 281
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "songlist was not provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    check-cast v0, Lcom/google/android/music/medialist/SongList;

    .end local v0           #mediaList:Lcom/google/android/music/medialist/MediaList;
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1$1;->this$1:Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;

    iget-object v1, v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1$1;->val$id:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/medialist/SongList;->appendToPlaylist(Landroid/content/ContentResolver;J)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1$1;->mSongCount:I

    .line 285
    return-void
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1$1;->this$1:Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;

    iget-object v0, v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1$1;->mSongCount:I

    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1$1;->val$name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicUtils;->showSongsAddedToPlaylistToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 289
    return-void
.end method
