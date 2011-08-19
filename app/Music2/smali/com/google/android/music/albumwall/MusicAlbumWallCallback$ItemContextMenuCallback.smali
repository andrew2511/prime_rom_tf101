.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;
.super Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;
.source "MusicAlbumWallCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemContextMenuCallback"
.end annotation


# instance fields
.field private final mItem:Lcom/google/android/music/albumwall/MusicItem;

.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;)V
    .locals 1
    .parameter
    .parameter "item"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;)V

    .line 312
    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    .line 313
    return-void
.end method


# virtual methods
.method protected getSongList()Lcom/google/android/music/medialist/SongList;
    .locals 6

    .prologue
    .line 319
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v0

    .line 320
    .local v0, itemType:I
    packed-switch v0, :pswitch_data_0

    .line 339
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown item type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :pswitch_0
    new-instance v1, Lcom/google/android/music/medialist/AlbumSongList;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .line 335
    :goto_0
    return-object v1

    .line 324
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 325
    new-instance v1, Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$300(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getRecentlyAddedSongsSortOrder()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/music/medialist/RecentlyAdddedSongList;-><init>(I)V

    goto :goto_0

    .line 328
    :cond_0
    new-instance v1, Lcom/google/android/music/medialist/PlaylistSongList;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;)V

    goto :goto_0

    .line 331
    :pswitch_2
    new-instance v1, Lcom/google/android/music/medialist/ArtistSongList;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    goto :goto_0

    .line 335
    :pswitch_3
    new-instance v1, Lcom/google/android/music/medialist/GenreSongList;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected requestDelete()V
    .locals 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only playlist item supports delete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/DeleteConfirmationActivity;->confirmDeletePlaylist(Landroid/content/Context;JLjava/lang/CharSequence;)V

    .line 351
    return-void
.end method

.method protected requestRename()V
    .locals 4

    .prologue
    .line 355
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 356
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only playlist item supports rename"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "playlistId"

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 360
    const-string v1, "playlistName"

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicItem;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 362
    return-void
.end method
