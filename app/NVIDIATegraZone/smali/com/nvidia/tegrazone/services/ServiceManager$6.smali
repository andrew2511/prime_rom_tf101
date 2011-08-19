.class final Lcom/nvidia/tegrazone/services/ServiceManager$6;
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
    iput-object p1, p0, Lcom/nvidia/tegrazone/services/ServiceManager$6;->this$0:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 157
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager$6;->this$0:Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/services/ServiceManager;->setFeedbackResult()V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADD_FEEDBACK error code:- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->getTypeFromCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager$6;->this$0:Lcom/nvidia/tegrazone/services/ServiceManager;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_0
.end method
