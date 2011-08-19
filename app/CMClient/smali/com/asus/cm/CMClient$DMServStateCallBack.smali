.class Lcom/asus/cm/CMClient$DMServStateCallBack;
.super Lcom/asus/cm/IDMServiceStateCallback$Stub;
.source "CMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DMServStateCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/CMClient;


# direct methods
.method constructor <init>(Lcom/asus/cm/CMClient;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/asus/cm/CMClient$DMServStateCallBack;->this$0:Lcom/asus/cm/CMClient;

    invoke-direct {p0}, Lcom/asus/cm/IDMServiceStateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyStatus(Ljava/lang/String;)V
    .locals 2
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 437
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 438
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 439
    iget-object v1, p0, Lcom/asus/cm/CMClient$DMServStateCallBack;->this$0:Lcom/asus/cm/CMClient;

    iget-object v1, v1, Lcom/asus/cm/CMClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 440
    return-void
.end method

.method public stateChange(II)V
    .locals 2
    .parameter "type"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 429
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 430
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 431
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 432
    iget-object v1, p0, Lcom/asus/cm/CMClient$DMServStateCallBack;->this$0:Lcom/asus/cm/CMClient;

    iget-object v1, v1, Lcom/asus/cm/CMClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 433
    return-void
.end method
