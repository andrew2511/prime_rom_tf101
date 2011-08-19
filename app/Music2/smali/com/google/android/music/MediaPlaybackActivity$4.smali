.class Lcom/google/android/music/MediaPlaybackActivity$4;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity;->addToPlaylist(JLjava/lang/String;J)V
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

.field final synthetic val$selectedId:J


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;JJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iput-wide p2, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->val$playlistId:J

    iput-wide p4, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->val$selectedId:J

    iput-object p6, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->val$playlistName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 5

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/google/android/music/MediaPlaybackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->val$playlistId:J

    iget-wide v3, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->val$selectedId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/MusicContent$Playlists;->appendItemToPlayList(Landroid/content/ContentResolver;JJ)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->mResult:I

    .line 682
    return-void
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iget v1, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->mResult:I

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$4;->val$playlistName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicUtils;->showSongsAddedToPlaylistToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 687
    return-void
.end method
