.class Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PCSyncLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "USBStateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;


# direct methods
.method constructor <init>(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;->this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 402
    const-string v1, "PCSyncLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB state change : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 406
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "enabled"

    const-string v2, "mtp"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 408
    :cond_0
    const-string v1, "PCSyncLauncher"

    const-string v2, "mtp function not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 411
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_2
    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    const-string v1, "PCSyncLauncher"

    const-string v2, "usb disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;->this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-static {v1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->access$200(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;)Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;->this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-static {v1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->access$200(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;)Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->access$300(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;)V

    goto :goto_0
.end method
