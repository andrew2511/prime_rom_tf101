.class Landroid/server/BluetoothService$EnableThread;
.super Ljava/lang/Thread;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableThread"
.end annotation


# instance fields
.field private final mSaveSetting:Z

.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothService;Z)V
    .registers 3
    .parameter
    .parameter "saveSetting"

    .prologue
    .line 529
    iput-object p1, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 530
    iput-boolean p2, p0, Landroid/server/BluetoothService$EnableThread;->mSaveSetting:Z

    .line 531
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 533
    iget-object v6, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->enableNative()I
    invoke-static {v6}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)I

    move-result v6

    if-nez v6, :cond_36

    move v2, v9

    .line 534
    .local v2, res:Z
    :goto_b
    if-eqz v2, :cond_51

    .line 535
    const/4 v3, 0x2

    .line 536
    .local v3, retryCount:I
    const/4 v5, 0x0

    .local v5, running:Z
    move v4, v3

    .line 537
    .end local v3           #retryCount:I
    .local v4, retryCount:I
    :goto_10
    add-int/lit8 v3, v4, -0x1

    .end local v4           #retryCount:I
    .restart local v3       #retryCount:I
    if-lez v4, :cond_42

    if-nez v5, :cond_42

    .line 538
    iget-object v6, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v6

    invoke-virtual {v6}, Landroid/server/BluetoothEventLoop;->start()V

    .line 541
    const/4 v0, 0x5

    .local v0, pollCount:I
    move v1, v0

    .line 542
    .end local v0           #pollCount:I
    .local v1, pollCount:I
    :goto_21
    add-int/lit8 v0, v1, -0x1

    .end local v1           #pollCount:I
    .restart local v0       #pollCount:I
    if-lez v1, :cond_34

    if-nez v5, :cond_34

    .line 543
    iget-object v6, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v6

    invoke-virtual {v6}, Landroid/server/BluetoothEventLoop;->isEventLoopRunning()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 544
    const/4 v5, 0x1

    :cond_34
    move v4, v3

    .line 551
    .end local v3           #retryCount:I
    .restart local v4       #retryCount:I
    goto :goto_10

    .end local v0           #pollCount:I
    .end local v2           #res:Z
    .end local v4           #retryCount:I
    .end local v5           #running:Z
    :cond_36
    move v2, v8

    .line 533
    goto :goto_b

    .line 548
    .restart local v0       #pollCount:I
    .restart local v2       #res:Z
    .restart local v3       #retryCount:I
    .restart local v5       #running:Z
    :cond_38
    const-wide/16 v6, 0x64

    :try_start_3a
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_3f

    move v1, v0

    .line 549
    .end local v0           #pollCount:I
    .restart local v1       #pollCount:I
    goto :goto_21

    .end local v1           #pollCount:I
    .restart local v0       #pollCount:I
    :catch_3f
    move-exception v6

    move v1, v0

    .end local v0           #pollCount:I
    .restart local v1       #pollCount:I
    goto :goto_21

    .line 552
    .end local v1           #pollCount:I
    :cond_42
    if-nez v5, :cond_51

    .line 553
    const-string v6, "BluetoothService"

    const-string v7, "bt EnableThread giving up"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v2, 0x0

    .line 555
    iget-object v6, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->disableNative()I
    invoke-static {v6}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)I

    .line 559
    .end local v3           #retryCount:I
    .end local v5           #running:Z
    :cond_51
    if-eqz v2, :cond_8d

    .line 560
    iget-object v6, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->setupNativeDataNative()Z
    invoke-static {v6}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 581
    :goto_5b
    return-void

    .line 563
    :cond_5c
    iget-boolean v6, p0, Landroid/server/BluetoothService$EnableThread;->mSaveSetting:Z

    if-eqz v6, :cond_65

    .line 564
    iget-object v6, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->persistBluetoothOnSetting(Z)V
    invoke-static {v6, v9}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;Z)V

    .line 567
    :cond_65
    iget-object v6, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mIsDiscovering:Z
    invoke-static {v6, v8}, Landroid/server/BluetoothService;->access$602(Landroid/server/BluetoothService;Z)Z

    .line 568
    iget-object v6, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/server/BluetoothBondState;->readAutoPairingData()V

    .line 569
    iget-object v6, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/server/BluetoothBondState;->loadBondState()V

    .line 570
    iget-object v6, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->initProfileState()V
    invoke-static {v6}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)V

    .line 576
    iget-object v6, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->updateSdpRecords()V
    invoke-static {v6}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)V

    .line 580
    :goto_86
    iget-object v6, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/4 v7, 0x0

    #setter for: Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;
    invoke-static {v6, v7}, Landroid/server/BluetoothService;->access$1102(Landroid/server/BluetoothService;Landroid/server/BluetoothService$EnableThread;)Landroid/server/BluetoothService$EnableThread;

    goto :goto_5b

    .line 578
    :cond_8d
    iget-object v6, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/16 v7, 0xa

    #calls: Landroid/server/BluetoothService;->setBluetoothState(I)V
    invoke-static {v6, v7}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;I)V

    goto :goto_86
.end method
