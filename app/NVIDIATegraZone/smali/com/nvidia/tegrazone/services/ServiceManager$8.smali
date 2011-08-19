.class final Lcom/nvidia/tegrazone/services/ServiceManager$8;
.super Landroid/os/Handler;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/services/ServiceManager;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/services/ServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/services/ServiceManager$8;->this$0:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 194
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 197
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager$8;->this$0:Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->setVersionResult()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 202
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 206
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHECK_VERSION error code:- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->getTypeFromCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager$8;->this$0:Lcom/nvidia/tegrazone/services/ServiceManager;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_0
.end method
