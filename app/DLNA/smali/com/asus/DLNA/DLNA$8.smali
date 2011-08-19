.class Lcom/asus/DLNA/DLNA$8;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/DLNA/DLNA;->fnCheckRestoreMusicPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/DLNA;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$8;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$8;->this$0:Lcom/asus/DLNA/DLNA;

    iget-object v1, v1, Lcom/asus/DLNA/DLNA;->runCheckRestore:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$8;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/DLNA/MediaControl;->getCurrentState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 492
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 493
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$8;->this$0:Lcom/asus/DLNA/DLNA;

    iget-object v1, v1, Lcom/asus/DLNA/DLNA;->mCTLPanelHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 496
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 490
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$8;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/DLNA/MediaControl;->getCurrentState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 492
    .restart local v0       #msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 493
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$8;->this$0:Lcom/asus/DLNA/DLNA;

    iget-object v2, v2, Lcom/asus/DLNA/DLNA;->mCTLPanelHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 494
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    throw v1
.end method
