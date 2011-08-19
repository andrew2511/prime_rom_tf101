.class Lcom/asus/dm/DMService$SNRegister;
.super Lcom/asus/dm/IStatusNotifyRegister$Stub;
.source "DMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SNRegister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/DMService;


# direct methods
.method constructor <init>(Lcom/asus/dm/DMService;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    invoke-direct {p0}, Lcom/asus/dm/IStatusNotifyRegister$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDMSession()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DOWNLOAD_CANCELED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {v0, v1}, Lcom/asus/dm/DMService;->doCancelDMSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V

    .line 766
    return-void
.end method

.method public destoryEngine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 769
    const-string v1, "destoryEngine() in"

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$100(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 772
    :goto_0
    iget-object v1, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$100(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmEngine;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 774
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 780
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$700(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMService$RetryBroadcastReceiver;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->access$800(Lcom/asus/dm/DMService$RetryBroadcastReceiver;)V

    .line 781
    iget-object v1, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$1300(Lcom/asus/dm/DMService;)V

    .line 783
    iget-object v1, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    invoke-virtual {v1}, Lcom/asus/dm/DMService;->stopSelf()V

    .line 785
    :cond_1
    const-string v1, "destoryEngine() out"

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method public registerStateCallback(Lcom/asus/dm/IDMServiceStateCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 739
    if-eqz p1, :cond_0

    .line 740
    const-string v0, "DMService"

    const-string v1, "registerStateCallback(IDMServiceStateCallback cb)"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$1000(Lcom/asus/dm/DMService;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$1000(Lcom/asus/dm/DMService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v0, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {}, Lcom/asus/dm/DMService;->access$1100()I

    move-result v1

    invoke-static {}, Lcom/asus/dm/DMService;->access$600()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/asus/dm/DMService;->access$1200(Lcom/asus/dm/DMService;II)V

    .line 753
    :cond_0
    return-void
.end method

.method public startEngine()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 789
    iget-object v0, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$1400(Lcom/asus/dm/DMService;)V

    .line 790
    return-void
.end method

.method public unregisterStateCallback(Lcom/asus/dm/IDMServiceStateCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, -0x1

    .line 756
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$1000(Lcom/asus/dm/DMService;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$1000(Lcom/asus/dm/DMService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 758
    iget-object v0, p0, Lcom/asus/dm/DMService$SNRegister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$1000(Lcom/asus/dm/DMService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 759
    invoke-static {v1}, Lcom/asus/dm/DMService;->access$1102(I)I

    .line 760
    invoke-static {v1}, Lcom/asus/dm/DMService;->access$602(I)I

    .line 763
    :cond_0
    return-void
.end method
