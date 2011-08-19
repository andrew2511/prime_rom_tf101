.class Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;
.super Ljava/lang/Thread;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiWatchdogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiWatchdogService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiWatchdogService;)V
    .registers 3
    .parameter

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->this$0:Lcom/android/server/WifiWatchdogService;

    .line 1032
    const-string v0, "WifiWatchdogThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1033
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1038
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1040
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->this$0:Lcom/android/server/WifiWatchdogService;

    monitor-enter v0

    .line 1041
    :try_start_6
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->this$0:Lcom/android/server/WifiWatchdogService;

    new-instance v2, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    iget-object v3, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->this$0:Lcom/android/server/WifiWatchdogService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;-><init>(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$1;)V

    #setter for: Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    invoke-static {v1, v2}, Lcom/android/server/WifiWatchdogService;->access$302(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;)Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    .line 1042
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->this$0:Lcom/android/server/WifiWatchdogService;

    new-instance v2, Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;

    iget-object v3, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->this$0:Lcom/android/server/WifiWatchdogService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;-><init>(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$1;)V

    #setter for: Lcom/android/server/WifiWatchdogService;->mHandlerConn:Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;
    invoke-static {v1, v2}, Lcom/android/server/WifiWatchdogService;->access$502(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;)Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;

    .line 1044
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1045
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_2a

    .line 1048
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1049
    return-void

    .line 1045
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method
