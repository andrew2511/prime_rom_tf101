.class abstract Lcom/infraware/filemanager/FmFileThread;
.super Ljava/lang/Thread;
.source "FmFileThread.java"


# instance fields
.field protected m_bCancel:Z

.field protected m_bError:Z

.field protected m_oHandler:Landroid/os/Handler;

.field protected m_oMsg:Landroid/os/Message;

.field protected m_oRunnableFail:Ljava/lang/Runnable;

.field protected m_oRunnableSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/infraware/filemanager/FmFileThread;->m_oHandler:Landroid/os/Handler;

    .line 12
    iput-object v0, p0, Lcom/infraware/filemanager/FmFileThread;->m_oRunnableSuccess:Ljava/lang/Runnable;

    .line 13
    iput-object v0, p0, Lcom/infraware/filemanager/FmFileThread;->m_oRunnableFail:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileThread;->m_oMsg:Landroid/os/Message;

    .line 15
    iput-boolean v1, p0, Lcom/infraware/filemanager/FmFileThread;->m_bError:Z

    .line 16
    iput-boolean v1, p0, Lcom/infraware/filemanager/FmFileThread;->m_bCancel:Z

    .line 19
    return-void
.end method


# virtual methods
.method public abstract getFileMgrOperation()I
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/FmFileThread;->m_bCancel:Z

    .line 38
    return-void
.end method

.method public onEnd()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileThread;->m_oHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/filemanager/FmFileThread;->m_oRunnableSuccess:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/filemanager/FmFileThread;->m_oRunnableFail:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-boolean v0, p0, Lcom/infraware/filemanager/FmFileThread;->m_bCancel:Z

    if-nez v0, :cond_0

    .line 48
    iget-boolean v0, p0, Lcom/infraware/filemanager/FmFileThread;->m_bError:Z

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileThread;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/FmFileThread;->m_oRunnableSuccess:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileThread;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/FmFileThread;->m_oRunnableFail:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onResult()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/FmFileThread;->m_bError:Z

    .line 33
    return-void
.end method

.method public setRunnable(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "a_oHandler"
    .parameter "a_oRunnableSuccess"
    .parameter "a_oRunnableFail"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileThread;->m_oHandler:Landroid/os/Handler;

    .line 26
    iput-object p2, p0, Lcom/infraware/filemanager/FmFileThread;->m_oRunnableSuccess:Ljava/lang/Runnable;

    .line 27
    iput-object p3, p0, Lcom/infraware/filemanager/FmFileThread;->m_oRunnableFail:Ljava/lang/Runnable;

    .line 28
    return-void
.end method
