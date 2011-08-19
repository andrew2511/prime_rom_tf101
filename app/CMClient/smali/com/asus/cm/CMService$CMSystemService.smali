.class Lcom/asus/cm/CMService$CMSystemService;
.super Lcom/asus/cm/IDMService$Stub;
.source "CMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CMSystemService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/CMService;


# direct methods
.method constructor <init>(Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-direct {p0}, Lcom/asus/cm/IDMService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doC2dmIDSession(Ljava/lang/String;Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionInitiator;)V
    .locals 1
    .parameter "id"
    .parameter "appName"
    .parameter "initiator"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$900(Lcom/asus/cm/CMService;)Z

    .line 702
    iget-object v0, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$100(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/asus/dmlib/vdm/VdmEngine;->triggerC2dmIDSession(Ljava/lang/String;Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 703
    return-void
.end method

.method public doCIDMSession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trigger User-Initiated DMSession()......."

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-static {}, Lcom/asus/cm/CMConfig;->isAllowCIDMSession()Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    const-string v1, "Not Allow User Initiate DM Session"

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 689
    :cond_0
    invoke-static {}, Lcom/asus/cm/CMService;->access$600()I

    move-result v1

    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$700(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMService$RetryBroadcastReceiver;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->access$800(Lcom/asus/cm/CMService$RetryBroadcastReceiver;)V

    .line 692
    iget-object v1, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$200(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;->USER:Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

    invoke-virtual {v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->triggerSession([BLcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :cond_1
    :goto_0
    return-void

    .line 693
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 694
    .local v0, ex:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getError()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doCancelInstall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    sget-object v1, Lcom/asus/cm/CMClient$DMClientState;->IDLE:Lcom/asus/cm/CMClient$DMClientState;

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMCRegistryManager;->setState(Lcom/asus/cm/CMClient$DMClientState;)V

    .line 721
    iget-object v0, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/cm/CMCRegistryManager;->clearPostponeTimes()V

    .line 722
    return-void
.end method

.method public doDMSession()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 628
    iget-object v3, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/cm/CMCRegistryManager;->setBootCompletedDelay(Z)V

    .line 629
    iget-object v3, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 630
    iget-object v3, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    iget-object v4, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v4}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/CMService;->access$502(Lcom/asus/cm/CMService;Lcom/asus/cm/CMCRegistryManager;)Lcom/asus/cm/CMCRegistryManager;

    .line 632
    :cond_0
    iget-object v3, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/cm/CMCRegistryManager;->getState()Lcom/asus/cm/CMClient$DMClientState;

    move-result-object v3

    sget-object v4, Lcom/asus/cm/CMClient$DMClientState;->CONFIRM_UPDATE_DIALOG:Lcom/asus/cm/CMClient$DMClientState;

    if-ne v3, v4, :cond_2

    .line 633
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 635
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 636
    sget-object v3, Lcom/asus/cm/CMService$DialogId;->CONFIRM_UPDATE:Lcom/asus/cm/CMService$DialogId;

    invoke-virtual {v3}, Lcom/asus/cm/CMService$DialogId;->ordinal()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 638
    iget-object v3, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-virtual {v3, v2}, Lcom/asus/cm/CMService;->sendMessage(Landroid/os/Message;)V

    .line 679
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 640
    :cond_2
    iget-object v3, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/cm/CMCRegistryManager;->getState()Lcom/asus/cm/CMClient$DMClientState;

    move-result-object v3

    sget-object v4, Lcom/asus/cm/CMClient$DMClientState;->CONFIRM_DOWNLOAD_DIALOG:Lcom/asus/cm/CMClient$DMClientState;

    if-ne v3, v4, :cond_3

    .line 641
    iget-object v3, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-virtual {v3}, Lcom/asus/cm/CMService;->showConfirmDownloadUI()V

    goto :goto_0

    .line 645
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "triggerDMSession()......."

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v3, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    iget-object v3, v3, Lcom/asus/cm/CMService;->mFumoHandler:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    invoke-virtual {v3}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->getDLResume()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 652
    const-string v3, "CMService"

    const-string v4, "do Downalod resume."

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v3, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$300(Lcom/asus/cm/CMService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 656
    :cond_4
    invoke-static {}, Lcom/asus/cm/CMService;->access$600()I

    move-result v3

    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 658
    iget-object v3, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$700(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMService$RetryBroadcastReceiver;

    move-result-object v3

    invoke-static {v3}, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->access$800(Lcom/asus/cm/CMService$RetryBroadcastReceiver;)V

    .line 660
    :try_start_0
    iget-object v3, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$900(Lcom/asus/cm/CMService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 661
    iget-object v3, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$100(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/asus/dmlib/vdm/VdmEngine;->triggerDMSession(Ljava/lang/String;Ljava/lang/String;[BLcom/asus/dmlib/vdm/SessionInitiator;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 663
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 664
    .local v1, ex:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0

    .line 666
    .end local v1           #ex:Lcom/asus/dmlib/vdm/VdmException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 667
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 668
    const-string v3, "CMService"

    const-string v4, "doDMSession() gets a NullPointerException!!"

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 671
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CMService"

    const-string v4, "doDMSession() gets an Exception!!"

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    const-string v3, "lib is processing another job"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public doNIDMSession([B)V
    .locals 4
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 711
    iget-object v1, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$700(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMService$RetryBroadcastReceiver;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->access$800(Lcom/asus/cm/CMService$RetryBroadcastReceiver;)V

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$900(Lcom/asus/cm/CMService;)Z

    .line 714
    iget-object v1, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$100(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    iget-object v3, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-virtual {v1, p1, v2, v3}, Lcom/asus/dmlib/vdm/VdmEngine;->triggerNIADmSession([BLcom/asus/dmlib/vdm/SessionInitiator;Lcom/asus/dmlib/vdm/NIAMsgHandler;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 716
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0
.end method

.method public doProvision([B)V
    .locals 0
    .parameter "dmProfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 735
    return-void
.end method

.method public doVibeIDSession(Ljava/lang/String;Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionInitiator;)V
    .locals 1
    .parameter "id"
    .parameter "appName"
    .parameter "initiator"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$900(Lcom/asus/cm/CMService;)Z

    .line 707
    iget-object v0, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$100(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/asus/dmlib/vdm/VdmEngine;->triggerVibeSession(Ljava/lang/String;Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 708
    return-void
.end method

.method public setDMEngineDebugable(Z)V
    .locals 2
    .parameter "isdebug"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/cm/CMCRegistryManager;->setDMDebugable(Z)V

    .line 739
    if-eqz p1, :cond_0

    .line 740
    iget-object v0, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$100(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/VdmLogLevel;->DEBUG:Lcom/asus/dmlib/vdm/VdmLogLevel;

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/vdm/VdmEngine;->setDefaultLogLevel(Lcom/asus/dmlib/vdm/VdmLogLevel;)V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$100(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/VdmLogLevel;->INFO:Lcom/asus/dmlib/vdm/VdmLogLevel;

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/vdm/VdmEngine;->setDefaultLogLevel(Lcom/asus/dmlib/vdm/VdmLogLevel;)V

    goto :goto_0
.end method

.method public showConfirmUpdateDialog(Z)V
    .locals 1
    .parameter "clearNotification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 725
    if-eqz p1, :cond_0

    .line 726
    const-string v0, "clear notify"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    iget-object v0, v0, Lcom/asus/cm/CMService;->mDLProgress:Lcom/asus/cm/CMDownloadProgress;

    invoke-virtual {v0}, Lcom/asus/cm/CMDownloadProgress;->cancelProgressNotification()V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    invoke-virtual {v0}, Lcom/asus/cm/CMService;->showConfirmUpdateUI()V

    .line 730
    return-void
.end method

.method public showLockScreen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 747
    iget-object v0, p0, Lcom/asus/cm/CMService$CMSystemService;->this$0:Lcom/asus/cm/CMService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/asus/cm/CMService;->access$1002(Lcom/asus/cm/CMService;Z)Z

    .line 748
    return-void
.end method
