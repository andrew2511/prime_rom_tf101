.class Lcom/asus/keyboard/KeyboardService$WifiFKeyController$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService$WifiFKeyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/keyboard/KeyboardService$WifiFKeyController;


# direct methods
.method constructor <init>(Lcom/asus/keyboard/KeyboardService$WifiFKeyController;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController$1;->this$1:Lcom/asus/keyboard/KeyboardService$WifiFKeyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 322
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/asus/keyboard/KeyboardService$WifiFKeyController$1;->this$1:Lcom/asus/keyboard/KeyboardService$WifiFKeyController;

    invoke-static {v1}, Lcom/asus/keyboard/KeyboardService$WifiFKeyController;->access$1300(Lcom/asus/keyboard/KeyboardService$WifiFKeyController;)Lcom/asus/keyboard/WirelessStateTracker$StateTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/asus/keyboard/WirelessStateTracker$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 326
    :cond_0
    return-void
.end method
