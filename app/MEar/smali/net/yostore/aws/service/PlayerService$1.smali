.class Lnet/yostore/aws/service/PlayerService$1;
.super Lnet/yostore/aws/service/PlayerServiceInterface$Stub;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/PlayerService;


# direct methods
.method constructor <init>(Lnet/yostore/aws/service/PlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    .line 688
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V
    .locals 1
    .parameter "mp3Item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 969
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    :cond_0
    return-void
.end method

.method public clearPlaylist()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 702
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 703
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 705
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/yostore/aws/service/PlayerService;->access$5(Lnet/yostore/aws/service/PlayerService;Ljava/util/List;)V

    .line 707
    :cond_0
    return-void
.end method

.method public comparePlayingFolderId(J)Z
    .locals 3
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 867
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$20(Lnet/yostore/aws/service/PlayerService;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    move v0, v2

    .line 871
    :goto_0
    return v0

    .line 870
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0, p1, p2}, Lnet/yostore/aws/service/PlayerService;->access$21(Lnet/yostore/aws/service/PlayerService;J)V

    move v0, v2

    .line 871
    goto :goto_0
.end method

.method public getCurrentIdx()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/ecareme/mear/Mear;->playingStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 821
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 823
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentSong()Lnet/yostore/aws/handler/entity/Mp3Item;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$14(Lnet/yostore/aws/service/PlayerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$10(Lnet/yostore/aws/service/PlayerService;)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$10(Lnet/yostore/aws/service/PlayerService;)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v0

    .line 998
    .end local p0
    :goto_0
    return-object v0

    .line 995
    .restart local p0
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 996
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/Mp3Item;

    move-object v0, p0

    goto :goto_0

    .line 998
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentSongList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/Mp3Item;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1005
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/ecareme/mear/Mear;->playingStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 814
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 816
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayingFolderId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 879
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$20(Lnet/yostore/aws/service/PlayerService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRepeatPlay()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 954
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$22(Lnet/yostore/aws/service/PlayerService;)I

    move-result v0

    return v0
.end method

.method public getShufflePlay()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$17(Lnet/yostore/aws/service/PlayerService;)I

    move-result v0

    return v0
.end method

.method public getSong(I)Lnet/yostore/aws/handler/entity/Mp3Item;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/Mp3Item;

    return-object p0
.end method

.method public getStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    const/4 v0, 0x2

    .line 836
    :goto_0
    return v0

    .line 833
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$8(Lnet/yostore/aws/service/PlayerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    const/4 v0, 0x1

    goto :goto_0

    .line 836
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertPlayingSong(Lnet/yostore/aws/handler/entity/Mp3Item;)V
    .locals 2
    .parameter "mp3Item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1028
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$0(Lnet/yostore/aws/service/PlayerService;)V

    .line 1029
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0, p1}, Lnet/yostore/aws/service/PlayerService;->access$25(Lnet/yostore/aws/service/PlayerService;Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 1030
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/yostore/aws/service/PlayerService;->access$15(Lnet/yostore/aws/service/PlayerService;Z)V

    .line 1031
    return-void
.end method

.method public insertSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V
    .locals 2
    .parameter "mp3Item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 981
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 987
    return-void

    .line 984
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lnet/yostore/aws/service/PlayerService;->access$1(Lnet/yostore/aws/service/PlayerService;I)V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 809
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    const v4, 0x7f02009e

    const/4 v3, 0x1

    .line 746
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$8(Lnet/yostore/aws/service/PlayerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 748
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lnet/yostore/aws/service/PlayerService;->updateNotification(ILjava/lang/CharSequence;)V

    .line 752
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 753
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0, v3}, Lnet/yostore/aws/service/PlayerService;->access$12(Lnet/yostore/aws/service/PlayerService;Z)V

    .line 754
    sput v3, Lcom/ecareme/mear/Mear;->playingStatus:I

    .line 755
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    const-string v1, "PlayStatus"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lnet/yostore/aws/service/PlayerService;->access$13(Lnet/yostore/aws/service/PlayerService;Ljava/lang/String;I)V

    .line 757
    :cond_1
    return-void

    .line 749
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$10(Lnet/yostore/aws/service/PlayerService;)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$10(Lnet/yostore/aws/service/PlayerService;)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lnet/yostore/aws/service/PlayerService;->updateNotification(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public play()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 760
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-boolean v1, v1, Lnet/yostore/aws/service/PlayerService;->phonePlayerSW:Z

    if-nez v1, :cond_0

    .line 764
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$10(Lnet/yostore/aws/service/PlayerService;)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$14(Lnet/yostore/aws/service/PlayerService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 765
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$10(Lnet/yostore/aws/service/PlayerService;)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/yostore/aws/service/PlayerService;->access$3(Lnet/yostore/aws/service/PlayerService;Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 766
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/yostore/aws/service/PlayerService;->access$15(Lnet/yostore/aws/service/PlayerService;Z)V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$8(Lnet/yostore/aws/service/PlayerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$16(Lnet/yostore/aws/service/PlayerService;)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/ecareme/mear/Mear;->playingStatus:I

    if-ne v1, v2, :cond_2

    .line 770
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v3}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-static {v2, v1}, Lnet/yostore/aws/service/PlayerService;->access$3(Lnet/yostore/aws/service/PlayerService;Lnet/yostore/aws/handler/entity/Mp3Item;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 791
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 794
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 795
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-virtual {v1}, Lnet/yostore/aws/service/PlayerService;->mediaStop()V

    goto :goto_0

    .line 774
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_2
    :try_start_1
    sget v1, Lcom/ecareme/mear/Mear;->playingStatus:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 776
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$17(Lnet/yostore/aws/service/PlayerService;)I

    move-result v1

    if-nez v1, :cond_5

    .line 777
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v1

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 778
    :cond_3
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/yostore/aws/service/PlayerService;->access$1(Lnet/yostore/aws/service/PlayerService;I)V

    .line 787
    :cond_4
    :goto_1
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/yostore/aws/service/PlayerService$1;->playFile(I)V

    goto :goto_0

    .line 780
    :cond_5
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$17(Lnet/yostore/aws/service/PlayerService;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 781
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 782
    :cond_6
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-virtual {v1}, Lnet/yostore/aws/service/PlayerService;->generateShuffleIdx()V

    .line 783
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/yostore/aws/service/PlayerService;->access$18(Lnet/yostore/aws/service/PlayerService;I)V

    .line 785
    :cond_7
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v3}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayerService;->access$19(Lnet/yostore/aws/service/PlayerService;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v2}, Lnet/yostore/aws/service/PlayerService;->access$1(Lnet/yostore/aws/service/PlayerService;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public playFile(I)V
    .locals 3
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$0(Lnet/yostore/aws/service/PlayerService;)V

    .line 693
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1, p1}, Lnet/yostore/aws/service/PlayerService;->access$1(Lnet/yostore/aws/service/PlayerService;I)V

    .line 694
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-static {v2, v1}, Lnet/yostore/aws/service/PlayerService;->access$3(Lnet/yostore/aws/service/PlayerService;Lnet/yostore/aws/handler/entity/Mp3Item;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 697
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Lnet/yostore/aws/service/PlayerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playInsertSong()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1037
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$10(Lnet/yostore/aws/service/PlayerService;)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-boolean v1, v1, Lnet/yostore/aws/service/PlayerService;->phonePlayerSW:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$14(Lnet/yostore/aws/service/PlayerService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1040
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$10(Lnet/yostore/aws/service/PlayerService;)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$14(Lnet/yostore/aws/service/PlayerService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1041
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$10(Lnet/yostore/aws/service/PlayerService;)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/yostore/aws/service/PlayerService;->access$3(Lnet/yostore/aws/service/PlayerService;Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 1042
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/yostore/aws/service/PlayerService;->access$15(Lnet/yostore/aws/service/PlayerService;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1045
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1048
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1049
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-virtual {v1}, Lnet/yostore/aws/service/PlayerService;->mediaStop()V

    goto :goto_0
.end method

.method public removeSongPlaylist(I)V
    .locals 6
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 901
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 903
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v3}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 904
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v3}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 905
    .local v0, tmp:I
    if-lez v0, :cond_1

    .line 906
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne v0, v2, :cond_0

    .line 907
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/yostore/aws/service/PlayerService;->access$18(Lnet/yostore/aws/service/PlayerService;I)V

    .line 909
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 912
    .end local v0           #tmp:I
    :cond_1
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 913
    invoke-virtual {p0}, Lnet/yostore/aws/service/PlayerService$1;->getStatus()I

    move-result v1

    .line 914
    .local v1, tmpStatus:I
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v2

    if-ne v2, p1, :cond_4

    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_4

    .line 915
    :cond_2
    if-ne v1, v5, :cond_6

    .line 916
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v2

    if-lez v2, :cond_5

    .line 917
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lnet/yostore/aws/service/PlayerService;->access$1(Lnet/yostore/aws/service/PlayerService;I)V

    .line 918
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$19(Lnet/yostore/aws/service/PlayerService;)I

    move-result v2

    if-lez v2, :cond_3

    .line 919
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$19(Lnet/yostore/aws/service/PlayerService;)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lnet/yostore/aws/service/PlayerService;->access$18(Lnet/yostore/aws/service/PlayerService;I)V

    .line 920
    :cond_3
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$7(Lnet/yostore/aws/service/PlayerService;)V

    .line 929
    .end local v1           #tmpStatus:I
    .end local p0
    :cond_4
    :goto_0
    return-void

    .line 922
    .restart local v1       #tmpStatus:I
    .restart local p0
    :cond_5
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-object v3, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v3}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-static {v2, p0}, Lnet/yostore/aws/service/PlayerService;->access$3(Lnet/yostore/aws/service/PlayerService;Lnet/yostore/aws/handler/entity/Mp3Item;)V

    goto :goto_0

    .line 925
    .restart local p0
    :cond_6
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-virtual {v2}, Lnet/yostore/aws/service/PlayerService;->mediaStop()V

    goto :goto_0
.end method

.method public resetService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1019
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-virtual {v0}, Lnet/yostore/aws/service/PlayerService;->stopSelf()V

    .line 1020
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-virtual {v0}, Lnet/yostore/aws/service/PlayerService;->onDestroy()V

    .line 1022
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 4
    .parameter "cPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 886
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1, p1}, Lnet/yostore/aws/service/PlayerService;->access$1(Lnet/yostore/aws/service/PlayerService;I)V

    .line 887
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$17(Lnet/yostore/aws/service/PlayerService;)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$22(Lnet/yostore/aws/service/PlayerService;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 888
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 889
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$4(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v3}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 890
    .local v0, tmp:I
    if-lez v0, :cond_0

    .line 891
    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1, v0}, Lnet/yostore/aws/service/PlayerService;->access$18(Lnet/yostore/aws/service/PlayerService;I)V

    .line 895
    .end local v0           #tmp:I
    :cond_0
    return-void
.end method

.method public setNeedUpdateToken()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1058
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/yostore/aws/service/PlayerService;->access$26(Lnet/yostore/aws/service/PlayerService;Z)V

    .line 1059
    return-void
.end method

.method public setRepeatPlay(I)V
    .locals 1
    .parameter "repeat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 935
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0, p1}, Lnet/yostore/aws/service/PlayerService;->access$23(Lnet/yostore/aws/service/PlayerService;I)V

    .line 936
    return-void
.end method

.method public setShufflePlay(I)V
    .locals 1
    .parameter "shuffle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$17(Lnet/yostore/aws/service/PlayerService;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 943
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0, p1}, Lnet/yostore/aws/service/PlayerService;->access$24(Lnet/yostore/aws/service/PlayerService;I)V

    .line 944
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 945
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-virtual {v0}, Lnet/yostore/aws/service/PlayerService;->generateShuffleIdx()V

    .line 948
    :cond_0
    return-void
.end method

.method public skipBack()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$6(Lnet/yostore/aws/service/PlayerService;)V

    .line 724
    return-void
.end method

.method public skipForward()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$7(Lnet/yostore/aws/service/PlayerService;)V

    .line 743
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-virtual {v0}, Lnet/yostore/aws/service/PlayerService;->mediaStop()V

    .line 802
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$1;->this$0:Lnet/yostore/aws/service/PlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/yostore/aws/service/PlayerService;->access$12(Lnet/yostore/aws/service/PlayerService;Z)V

    .line 803
    return-void
.end method
