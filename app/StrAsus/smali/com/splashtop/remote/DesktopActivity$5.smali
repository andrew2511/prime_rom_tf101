.class Lcom/splashtop/remote/DesktopActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "DesktopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/DesktopActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/DesktopActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/DesktopActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/splashtop/remote/DesktopActivity$5;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 342
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, action:Ljava/lang/String;
    const-string v1, "LICENSE_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/splashtop/remote/DesktopActivity$5;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-virtual {v1}, Lcom/splashtop/remote/DesktopActivity;->finish()V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const-string v1, "SHOW_HOTKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/splashtop/remote/DesktopActivity$5;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopActivity;->access$200(Lcom/splashtop/remote/DesktopActivity;)Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->show()V

    goto :goto_0

    .line 347
    :cond_2
    const-string v1, "HIDE_HOTKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/splashtop/remote/DesktopActivity$5;->this$0:Lcom/splashtop/remote/DesktopActivity;

    invoke-static {v1}, Lcom/splashtop/remote/DesktopActivity;->access$200(Lcom/splashtop/remote/DesktopActivity;)Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->hide()V

    goto :goto_0
.end method
