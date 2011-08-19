.class Lcom/google/android/music/MediaPlaybackActivity$6;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity;->addCurrentSongToPlaylist(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mResult:I

.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;

.field final synthetic val$playlistId:J

.field final synthetic val$playlistName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iput-wide p2, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->val$playlistId:J

    iput-object p4, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->val$playlistName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->mResult:I

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 5

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/google/android/music/MediaPlaybackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->val$playlistId:J

    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/MusicContent$Playlists;->appendItemToPlayList(Landroid/content/ContentResolver;JJ)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->mResult:I

    .line 1147
    return-void
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iget v1, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->mResult:I

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$6;->val$playlistName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicUtils;->showSongsAddedToPlaylistToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 1152
    return-void
.end method
