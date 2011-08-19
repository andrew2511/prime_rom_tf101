.class Lcom/asus/dm/DMService$DMSystemService;
.super Lcom/asus/dm/IDMService$Stub;
.source "DMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DMSystemService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/DMService;


# direct methods
.method constructor <init>(Lcom/asus/dm/DMService;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-direct {p0}, Lcom/asus/dm/IDMService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doC2dmIDSession(Ljava/lang/String;Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionInitiator;)V
    .locals 1
    .parameter "id"
    .parameter "appName"
    .parameter "initiator"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$900(Lcom/asus/dm/DMService;)Z

    .line 647
    iget-object v0, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$100(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/asus/dmlib/vdm/VdmEngine;->triggerC2dmIDSession(Ljava/lang/String;Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 648
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
    .line 627
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trigger User-Initiated DMSession()......."

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {}, Lcom/asus/dm/DMConfig;->isAllowCIDMSession()Z

    move-result v1

    if-nez v1, :cond_0

    .line 630
    const-string v1, "Not Allow User Initiate DM Session"

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 634
    :cond_0
    invoke-static {}, Lcom/asus/dm/DMService;->access$600()I

    move-result v1

    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$700(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMService$RetryBroadcastReceiver;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->access$800(Lcom/asus/dm/DMService$RetryBroadcastReceiver;)V

    .line 637
    iget-object v1, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$200(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;->USER:Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

    invoke-virtual {v1, v2, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->triggerSession([BLcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :cond_1
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 639
    .local v0, ex:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getError()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 660
    iget-object v0, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    sget-object v1, Lcom/asus/dm/DMClient$DMClientState;->IDLE:Lcom/asus/dm/DMClient$DMClientState;

    invoke-virtual {v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setState(Lcom/asus/dm/DMClient$DMClientState;)V

    .line 661
    iget-object v0, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->clearPostponeTimes()V

    .line 662
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
    .line 576
    iget-object v3, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/dm/DMCRegistryManager;->setBootCompletedDelay(Z)V

    .line 578
    iget-object v3, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/dm/DMCRegistryManager;->getState()Lcom/asus/dm/DMClient$DMClientState;

    move-result-object v3

    sget-object v4, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_UPDATE_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    if-ne v3, v4, :cond_1

    .line 579
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 581
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 582
    sget-object v3, Lcom/asus/dm/DMService$DialogId;->CONFIRM_UPDATE:Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {v3}, Lcom/asus/dm/DMService$DialogId;->ordinal()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 584
    iget-object v3, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-virtual {v3, v2}, Lcom/asus/dm/DMService;->sendMessage(Landroid/os/Message;)V

    .line 624
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v3, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/dm/DMCRegistryManager;->getState()Lcom/asus/dm/DMClient$DMClientState;

    move-result-object v3

    sget-object v4, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_DOWNLOAD_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    if-ne v3, v4, :cond_2

    .line 587
    iget-object v3, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-virtual {v3}, Lcom/asus/dm/DMService;->showConfirmDownloadUI()V

    goto :goto_0

    .line 591
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "triggerDMSession()......."

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v3, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    iget-object v3, v3, Lcom/asus/dm/DMService;->mFumoHandler:Lcom/asus/dm/fumoHandler/DefaultFumoHandler;

    invoke-virtual {v3}, Lcom/asus/dm/fumoHandler/DefaultFumoHandler;->getDLResume()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 598
    const-string v3, "DMService"

    const-string v4, "do Downalod resume."

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v3, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$300(Lcom/asus/dm/DMService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 602
    :cond_3
    invoke-static {}, Lcom/asus/dm/DMService;->access$600()I

    move-result v3

    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 604
    iget-object v3, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$700(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMService$RetryBroadcastReceiver;

    move-result-object v3

    invoke-static {v3}, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->access$800(Lcom/asus/dm/DMService$RetryBroadcastReceiver;)V

    .line 606
    :try_start_0
    iget-object v3, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$900(Lcom/asus/dm/DMService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 607
    iget-object v3, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$100(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/VdmEngine;

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

    .line 608
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 609
    .local v1, ex:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0

    .line 611
    .end local v1           #ex:Lcom/asus/dmlib/vdm/VdmException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 612
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 613
    const-string v3, "DMService"

    const-string v4, "doDMSession() gets a NullPointerException!!"

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 615
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 616
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMService"

    const-string v4, "doDMSession() gets an Exception!!"

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 620
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v3, "lib is processing another job"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

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
    .line 651
    iget-object v1, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$700(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMService$RetryBroadcastReceiver;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->access$800(Lcom/asus/dm/DMService$RetryBroadcastReceiver;)V

    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$900(Lcom/asus/dm/DMService;)Z

    .line 654
    iget-object v1, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$100(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    iget-object v3, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-virtual {v1, p1, v2, v3}, Lcom/asus/dmlib/vdm/VdmEngine;->triggerNIADmSession([BLcom/asus/dmlib/vdm/SessionInitiator;Lcom/asus/dmlib/vdm/NIAMsgHandler;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 656
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
    .line 675
    return-void
.end method

.method public setDMEngineDebugable(Z)V
    .locals 2
    .parameter "isdebug"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/dm/DMCRegistryManager;->setDMDebugable(Z)V

    .line 679
    if-eqz p1, :cond_0

    .line 680
    iget-object v0, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$100(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/VdmLogLevel;->DEBUG:Lcom/asus/dmlib/vdm/VdmLogLevel;

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/vdm/VdmEngine;->setDefaultLogLevel(Lcom/asus/dmlib/vdm/VdmLogLevel;)V

    .line 684
    :goto_0
    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$100(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/VdmEngine;

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
    .line 665
    if-eqz p1, :cond_0

    .line 666
    const-string v0, "clear notify"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    iget-object v0, v0, Lcom/asus/dm/DMService;->mDLProgress:Lcom/asus/dm/DMDownloadProgress;

    invoke-virtual {v0}, Lcom/asus/dm/DMDownloadProgress;->cancelProgressNotification()V

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/asus/dm/DMService$DMSystemService;->this$0:Lcom/asus/dm/DMService;

    invoke-virtual {v0}, Lcom/asus/dm/DMService;->showConfirmUpdateUI()V

    .line 670
    return-void
.end method
