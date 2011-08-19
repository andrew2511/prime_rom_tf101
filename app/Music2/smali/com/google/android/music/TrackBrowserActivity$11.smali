.class Lcom/google/android/music/TrackBrowserActivity$11;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->containerContextMenuClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;

.field final synthetic val$menu:Lcom/google/android/music/menu/MusicListMenu;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/menu/MusicListMenu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/google/android/music/TrackBrowserActivity$11;->val$menu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 974
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->val$menu:Lcom/google/android/music/menu/MusicListMenu;

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v5}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v5, v6}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/menu/MusicListMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 977
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->val$menu:Lcom/google/android/music/menu/MusicListMenu;

    const/16 v5, 0xc8

    const v6, 0x7f0c0070

    invoke-virtual {v4, v5, v7, v6}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 980
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-virtual {v4}, Lcom/google/android/music/medialist/PlaylistSongList;->getId()J

    move-result-wide v4

    move-wide v1, v4

    .line 983
    .local v1, excludedId:J
    :goto_0
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->val$menu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-static {v4, v7, v8, v1, v2}, Lcom/google/android/music/MusicUtils;->populateAddToPlaylistMenuExcluding(Lcom/google/android/music/menu/MusicMenu;IIJ)V

    .line 985
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v4, :cond_0

    .line 986
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->val$menu:Lcom/google/android/music/menu/MusicListMenu;

    const/16 v5, 0xcd

    const v6, 0x7f0c0072

    invoke-virtual {v4, v5, v9, v6}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 991
    :cond_0
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/medialist/SongList;->supportsOfflineCaching()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4, v5}, Lcom/google/android/music/medialist/SongList;->containsRemoteItems(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 993
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->val$menu:Lcom/google/android/music/menu/MusicListMenu;

    const/16 v5, 0xca

    const v6, 0x7f0c0013

    invoke-virtual {v4, v5, v9, v6}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 995
    .local v3, item:Lcom/google/android/music/menu/MusicMenuItem;
    invoke-virtual {v3, v8}, Lcom/google/android/music/menu/MusicMenuItem;->setCheckboxEnabled(Z)V

    .line 996
    const v4, 0x7f020063

    const v5, 0x7f020061

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/menu/MusicMenuItem;->setWidgetDrawables(II)V

    .line 1002
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4, v5}, Lcom/google/android/music/medialist/SongList;->isSelectedForOfflineCaching(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/menu/MusicMenuItem;->setChecked(Z)V

    .line 1007
    .end local v3           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_1
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/music/medialist/ArtistSongList;

    if-eqz v4, :cond_2

    .line 1008
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/ArtistSongList;

    .line 1009
    .local v0, artistSongList:Lcom/google/android/music/medialist/ArtistSongList;
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$11;->val$menu:Lcom/google/android/music/menu/MusicListMenu;

    const/16 v5, 0xcb

    const/4 v6, 0x3

    const v7, 0x7f0c00c6

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1021
    .end local v0           #artistSongList:Lcom/google/android/music/medialist/ArtistSongList;
    :cond_2
    return-void

    .line 980
    .end local v1           #excludedId:J
    :cond_3
    const-wide/16 v4, -0x1

    move-wide v1, v4

    goto :goto_0
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$11;->val$menu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-static {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->access$2702(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/menu/MusicListMenu;)Lcom/google/android/music/menu/MusicListMenu;

    .line 1025
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->access$2802(Lcom/google/android/music/TrackBrowserActivity;I)I

    .line 1026
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/TrackBrowserActivity;->access$2902(Lcom/google/android/music/TrackBrowserActivity;J)J

    .line 1028
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$11;->val$menu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicListMenu;->show()V

    .line 1029
    return-void
.end method
