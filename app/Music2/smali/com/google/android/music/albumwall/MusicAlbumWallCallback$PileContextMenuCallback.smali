.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;
.super Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;
.source "MusicAlbumWallCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PileContextMenuCallback"
.end annotation


# instance fields
.field private final mItem:Lcom/google/android/music/albumwall/MusicPile;

.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicPile;)V
    .locals 1
    .parameter
    .parameter "item"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;)V

    .line 369
    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicPile;

    .line 370
    return-void
.end method


# virtual methods
.method protected getSongList()Lcom/google/android/music/medialist/SongList;
    .locals 5

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$400(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown view mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$400(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :pswitch_0
    new-instance v0, Lcom/google/android/music/medialist/ArtistSongList;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicPile;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicPile;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    .line 379
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/music/medialist/GenreSongList;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicPile;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicPile;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->getGenreSongsSortOrder()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected requestDelete()V
    .locals 6

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$400(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only artists pile supports delete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ARTIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicPile;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicPile;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;->mItem:Lcom/google/android/music/albumwall/MusicPile;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/MusicPile;->getHasRemote()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/DeleteConfirmationActivity;->confirmDelete(Landroid/content/Context;Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;JLjava/lang/CharSequence;Z)V

    .line 393
    return-void
.end method

.method protected requestRename()V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No pile supports rename"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
