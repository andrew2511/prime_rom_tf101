.class Lcom/splashtop/remote/DesktopGLActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "DesktopGLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/DesktopGLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/DesktopGLActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/DesktopGLActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/splashtop/remote/DesktopGLActivity$5;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 323
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, action:Ljava/lang/String;
    const-string v1, "LICENSE_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/splashtop/remote/DesktopGLActivity$5;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-virtual {v1}, Lcom/splashtop/remote/DesktopGLActivity;->finish()V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const-string v1, "SHOW_HOTKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    iget-object v1, p0, Lcom/splashtop/remote/DesktopGLActivity$5;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopGLActivity;->access$200(Lcom/splashtop/remote/DesktopGLActivity;)Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->show()V

    goto :goto_0

    .line 328
    :cond_2
    const-string v1, "HIDE_HOTKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/splashtop/remote/DesktopGLActivity$5;->this$0:Lcom/splashtop/remote/DesktopGLActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopGLActivity;->access$200(Lcom/splashtop/remote/DesktopGLActivity;)Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->hide()V

    goto :goto_0
.end method
