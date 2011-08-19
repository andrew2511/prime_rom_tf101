.class public Lcom/asus/DMS/ServerCBThread;
.super Ljava/lang/Thread;
.source "ServerCBThread.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRun:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "aHandler"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9
    iput-boolean v0, p0, Lcom/asus/DMS/ServerCBThread;->mRun:Z

    .line 15
    iput-object p1, p0, Lcom/asus/DMS/ServerCBThread;->mHandler:Landroid/os/Handler;

    .line 16
    iput-boolean v0, p0, Lcom/asus/DMS/ServerCBThread;->mRun:Z

    .line 17
    return-void
.end method


# virtual methods
.method public Start()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/DMS/ServerCBThread;->mRun:Z

    .line 24
    invoke-virtual {p0}, Lcom/asus/DMS/ServerCBThread;->start()V

    .line 25
    return-void
.end method

.method public Stop()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/DMS/ServerCBThread;->mRun:Z

    .line 32
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 38
    :goto_0
    iget-boolean v0, p0, Lcom/asus/DMS/ServerCBThread;->mRun:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/asus/DMS/ServerCBThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method
