.class Lcom/google/android/music/TrackBrowserActivity$14;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->addToPlaylist(JLjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSongCount:I

.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;

.field final synthetic val$playlistId:J

.field final synthetic val$playlistName:Ljava/lang/String;

.field final synthetic val$selectedId:J

.field final synthetic val$songList:Lcom/google/android/music/medialist/SongList;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;JLcom/google/android/music/medialist/SongList;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$14;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iput-wide p2, p0, Lcom/google/android/music/TrackBrowserActivity$14;->val$selectedId:J

    iput-object p4, p0, Lcom/google/android/music/TrackBrowserActivity$14;->val$songList:Lcom/google/android/music/medialist/SongList;

    iput-wide p5, p0, Lcom/google/android/music/TrackBrowserActivity$14;->val$playlistId:J

    iput-object p7, p0, Lcom/google/android/music/TrackBrowserActivity$14;->val$playlistName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 5

    .prologue
    .line 1308
    iget-wide v0, p0, Lcom/google/android/music/TrackBrowserActivity$14;->val$selectedId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$14;->val$songList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$14;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/google/android/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/TrackBrowserActivity$14;->val$playlistId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/medialist/SongList;->appendToPlaylist(Landroid/content/ContentResolver;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$14;->mSongCount:I

    .line 1314
    :goto_0
    return-void

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$14;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/TrackBrowserActivity$14;->val$playlistId:J

    iget-wide v3, p0, Lcom/google/android/music/TrackBrowserActivity$14;->val$selectedId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/MusicContent$Playlists;->appendItemToPlayList(Landroid/content/ContentResolver;JJ)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$14;->mSongCount:I

    goto :goto_0
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$14;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iget v1, p0, Lcom/google/android/music/TrackBrowserActivity$14;->mSongCount:I

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$14;->val$playlistName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicUtils;->showSongsAddedToPlaylistToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 1319
    return-void
.end method
