.class final Lcom/nvidia/tegrazone/services/ServiceManager$1;
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
    iput-object p1, p0, Lcom/nvidia/tegrazone/services/ServiceManager$1;->this$0:Lcom/nvidia/tegrazone/services/ServiceManager;

    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager$1;->this$0:Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->setNewsArray()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 69
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET_ALL_NEWS error code:- "

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

    .line 74
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager$1;->this$0:Lcom/nvidia/tegrazone/services/ServiceManager;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_0
.end method
