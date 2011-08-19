.class Lcom/asus/dm/DMClient$DMServStateCallBack;
.super Lcom/asus/dm/IDMServiceStateCallback$Stub;
.source "DMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DMServStateCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/DMClient;


# direct methods
.method constructor <init>(Lcom/asus/dm/DMClient;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/asus/dm/DMClient$DMServStateCallBack;->this$0:Lcom/asus/dm/DMClient;

    invoke-direct {p0}, Lcom/asus/dm/IDMServiceStateCallback$Stub;-><init>()V

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
    .line 403
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 404
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 405
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 406
    iget-object v1, p0, Lcom/asus/dm/DMClient$DMServStateCallBack;->this$0:Lcom/asus/dm/DMClient;

    iget-object v1, v1, Lcom/asus/dm/DMClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 407
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
    .line 395
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 396
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 397
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 398
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 399
    iget-object v1, p0, Lcom/asus/dm/DMClient$DMServStateCallBack;->this$0:Lcom/asus/dm/DMClient;

    iget-object v1, v1, Lcom/asus/dm/DMClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 400
    return-void
.end method
