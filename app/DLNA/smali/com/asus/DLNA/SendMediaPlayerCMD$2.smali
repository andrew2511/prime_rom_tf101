.class Lcom/asus/DLNA/SendMediaPlayerCMD$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/SendMediaPlayerCMD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/SendMediaPlayerCMD;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD$2;->this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 844
    :goto_0
    iget-object v6, p0, Lcom/asus/DLNA/SendMediaPlayerCMD$2;->this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendMediaPlayerCMD;->access$000(Lcom/asus/DLNA/SendMediaPlayerCMD;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 846
    iget-object v6, p0, Lcom/asus/DLNA/SendMediaPlayerCMD$2;->this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendMediaPlayerCMD;->access$000(Lcom/asus/DLNA/SendMediaPlayerCMD;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 847
    .local v1, bOrg:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/asus/DLNA/SendMediaPlayerCMD$2;->this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendMediaPlayerCMD;->access$000(Lcom/asus/DLNA/SendMediaPlayerCMD;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 849
    if-nez v1, :cond_0

    .line 850
    const-string v6, "Utils.SendMediaPlayerCMD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bundle(org) is null!!, mCMDQueue.size()= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/DLNA/SendMediaPlayerCMD$2;->this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-static {v8}, Lcom/asus/DLNA/SendMediaPlayerCMD;->access$000(Lcom/asus/DLNA/SendMediaPlayerCMD;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 853
    :cond_0
    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 854
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 855
    const/4 v1, 0x0

    .line 857
    if-nez v0, :cond_1

    .line 858
    const-string v6, "Utils.SendMediaPlayerCMD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bundle(clone) is null!!, mCMDQueue.size()= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/DLNA/SendMediaPlayerCMD$2;->this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-static {v8}, Lcom/asus/DLNA/SendMediaPlayerCMD;->access$000(Lcom/asus/DLNA/SendMediaPlayerCMD;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 862
    :cond_1
    const-string v6, "key_event"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 864
    .local v3, iEvent:I
    packed-switch v3, :pswitch_data_0

    .line 900
    :goto_1
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto/16 :goto_0

    .line 866
    :pswitch_0
    const-string v6, "key_para1"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 867
    .local v5, struri:Ljava/lang/String;
    const-string v6, "key_para2"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 869
    .local v4, strtitle:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/asus/DLNA/SendMediaPlayerCMD$2;->this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendMediaPlayerCMD;->access$100(Lcom/asus/DLNA/SendMediaPlayerCMD;)Lcom/asus/DLNA/IMusicPlaybackService;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Lcom/asus/DLNA/IMusicPlaybackService;->setDataSource(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 870
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 871
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 876
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #strtitle:Ljava/lang/String;
    .end local v5           #struri:Ljava/lang/String;
    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/asus/DLNA/SendMediaPlayerCMD$2;->this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendMediaPlayerCMD;->access$100(Lcom/asus/DLNA/SendMediaPlayerCMD;)Lcom/asus/DLNA/IMusicPlaybackService;

    move-result-object v6

    invoke-interface {v6}, Lcom/asus/DLNA/IMusicPlaybackService;->play()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 877
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 878
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 883
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_2
    :try_start_2
    iget-object v6, p0, Lcom/asus/DLNA/SendMediaPlayerCMD$2;->this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendMediaPlayerCMD;->access$100(Lcom/asus/DLNA/SendMediaPlayerCMD;)Lcom/asus/DLNA/IMusicPlaybackService;

    move-result-object v6

    invoke-interface {v6}, Lcom/asus/DLNA/IMusicPlaybackService;->pause()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 884
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 885
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 890
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_3
    :try_start_3
    iget-object v6, p0, Lcom/asus/DLNA/SendMediaPlayerCMD$2;->this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendMediaPlayerCMD;->access$100(Lcom/asus/DLNA/SendMediaPlayerCMD;)Lcom/asus/DLNA/IMusicPlaybackService;

    move-result-object v6

    invoke-interface {v6}, Lcom/asus/DLNA/IMusicPlaybackService;->stop()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 891
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 892
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 904
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #bOrg:Landroid/os/Bundle;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #iEvent:I
    :cond_2
    return-void

    .line 864
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
