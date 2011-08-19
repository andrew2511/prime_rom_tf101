.class Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 12
    .parameter "stats"
    .parameter "succeeded"

    .prologue
    .line 680
    const/4 v6, 0x0

    .line 681
    .local v6, sizeChanged:Z
    iget-object v7, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 683
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v9, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 684
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_2

    .line 685
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 686
    const/4 v8, 0x0

    :try_start_1
    iput-boolean v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 687
    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 688
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-static {v8, p1}, Lcom/android/settings/applications/ApplicationsState;->access$100(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v1

    .line 689
    .local v1, externalSize:J
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-static {v8, p1}, Lcom/android/settings/applications/ApplicationsState;->access$200(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v8

    add-long v4, v1, v8

    .line 690
    .local v4, newSize:J
    iget-wide v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v8, v8, v4

    if-nez v8, :cond_0

    iget-wide v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    iget-wide v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    iget-wide v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    iget-wide v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSize:J

    cmp-long v8, v8, v1

    if-eqz v8, :cond_1

    .line 695
    :cond_0
    iput-wide v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    .line 696
    iget-wide v8, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    .line 697
    iget-wide v8, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 698
    iget-wide v8, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 699
    iput-wide v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSize:J

    .line 700
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v9, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-static {v8, v9, v10}, Lcom/android/settings/applications/ApplicationsState;->access$300(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    .line 703
    const/4 v6, 0x1

    .line 705
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    if-eqz v6, :cond_2

    .line 707
    :try_start_2
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x4

    iget-object v10, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 709
    .local v3, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 712
    .end local v1           #externalSize:J
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #newSize:J
    :cond_2
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v9, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 714
    :cond_3
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 715
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 718
    :cond_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 719
    return-void

    .line 705
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8

    .line 718
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8
.end method
