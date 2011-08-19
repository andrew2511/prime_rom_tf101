.class Lnet/yostore/aws/service/PlayListService$1;
.super Lnet/yostore/aws/service/PlayListServiceInterface$Stub;
.source "PlayListService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/PlayListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/PlayListService;


# direct methods
.method constructor <init>(Lnet/yostore/aws/service/PlayListService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    .line 635
    invoke-direct {p0}, Lnet/yostore/aws/service/PlayListServiceInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public AddOfflinePlaylist(Ljava/lang/String;)V
    .locals 4
    .parameter "plistid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 639
    const-string v1, "PlayListService"

    const-string v2, "PlayListServiceInterface-AddOfflinePlaylist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->getPlayList(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/PlayList;

    move-result-object v0

    .line 642
    .local v0, plist:Lnet/yostore/aws/sqlite/entity/PlayList;
    iget-object v1, v0, Lnet/yostore/aws/sqlite/entity/PlayList;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->getInt()I

    move-result v1

    if-nez v1, :cond_0

    .line 643
    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v1, p1}, Lnet/yostore/aws/service/PlayListService;->access$1(Lnet/yostore/aws/service/PlayListService;Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_incompleted:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    invoke-static {v1, p1, v2}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->updateStatus(Landroid/content/Context;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;)V

    .line 645
    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-virtual {v1}, Lnet/yostore/aws/service/PlayListService;->resumeDownload()V

    .line 646
    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    const-string v2, "PlayList.StatusChanged"

    invoke-static {v1, v2, p1}, Lnet/yostore/aws/service/PlayListService;->access$2(Lnet/yostore/aws/service/PlayListService;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :goto_0
    return-void

    .line 649
    :cond_0
    const-string v1, "PlayListService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " downloading, skip add to offline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public DelOfflinePlaylist(Ljava/lang/String;)V
    .locals 4
    .parameter "plistid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 655
    const-string v1, "PlayListService"

    const-string v2, "PlayListServiceInterface-DelOfflinePlaylist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->getPlayList(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/PlayList;

    move-result-object v0

    .line 658
    .local v0, plist:Lnet/yostore/aws/sqlite/entity/PlayList;
    iget-object v1, v0, Lnet/yostore/aws/sqlite/entity/PlayList;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->getInt()I

    move-result v1

    if-lez v1, :cond_0

    .line 659
    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/yostore/aws/sqlite/helper/DlQueueHelper;->delOnePlist(Landroid/content/Context;Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    invoke-static {v1, p1, v2}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->updateStatus(Landroid/content/Context;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;)V

    .line 661
    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-virtual {v1}, Lnet/yostore/aws/service/PlayListService;->resumeDownload()V

    .line 662
    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    const-string v2, "PlayList.StatusChanged"

    invoke-static {v1, v2, p1}, Lnet/yostore/aws/service/PlayListService;->access$2(Lnet/yostore/aws/service/PlayListService;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :goto_0
    return-void

    .line 665
    :cond_0
    const-string v1, "PlayListService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " downloading, skip add to offline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public PauseeDownload()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 725
    const-string v0, "PlayListService"

    const-string v1, "PlayListServiceInterface-PauseeDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-virtual {v0}, Lnet/yostore/aws/service/PlayListService;->pauseDownload()V

    .line 727
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    const v1, 0x7f02004e

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/service/PlayListService;->updateNotification(ILjava/lang/CharSequence;)V

    .line 728
    return-void
.end method

.method public RenewPlayList(Ljava/lang/String;J)V
    .locals 11
    .parameter "userName"
    .parameter "changeseq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 671
    const-string v8, "PlayListService"

    const-string v9, "PlayListServiceInterface-RenewPlayList"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v8}, Lnet/yostore/aws/service/PlayListService;->access$3(Lnet/yostore/aws/service/PlayListService;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 673
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lnet/yostore/aws/service/PlayListService;->access$4(Lnet/yostore/aws/service/PlayListService;Z)V

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 677
    .local v4, now:J
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v8, v4, v5}, Lnet/yostore/aws/service/PlayListService;->access$5(Lnet/yostore/aws/service/PlayListService;J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 678
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    const-string v9, "PlayLists.Updated"

    const-string v10, "null"

    invoke-static {v8, v9, v10}, Lnet/yostore/aws/service/PlayListService;->access$2(Lnet/yostore/aws/service/PlayListService;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_0
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v8}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1}, Lnet/yostore/aws/sqlite/helper/MetaMetaHelper;->getMetaMeta(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/MetaMeta;

    move-result-object v3

    .line 682
    .local v3, meta:Lnet/yostore/aws/sqlite/entity/MetaMeta;
    iget-wide v1, v3, Lnet/yostore/aws/sqlite/entity/MetaMeta;->lastModified:J

    .line 683
    .local v1, lastmodified:J
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v8}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1, v2}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->getChangedPlayList(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v7

    .line 684
    .local v7, plists:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    iput-wide p2, v3, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    .line 685
    iput-wide v4, v3, Lnet/yostore/aws/sqlite/entity/MetaMeta;->lastModified:J

    .line 686
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v8}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3}, Lnet/yostore/aws/sqlite/helper/MetaMetaHelper;->setMetaMeta(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/MetaMeta;)V

    .line 689
    invoke-interface {v7}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 690
    .local v0, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 698
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lnet/yostore/aws/service/PlayListService;->access$4(Lnet/yostore/aws/service/PlayListService;Z)V

    .line 700
    .end local v0           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    .end local v1           #lastmodified:J
    .end local v3           #meta:Lnet/yostore/aws/sqlite/entity/MetaMeta;
    .end local v4           #now:J
    .end local v7           #plists:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :cond_1
    return-void

    .line 691
    .restart local v0       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    .restart local v1       #lastmodified:J
    .restart local v3       #meta:Lnet/yostore/aws/sqlite/entity/MetaMeta;
    .restart local v4       #now:J
    .restart local v7       #plists:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/yostore/aws/sqlite/entity/PlayList;

    .line 692
    .local v6, pl:Lnet/yostore/aws/sqlite/entity/PlayList;
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v8, v6}, Lnet/yostore/aws/service/PlayListService;->access$6(Lnet/yostore/aws/service/PlayListService;Lnet/yostore/aws/sqlite/entity/PlayList;)Z

    .line 693
    iget-object v8, v6, Lnet/yostore/aws/sqlite/entity/PlayList;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    invoke-virtual {v8}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->getInt()I

    move-result v8

    sget-object v9, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    invoke-virtual {v9}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->getInt()I

    move-result v9

    if-le v8, v9, :cond_3

    .line 694
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-virtual {v8}, Lnet/yostore/aws/service/PlayListService;->resumeDownload()V

    .line 696
    :cond_3
    iget-object v8, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    const-string v9, "SongList.Updated"

    iget-object v10, v6, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lnet/yostore/aws/service/PlayListService;->access$2(Lnet/yostore/aws/service/PlayListService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ResumeDownload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 704
    const-string v0, "PlayListService"

    const-string v1, "PlayListServiceInterface-ResumeDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayListService;->access$7(Lnet/yostore/aws/service/PlayListService;)V

    .line 706
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-virtual {v0}, Lnet/yostore/aws/service/PlayListService;->resumeDownload()V

    .line 707
    return-void
.end method

.method public cliarNotification()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 739
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayListService;->access$9(Lnet/yostore/aws/service/PlayListService;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayListService;->access$9(Lnet/yostore/aws/service/PlayListService;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 742
    :cond_0
    return-void
.end method

.method public getDownloadMessage()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 732
    const-string v0, "PlayListService"

    const-string v1, "PlayListServiceInterface-getDownloadMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayListService;->access$8(Lnet/yostore/aws/service/PlayListService;)I

    move-result v0

    return v0
.end method

.method public getDownloadStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 719
    const-string v0, "PlayListService"

    const-string v1, "PlayListServiceInterface-getDownloadStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    iget-object v0, v0, Lnet/yostore/aws/service/PlayListService;->status:Lnet/yostore/aws/service/PlayListService$STATUS;

    invoke-virtual {v0}, Lnet/yostore/aws/service/PlayListService$STATUS;->getInt()I

    move-result v0

    return v0
.end method

.method public resetService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 714
    iget-object v0, p0, Lnet/yostore/aws/service/PlayListService$1;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-virtual {v0}, Lnet/yostore/aws/service/PlayListService;->onDestroy()V

    .line 715
    return-void
.end method
