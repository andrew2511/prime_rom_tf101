.class Lcom/android/server/wm/WindowManagerService$PolicyThread;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PolicyThread"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPM:Lcom/android/server/PowerManagerService;

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field mRunning:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .registers 6
    .parameter "policy"
    .parameter "service"
    .parameter "context"
    .parameter "pm"

    .prologue
    .line 687
    const-string v0, "WindowManagerPolicy"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mRunning:Z

    .line 688
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 689
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 690
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mContext:Landroid/content/Context;

    .line 691
    iput-object p4, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mPM:Lcom/android/server/PowerManagerService;

    .line 692
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 695
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 696
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/view/WindowManagerPolicyThread;->set(Ljava/lang/Thread;Landroid/os/Looper;)V

    .line 700
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 702
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 703
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mPM:Lcom/android/server/PowerManagerService;

    invoke-interface {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicy;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V

    .line 705
    monitor-enter p0

    .line 706
    const/4 v0, 0x1

    :try_start_1f
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mRunning:Z

    .line 707
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 708
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_36

    .line 711
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 712
    const-string v0, "WindowManager"

    const-string v1, "Enabled StrictMode for PolicyThread\'s Looper"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_32
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 716
    return-void

    .line 708
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method
