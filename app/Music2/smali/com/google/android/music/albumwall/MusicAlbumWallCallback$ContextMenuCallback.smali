.class abstract Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Lcom/google/android/music/menu/MusicMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ContextMenuCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;


# direct methods
.method private constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    return-void
.end method


# virtual methods
.method protected abstract getSongList()Lcom/google/android/music/medialist/SongList;
.end method

.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;->getSongList()Lcom/google/android/music/medialist/SongList;

    move-result-object v7

    .line 254
    .local v7, songList:Lcom/google/android/music/medialist/SongList;
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    move v8, v9

    .line 296
    :goto_0
    return v8

    .line 257
    :sswitch_0
    iget-object v8, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v8}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v8

    invoke-static {v8, v7, v9, v9}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    .line 296
    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 260
    :sswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v0, args:Landroid/os/Bundle;
    const-string v8, "songlist"

    invoke-virtual {v7}, Lcom/google/android/music/medialist/SongList;->freeze()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v8, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v8}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v8

    const/16 v9, 0x64

    invoke-virtual {v8, v9, v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 266
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "playlist"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 267
    .local v3, playlistId:J
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "playlist_name"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, playlistName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v8}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v7, v8, v3, v4}, Lcom/google/android/music/medialist/SongList;->appendToPlaylist(Landroid/content/ContentResolver;J)I

    move-result v6

    .line 270
    .local v6, songCount:I
    iget-object v8, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v8}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v8

    invoke-static {v8, v6, v5}, Lcom/google/android/music/MusicUtils;->showSongsAddedToPlaylistToast(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 273
    .end local v3           #playlistId:J
    .end local v5           #playlistName:Ljava/lang/String;
    .end local v6           #songCount:I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "artist"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, artistName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v8}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/google/android/music/MusicUtils;->shopFor(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    .end local v1           #artistName:Ljava/lang/String;
    :sswitch_4
    new-instance v2, Lcom/google/android/music/OfflineMusicManager;

    iget-object v8, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v8}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;)V

    .line 278
    .local v2, manager:Lcom/google/android/music/OfflineMusicManager;
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 279
    new-instance v8, Lcom/google/android/music/SpaceWarningListener;

    iget-object v9, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v9}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/music/SpaceWarningListener;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    invoke-virtual {v2, v8}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 281
    :cond_0
    iget-object v8, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v8}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getChecked()Z

    move-result v9

    invoke-virtual {v7, v2, v8, v9}, Lcom/google/android/music/medialist/SongList;->modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V

    .line 282
    invoke-virtual {v2}, Lcom/google/android/music/OfflineMusicManager;->commitChanges()V

    goto/16 :goto_1

    .line 286
    .end local v2           #manager:Lcom/google/android/music/OfflineMusicManager;
    :sswitch_5
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;->requestRename()V

    goto/16 :goto_1

    .line 290
    :sswitch_6
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;->requestDelete()V

    goto/16 :goto_1

    .line 254
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
        0xf -> :sswitch_4
        0x1c -> :sswitch_6
        0x192 -> :sswitch_5
        0x258 -> :sswitch_3
    .end sparse-switch
.end method

.method protected abstract requestDelete()V
.end method

.method protected abstract requestRename()V
.end method
