.class Lcom/google/android/music/GenreAlbumBrowserActivity$5;
.super Ljava/lang/Object;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity;->addCurrentSelectionToPlaylist(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSongCount:I

.field final synthetic this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

.field final synthetic val$playlistId:J

.field final synthetic val$playlistName:Ljava/lang/String;

.field final synthetic val$songList:Lcom/google/android/music/medialist/SongList;


# direct methods
.method constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity;Lcom/google/android/music/medialist/SongList;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    iput-object p2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->val$songList:Lcom/google/android/music/medialist/SongList;

    iput-wide p3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->val$playlistId:J

    iput-object p5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->val$playlistName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 4

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->val$songList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-virtual {v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->val$playlistId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/medialist/SongList;->appendToPlaylist(Landroid/content/ContentResolver;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->mSongCount:I

    .line 698
    return-void
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    iget v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->mSongCount:I

    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->val$playlistName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicUtils;->showSongsAddedToPlaylistToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 703
    return-void
.end method
