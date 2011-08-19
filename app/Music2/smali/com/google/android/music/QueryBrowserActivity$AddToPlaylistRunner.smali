.class Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;
.super Ljava/lang/Object;
.source "QueryBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddToPlaylistRunner"
.end annotation


# instance fields
.field private mAddedCount:I

.field private final mItemId:J

.field private final mItemType:I

.field private final mPlaylistId:J

.field private final mPlaylistName:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/QueryBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/QueryBrowserActivity;JLjava/lang/String;IJ)V
    .locals 0
    .parameter
    .parameter "playlistId"
    .parameter "playlistName"
    .parameter "itemType"
    .parameter "itemId"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->this$0:Lcom/google/android/music/QueryBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p4, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mPlaylistName:Ljava/lang/String;

    .line 554
    iput-wide p2, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mPlaylistId:J

    .line 555
    iput p5, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mItemType:I

    .line 556
    iput-wide p6, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mItemId:J

    .line 557
    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 6

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, result:I
    iget v1, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mItemType:I

    packed-switch v1, :pswitch_data_0

    .line 580
    const-string v1, "QueryBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected search item type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mItemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_0
    monitor-enter p0

    .line 584
    :try_start_0
    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mAddedCount:I

    .line 585
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    return-void

    .line 563
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->this$0:Lcom/google/android/music/QueryBrowserActivity;

    invoke-virtual {v1}, Lcom/google/android/music/QueryBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mPlaylistId:J

    iget-wide v4, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mItemId:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/music/store/MusicContent$Playlists;->appendAlbumToPlayList(Landroid/content/ContentResolver;JJ)I

    move-result v0

    .line 565
    goto :goto_0

    .line 568
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->this$0:Lcom/google/android/music/QueryBrowserActivity;

    invoke-virtual {v1}, Lcom/google/android/music/QueryBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mPlaylistId:J

    iget-wide v4, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mItemId:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/music/store/MusicContent$Playlists;->appendArtistToPlayList(Landroid/content/ContentResolver;JJ)I

    move-result v0

    .line 570
    goto :goto_0

    .line 572
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->this$0:Lcom/google/android/music/QueryBrowserActivity;

    invoke-virtual {v1}, Lcom/google/android/music/QueryBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mPlaylistId:J

    iget-wide v4, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mItemId:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/music/store/MusicContent$Playlists;->appendItemToPlayList(Landroid/content/ContentResolver;JJ)I

    move-result v0

    .line 574
    goto :goto_0

    .line 576
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->this$0:Lcom/google/android/music/QueryBrowserActivity;

    invoke-virtual {v1}, Lcom/google/android/music/QueryBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mPlaylistId:J

    iget-wide v4, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mItemId:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/music/store/MusicContent$Playlists;->appendPlaylistToPlayList(Landroid/content/ContentResolver;JJ)I

    move-result v0

    .line 578
    goto :goto_0

    .line 585
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 561
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 591
    monitor-enter p0

    .line 592
    :try_start_0
    iget v0, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mAddedCount:I

    .line 593
    .local v0, count:I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->this$0:Lcom/google/android/music/QueryBrowserActivity;

    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;->mPlaylistName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/google/android/music/MusicUtils;->showSongsAddedToPlaylistToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 597
    return-void

    .line 593
    .end local v0           #count:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
