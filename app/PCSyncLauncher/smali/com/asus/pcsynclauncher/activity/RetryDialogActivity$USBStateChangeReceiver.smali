.class Lcom/asus/pcsynclauncher/activity/RetryDialogActivity$USBStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RetryDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "USBStateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;


# direct methods
.method constructor <init>(Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity$USBStateChangeReceiver;->this$0:Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    const-string v1, "RetryDialogActivity"

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

    .line 75
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "enabled"

    const-string v2, "mtp"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    :cond_0
    const-string v1, "RetryDialogActivity"

    const-string v2, "mtp function not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 82
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_2
    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    const-string v1, "RetryDialogActivity"

    const-string v2, "usb disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity$USBStateChangeReceiver;->this$0:Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;

    invoke-virtual {v1}, Lcom/asus/pcsynclauncher/activity/RetryDialogActivity;->finish()V

    goto :goto_0
.end method
