.class Lcom/google/android/music/TrackBrowserActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 876
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 879
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/google/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 905
    :cond_1
    :goto_0
    return-void

    .line 880
    :cond_2
    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 881
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$2400(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 885
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/music/TrackBrowserActivity;->access$2402(Lcom/google/android/music/TrackBrowserActivity;Z)Z

    goto :goto_0

    .line 890
    :cond_3
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v2, :cond_4

    .line 891
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/google/android/music/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 894
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    sget-object v3, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/music/TrackBrowserActivity;->access$002(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;

    .line 895
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 896
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v3}, Lcom/google/android/music/TrackBrowserActivity;->access$2500(Lcom/google/android/music/TrackBrowserActivity;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/music/medialist/SongList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    .line 897
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 898
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 901
    :cond_5
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$10;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
