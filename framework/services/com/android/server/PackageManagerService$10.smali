.class Lcom/android/server/PackageManagerService$10;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PackageManagerService;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageStatsObserver;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6752
    iput-object p1, p0, Lcom/android/server/PackageManagerService$10;->this$0:Lcom/android/server/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/PackageManagerService$10;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/PackageManagerService$10;->val$observer:Landroid/content/pm/IPackageStatsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 6754
    iget-object v3, p0, Lcom/android/server/PackageManagerService$10;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v3, p0}, Lcom/android/server/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6755
    new-instance v1, Landroid/content/pm/PackageStats;

    iget-object v3, p0, Lcom/android/server/PackageManagerService$10;->val$packageName:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 6758
    .local v1, stats:Landroid/content/pm/PackageStats;
    iget-object v3, p0, Lcom/android/server/PackageManagerService$10;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6759
    :try_start_13
    iget-object v4, p0, Lcom/android/server/PackageManagerService$10;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/PackageManagerService$10;->val$packageName:Ljava/lang/String;

    #calls: Lcom/android/server/PackageManagerService;->getPackageSizeInfoLI(Ljava/lang/String;Landroid/content/pm/PackageStats;)Z
    invoke-static {v4, v5, v1}, Lcom/android/server/PackageManagerService;->access$3500(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageStats;)Z

    move-result v2

    .line 6760
    .local v2, success:Z
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_38

    .line 6762
    iget-object v3, p0, Lcom/android/server/PackageManagerService$10;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6763
    .local v0, msg:Landroid/os/Message;
    new-instance v3, Lcom/android/server/PackageManagerService$MeasureParams;

    iget-object v4, p0, Lcom/android/server/PackageManagerService$10;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/PackageManagerService$10;->val$observer:Landroid/content/pm/IPackageStatsObserver;

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/android/server/PackageManagerService$MeasureParams;-><init>(Lcom/android/server/PackageManagerService;Landroid/content/pm/PackageStats;ZLandroid/content/pm/IPackageStatsObserver;)V

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6764
    iget-object v3, p0, Lcom/android/server/PackageManagerService$10;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6765
    return-void

    .line 6760
    .end local v0           #msg:Landroid/os/Message;
    .end local v2           #success:Z
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v4
.end method
