.class Lcom/android/server/asus/DockManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "DockManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asus/DockManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/asus/DockManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/asus/DockManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/server/asus/DockManagerService$3;->this$0:Lcom/android/server/asus/DockManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 225
    iget-object v2, p0, Lcom/android/server/asus/DockManagerService$3;->this$0:Lcom/android/server/asus/DockManagerService;

    const-string v3, "plugged"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_22

    move v3, v5

    :goto_d
    #setter for: Lcom/android/server/asus/DockManagerService;->mCharging:Z
    invoke-static {v2, v3}, Lcom/android/server/asus/DockManagerService;->access$202(Lcom/android/server/asus/DockManagerService;Z)Z

    .line 227
    const-string v2, "dock_level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 228
    .local v0, level:I
    const-string v2, "dock_status"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 229
    .local v1, status:I
    iget-object v2, p0, Lcom/android/server/asus/DockManagerService$3;->this$0:Lcom/android/server/asus/DockManagerService;

    #calls: Lcom/android/server/asus/DockManagerService;->updateDockBatteryState(II)V
    invoke-static {v2, v1, v0}, Lcom/android/server/asus/DockManagerService;->access$300(Lcom/android/server/asus/DockManagerService;II)V

    .line 230
    return-void

    .end local v0           #level:I
    .end local v1           #status:I
    :cond_22
    move v3, v4

    .line 225
    goto :goto_d
.end method
