.class Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;
.super Landroid/os/AsyncTask;
.source "DesktopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/DesktopActivity;
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

.field final synthetic this$0:Lcom/splashtop/remote/DesktopActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/DesktopActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Handler;)Ljava/lang/Integer;
    .locals 1
    .parameter "params"

    .prologue
    .line 269
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;->mHandler:Landroid/os/Handler;

    .line 270
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
    .line 263
    check-cast p1, [Landroid/os/Handler;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;->doInBackground([Landroid/os/Handler;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, -0x2

    .line 275
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 281
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;->this$0:Lcom/splashtop/remote/DesktopActivity;

    iget-boolean v0, v0, Lcom/splashtop/remote/DesktopActivity;->isBreak:Z

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;->this$0:Lcom/splashtop/remote/DesktopActivity;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/DesktopActivity;->setResult(I)V

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-virtual {v0}, Lcom/splashtop/remote/DesktopActivity;->finish()V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;->this$0:Lcom/splashtop/remote/DesktopActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/DesktopActivity;->setResult(I)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 263
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/splashtop/remote/DesktopActivity$WaitConnectThread;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
