.class Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;
.super Landroid/os/AsyncTask;
.source "DesktopGLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/DesktopGLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitConnectThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Handler;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/splashtop/remote/DesktopGLActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/DesktopGLActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Handler;)Ljava/lang/Integer;
    .locals 1
    .parameter "params"

    .prologue
    .line 214
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;->mHandler:Landroid/os/Handler;

    .line 215
    invoke-static {}, Lcom/splashtop/remote/JNILib;->nativeWaitClient()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    check-cast p1, [Landroid/os/Handler;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;->doInBackground([Landroid/os/Handler;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, -0x2

    .line 220
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 225
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    iget-boolean v0, v0, Lcom/splashtop/remote/DesktopGLActivity;->isBreak:Z

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/DesktopGLActivity;->setResult(I)V

    .line 232
    :goto_1
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-virtual {v0}, Lcom/splashtop/remote/DesktopGLActivity;->finish()V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/DesktopGLActivity;->setResult(I)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 208
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/splashtop/remote/DesktopGLActivity$WaitConnectThread;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
