.class Lcom/android/server/PowerManagerService$1;
.super Landroid/os/HandlerThread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/server/PowerManagerService$1;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 4

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/server/PowerManagerService$1;->this$0:Lcom/android/server/PowerManagerService;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #setter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$2002(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 630
    iget-object v0, p0, Lcom/android/server/PowerManagerService$1;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)Landroid/os/HandlerThread;

    move-result-object v0

    monitor-enter v0

    .line 631
    :try_start_11
    iget-object v1, p0, Lcom/android/server/PowerManagerService$1;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mInitComplete:Z
    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->access$2202(Lcom/android/server/PowerManagerService;Z)Z

    .line 632
    iget-object v1, p0, Lcom/android/server/PowerManagerService$1;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 633
    monitor-exit v0

    .line 634
    return-void

    .line 633
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_22

    throw v1
.end method
