.class Lcom/android/server/asus/DockManagerService$4;
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
    .line 233
    iput-object p1, p0, Lcom/android/server/asus/DockManagerService$4;->this$0:Lcom/android/server/asus/DockManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 236
    const-string v1, "DockManagerService"

    const-string v2, "mDockReceiver onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 240
    .local v0, state:I
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService$4;->this$0:Lcom/android/server/asus/DockManagerService;

    #calls: Lcom/android/server/asus/DockManagerService;->updateDockState(I)V
    invoke-static {v1, v0}, Lcom/android/server/asus/DockManagerService;->access$400(Lcom/android/server/asus/DockManagerService;I)V

    .line 241
    return-void
.end method
