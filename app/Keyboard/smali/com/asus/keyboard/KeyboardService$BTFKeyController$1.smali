.class Lcom/asus/keyboard/KeyboardService$BTFKeyController$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService$BTFKeyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/keyboard/KeyboardService$BTFKeyController;


# direct methods
.method constructor <init>(Lcom/asus/keyboard/KeyboardService$BTFKeyController;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController$1;->this$1:Lcom/asus/keyboard/KeyboardService$BTFKeyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 355
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/asus/keyboard/KeyboardService$BTFKeyController$1;->this$1:Lcom/asus/keyboard/KeyboardService$BTFKeyController;

    invoke-static {v1}, Lcom/asus/keyboard/KeyboardService$BTFKeyController;->access$1400(Lcom/asus/keyboard/KeyboardService$BTFKeyController;)Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 359
    :cond_0
    return-void
.end method
