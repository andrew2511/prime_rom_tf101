.class Lcom/asus/cm/CMService$SNRegister;
.super Lcom/asus/cm/IStatusNotifyRegister$Stub;
.source "CMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SNRegister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/CMService;


# direct methods
.method constructor <init>(Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/asus/cm/CMService$SNRegister;->this$0:Lcom/asus/cm/CMService;

    invoke-direct {p0}, Lcom/asus/cm/IStatusNotifyRegister$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDMSession()V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/asus/cm/CMService$SNRegister;->this$0:Lcom/asus/cm/CMService;

    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DOWNLOAD_CANCELED:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMService;->doCancelDMSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V

    .line 822
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
    .line 825
    const-string v1, "destoryEngine() in"

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    iget-object v1, p0, Lcom/asus/cm/CMService$SNRegister;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$100(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 828
    :goto_0
    iget-object v1, p0, Lcom/asus/cm/CMService$SNRegister;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$100(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmEngine;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 830
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 836
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/asus/cm/CMService$SNRegister;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$700(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMService$RetryBroadcastReceiver;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->access$800(Lcom/asus/cm/CMService$RetryBroadcastReceiver;)V

    .line 837
    iget-object v1, p0, Lcom/asus/cm/CMService$SNRegister;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$1400(Lcom/asus/cm/CMService;)V

    .line 839
    iget-object v1, p0, Lcom/asus/cm/CMService$SNRegister;->this$0:Lcom/asus/cm/CMService;

    invoke-virtual {v1}, Lcom/asus/cm/CMService;->stopSelf()V

    .line 841
    :cond_1
    const-string v1, "destoryEngine() out"

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    return-void
.end method

.method public registerStateCallback(Lcom/asus/cm/IDMServiceStateCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 797
    if-eqz p1, :cond_0

    .line 798
    const-string v0, "CMService"

    const-string v1, "registerStateCallback(IDMServiceStateCallback cb)"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/asus/cm/CMService$SNRegister;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$1100(Lcom/asus/cm/CMService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v0, p0, Lcom/asus/cm/CMService$SNRegister;->this$0:Lcom/asus/cm/CMService;

    invoke-static {}, Lcom/asus/cm/CMService;->access$1200()I

    move-result v1

    invoke-static {}, Lcom/asus/cm/CMService;->access$600()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/asus/cm/CMService;->access$1300(Lcom/asus/cm/CMService;II)V

    .line 809
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
    .line 845
    iget-object v0, p0, Lcom/asus/cm/CMService$SNRegister;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$1500(Lcom/asus/cm/CMService;)V

    .line 846
    return-void
.end method

.method public unregisterStateCallback(Lcom/asus/cm/IDMServiceStateCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, -0x1

    .line 812
    if-eqz p1, :cond_0

    .line 813
    iget-object v0, p0, Lcom/asus/cm/CMService$SNRegister;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$1100(Lcom/asus/cm/CMService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 814
    iget-object v0, p0, Lcom/asus/cm/CMService$SNRegister;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$1100(Lcom/asus/cm/CMService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 815
    invoke-static {v1}, Lcom/asus/cm/CMService;->access$1202(I)I

    .line 816
    invoke-static {v1}, Lcom/asus/cm/CMService;->access$602(I)I

    .line 819
    :cond_0
    return-void
.end method
