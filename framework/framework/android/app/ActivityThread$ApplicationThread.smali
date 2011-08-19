.class final Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x1

.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%17s %8s %8s %8s %8s"

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%17s %8d"

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%17s %8d %17s %8d"

.field private static final TWO_COUNT_COLUMNS_DB:Ljava/lang/String; = "%20s %8d %20s %8d"


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 412
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .parameter "pw"
    .parameter "format"
    .parameter "objs"

    .prologue
    .line 913
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 914
    return-void
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .registers 19
    .parameter "processName"
    .parameter "appInfo"
    .parameter
    .parameter "instrumentationName"
    .parameter "profileFile"
    .parameter "instrumentationArgs"
    .parameter "instrumentationWatcher"
    .parameter "debugMode"
    .parameter "isRestrictedBackupMode"
    .parameter "config"
    .parameter "compatInfo"
    .parameter
    .parameter "coreSettings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "IZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 584
    .local p3, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p12, services:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p12, :cond_5

    .line 586
    invoke-static/range {p12 .. p12}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 589
    :cond_5
    move-object v0, p0

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 591
    new-instance v2, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v2}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 592
    .local v2, data:Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v2, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 593
    iput-object p2, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 594
    iput-object p3, v2, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 595
    iput-object p4, v2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 596
    iput-object p5, v2, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    .line 597
    iput-object p6, v2, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 598
    iput-object p7, v2, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 599
    iput p8, v2, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 600
    iput-boolean p9, v2, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 601
    iput-object p10, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 602
    move-object/from16 v0, p11

    move-object v1, v2

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 603
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v4, 0x6e

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v3, v4, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 604
    return-void
.end method

.method public clearDnsCache()V
    .registers 1

    .prologue
    .line 634
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 635
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .registers 5
    .parameter "cmd"
    .parameter "packages"

    .prologue
    .line 706
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 707
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 63
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 729
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v52

    const-wide/16 v54, 0x400

    div-long v35, v52, v54

    .line 730
    .local v35, nativeMax:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v52

    const-wide/16 v54, 0x400

    div-long v31, v52, v54

    .line 731
    .local v31, nativeAllocated:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v52

    const-wide/16 v54, 0x400

    div-long v33, v52, v54

    .line 733
    .local v33, nativeFree:J
    new-instance v30, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v30 .. v30}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 734
    .local v30, memInfo:Landroid/os/Debug$MemoryInfo;
    invoke-static/range {v30 .. v30}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 736
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v38, v0

    .line 737
    .local v38, nativeShared:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v22, v0

    .line 738
    .local v22, dalvikShared:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v42, v0

    .line 740
    .local v42, otherShared:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v37, v0

    .line 741
    .local v37, nativePrivate:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v21, v0

    .line 742
    .local v21, dalvikPrivate:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v41, v0

    .line 744
    .local v41, otherPrivate:I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v44

    .line 746
    .local v44, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v52

    const-wide/16 v54, 0x400

    div-long v19, v52, v54

    .line 747
    .local v19, dalvikMax:J
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v52

    const-wide/16 v54, 0x400

    div-long v17, v52, v54

    .line 748
    .local v17, dalvikFree:J
    sub-long v15, v19, v17

    .line 749
    .local v15, dalvikAllocated:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v48

    .line 750
    .local v48, viewInstanceCount:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootInstanceCount()J

    move-result-wide v50

    .line 751
    .local v50, viewRootInstanceCount:J
    const-class v52, Landroid/app/ContextImpl;

    invoke-static/range {v52 .. v52}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v7

    .line 752
    .local v7, appContextInstanceCount:J
    const-class v52, Landroid/app/Activity;

    invoke-static/range {v52 .. v52}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v5

    .line 753
    .local v5, activityInstanceCount:J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v25

    .line 754
    .local v25, globalAssetCount:I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v26

    .line 755
    .local v26, globalAssetManagerCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v13

    .line 756
    .local v13, binderLocalObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v14

    .line 757
    .local v14, binderProxyObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v12

    .line 758
    .local v12, binderDeathObjectCount:I
    const-class v52, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-static/range {v52 .. v52}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v39

    .line 759
    .local v39, openSslSocketCount:J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getHeapAllocatedSize()J

    move-result-wide v52

    const-wide/16 v54, 0x400

    div-long v45, v52, v54

    .line 760
    .local v45, sqliteAllocated:J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v47

    .line 763
    .local v47, stats:Landroid/database/sqlite/SQLiteDebug$PagerStats;
    const/16 v24, 0x0

    .line 764
    .local v24, doCheckinFormat:Z
    if-eqz p3, :cond_b8

    .line 765
    move-object/from16 v10, p3

    .local v10, arr$:[Ljava/lang/String;
    move-object v0, v10

    array-length v0, v0

    move/from16 v29, v0

    .local v29, len$:I
    const/16 v28, 0x0

    .local v28, i$:I
    :goto_a0
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_b8

    aget-object v9, v10, v28

    .line 766
    .local v9, arg:Ljava/lang/String;
    const-string v52, "-c"

    move-object/from16 v0, v52

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_b5

    const/16 v24, 0x1

    .line 765
    :cond_b5
    add-int/lit8 v28, v28, 0x1

    goto :goto_a0

    .line 771
    .end local v9           #arg:Ljava/lang/String;
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v28           #i$:I
    .end local v29           #len$:I
    :cond_b8
    if-eqz v24, :cond_439

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v52, v0

    if-eqz v52, :cond_432

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v43, v52

    .line 778
    .local v43, processName:Ljava/lang/String;
    :goto_dc
    const/16 v52, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 779
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v52

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 780
    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 783
    move-object/from16 v0, p2

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 784
    move-object/from16 v0, p2

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 785
    const-string v52, "N/A,"

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 786
    add-long v52, v35, v19

    move-object/from16 v0, p2

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 789
    move-object/from16 v0, p2

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 790
    move-object/from16 v0, p2

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 791
    const-string v52, "N/A,"

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 792
    add-long v52, v31, v15

    move-object/from16 v0, p2

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 795
    move-object/from16 v0, p2

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 796
    move-object/from16 v0, p2

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 797
    const-string v52, "N/A,"

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    add-long v52, v33, v17

    move-object/from16 v0, p2

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 801
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v52, v0

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 802
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v52, v0

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 803
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v52, v0

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 804
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v52, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v53, v0

    add-int v52, v52, v53

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v53, v0

    add-int v52, v52, v53

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 807
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 808
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 809
    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 810
    add-int v52, v38, v22

    add-int v52, v52, v42

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 813
    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 814
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 815
    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 816
    add-int v52, v37, v21

    add-int v52, v52, v41

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 819
    move-object/from16 v0, p2

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 820
    move-object/from16 v0, p2

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 821
    move-object/from16 v0, p2

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 822
    move-object/from16 v0, p2

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 824
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 825
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 826
    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 827
    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 829
    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 830
    move-object/from16 v0, p2

    move-wide/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 833
    move-object/from16 v0, p2

    move-wide/from16 v1, v45

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 834
    move-object/from16 v0, v47

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v52, v0

    move/from16 v0, v52

    div-int/lit16 v0, v0, 0x400

    move/from16 v52, v0

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 835
    move-object/from16 v0, v47

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflo:I

    move/from16 v52, v0

    move/from16 v0, v52

    div-int/lit16 v0, v0, 0x400

    move/from16 v52, v0

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 836
    move-object/from16 v0, v47

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v52, v0

    move/from16 v0, v52

    div-int/lit16 v0, v0, 0x400

    move/from16 v52, v0

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 837
    const/16 v27, 0x0

    .local v27, i:I
    :goto_3b3
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v52

    move/from16 v0, v27

    move/from16 v1, v52

    if-ge v0, v1, :cond_8ba

    .line 838
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 839
    .local v23, dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string v52, "  %8s %8s %14s %14s  %s"

    const/16 v53, 0x5

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v55, v0

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v55, v0

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v55, v0

    aput-object v55, v53, v54

    const/16 v54, 0x4

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v55, v0

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    const/16 v52, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 837
    add-int/lit8 v27, v27, 0x1

    goto :goto_3b3

    .line 774
    .end local v23           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v27           #i:I
    .end local v43           #processName:Ljava/lang/String;
    :cond_432
    const-string/jumbo v52, "unknown"

    move-object/from16 v43, v52

    goto/16 :goto_dc

    .line 848
    :cond_439
    const-string v52, "%17s %8s %8s %8s %8s"

    const/16 v53, 0x5

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-string v55, "native"

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "dalvik"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    const-string v55, "other"

    aput-object v55, v53, v54

    const/16 v54, 0x4

    const-string/jumbo v55, "total"

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    const-string v52, "%17s %8s %8s %8s %8s"

    const/16 v53, 0x5

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string/jumbo v55, "size:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    const-string v55, "N/A"

    aput-object v55, v53, v54

    const/16 v54, 0x4

    add-long v55, v35, v19

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    const-string v52, "%17s %8s %8s %8s %8s"

    const/16 v53, 0x5

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "allocated:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    const-string v55, "N/A"

    aput-object v55, v53, v54

    const/16 v54, 0x4

    add-long v55, v31, v15

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    const-string v52, "%17s %8s %8s %8s %8s"

    const/16 v53, 0x5

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "free:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    const-string v55, "N/A"

    aput-object v55, v53, v54

    const/16 v54, 0x4

    add-long v55, v33, v17

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    const-string v52, "%17s %8s %8s %8s %8s"

    const/16 v53, 0x5

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "(Pss):"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v55, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v56, v0

    add-int v55, v55, v56

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v56, v0

    add-int v55, v55, v56

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 858
    const-string v52, "%17s %8s %8s %8s %8s"

    const/16 v53, 0x5

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "(shared dirty):"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    add-int v55, v38, v22

    add-int v55, v55, v42

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    const-string v52, "%17s %8s %8s %8s %8s"

    const/16 v53, 0x5

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "(priv dirty):"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    add-int v55, v37, v21

    add-int v55, v55, v41

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    const-string v52, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    const-string v52, " Objects"

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    const-string v52, "%17s %8d %17s %8d"

    const/16 v53, 0x4

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Views:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "ViewRoots:"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    const-string v52, "%17s %8d %17s %8d"

    const/16 v53, 0x4

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "AppContexts:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "Activities:"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    const-string v52, "%17s %8d %17s %8d"

    const/16 v53, 0x4

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Assets:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "AssetManagers:"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    const-string v52, "%17s %8d %17s %8d"

    const/16 v53, 0x4

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Local Binders:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "Proxy Binders:"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    const-string v52, "%17s %8d"

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Death Recipients:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    const-string v52, "%17s %8d"

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "OpenSSL Sockets:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    const-string v52, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    const-string v52, " SQL"

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    const-string v52, "%20s %8d %20s %8d"

    const/16 v53, 0x4

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "heap:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "MEMORY_USED:"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    move-object/from16 v0, v47

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v55, v0

    move/from16 v0, v55

    div-int/lit16 v0, v0, 0x400

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 885
    const-string v52, "%20s %8d %20s %8d"

    const/16 v53, 0x4

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "PAGECACHE_OVERFLOW:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    move-object/from16 v0, v47

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflo:I

    move/from16 v55, v0

    move/from16 v0, v55

    div-int/lit16 v0, v0, 0x400

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "MALLOC_SIZE:"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    move-object/from16 v0, v47

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v55, v0

    move/from16 v0, v55

    div-int/lit16 v0, v0, 0x400

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    const-string v52, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 889
    .local v4, N:I
    if-lez v4, :cond_89c

    .line 890
    const-string v52, " DATABASES"

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    const-string v52, "  %8s %8s %14s %14s  %s"

    const/16 v53, 0x5

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "pgsz"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-string v55, "dbsz"

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "Lookaside(b)"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    const-string v55, "cache"

    aput-object v55, v53, v54

    const/16 v54, 0x4

    const-string v55, "Dbname"

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_807
    move/from16 v0, v27

    move v1, v4

    if-ge v0, v1, :cond_89c

    .line 894
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 895
    .restart local v23       #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string v52, "  %8s %8s %14s %14s  %s"

    const/16 v53, 0x5

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v55, v0

    const-wide/16 v57, 0x0

    cmp-long v55, v55, v57

    if-lez v55, :cond_893

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v55, v0

    invoke-static/range {v55 .. v56}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v55

    :goto_83e
    aput-object v55, v53, v54

    const/16 v54, 0x1

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v55, v0

    const-wide/16 v57, 0x0

    cmp-long v55, v55, v57

    if-lez v55, :cond_896

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v55, v0

    invoke-static/range {v55 .. v56}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v55

    :goto_858
    aput-object v55, v53, v54

    const/16 v54, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v55, v0

    if-lez v55, :cond_899

    move-object/from16 v0, v23

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v55

    :goto_86e
    aput-object v55, v53, v54

    const/16 v54, 0x3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v55, v0

    aput-object v55, v53, v54

    const/16 v54, 0x4

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v55, v0

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_807

    .line 895
    :cond_893
    const-string v55, " "

    goto :goto_83e

    :cond_896
    const-string v55, " "

    goto :goto_858

    :cond_899
    const-string v55, " "

    goto :goto_86e

    .line 904
    .end local v23           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v27           #i:I
    :cond_89c
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v11

    .line 905
    .local v11, assetAlloc:Ljava/lang/String;
    if-eqz v11, :cond_8ba

    .line 906
    const-string v52, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    const-string v52, " Asset Allocations"

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 910
    .end local v4           #N:I
    .end local v11           #assetAlloc:Ljava/lang/String;
    :cond_8ba
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .parameter "fd"
    .parameter "activitytoken"
    .parameter "prefix"
    .parameter "args"

    .prologue
    .line 715
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 717
    .local v0, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_5
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 718
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 719
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 720
    iput-object p4, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 721
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x88

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_19

    .line 725
    :goto_18
    return-void

    .line 722
    :catch_19
    move-exception v2

    move-object v1, v2

    .line 723
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "dumpActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .parameter "managed"
    .parameter "path"
    .parameter "fd"

    .prologue
    .line 683
    new-instance v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 684
    .local v0, dhd:Landroid/app/ActivityThread$DumpHeapData;
    iput-object p2, v0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 685
    iput-object p3, v0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 686
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x87

    if-eqz p1, :cond_14

    const/4 v3, 0x1

    :goto_10
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, v0, v3}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 687
    return-void

    .line 686
    :cond_14
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 8
    .parameter "fd"
    .parameter "servicetoken"
    .parameter "args"

    .prologue
    .line 647
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 649
    .local v0, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_5
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 650
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 651
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 652
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x7b

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_17

    .line 656
    :goto_16
    return-void

    .line 653
    :catch_17
    move-exception v2

    move-object v1, v2

    .line 654
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "dumpService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
    .registers 2
    .parameter "outInfo"

    .prologue
    .line 702
    invoke-static {p1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 703
    return-void
.end method

.method public processInBackground()V
    .registers 4

    .prologue
    const/16 v2, 0x78

    .line 642
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 643
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 644
    return-void
.end method

.method public profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .parameter "start"
    .parameter "path"
    .parameter "fd"

    .prologue
    .line 676
    new-instance v0, Landroid/app/ActivityThread$ProfilerControlData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ProfilerControlData;-><init>()V

    .line 677
    .local v0, pcd:Landroid/app/ActivityThread$ProfilerControlData;
    iput-object p2, v0, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    .line 678
    iput-object p3, v0, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 679
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7f

    if-eqz p1, :cond_14

    const/4 v3, 0x1

    :goto_10
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, v0, v3}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 680
    return-void

    .line 679
    :cond_14
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public requestThumbnail(Landroid/os/IBinder;)V
    .registers 4
    .parameter "token"

    .prologue
    .line 615
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x75

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 616
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .registers 4
    .parameter "token"

    .prologue
    .line 672
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7d

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 673
    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .registers 7
    .parameter "token"
    .parameter "intent"
    .parameter "rebind"

    .prologue
    .line 545
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 546
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 547
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 548
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 550
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 551
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 619
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 620
    :try_start_5
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 622
    :cond_15
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 624
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_22

    .line 625
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x76

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 626
    return-void

    .line 624
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 710
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 711
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .registers 7
    .parameter "app"
    .parameter "compatInfo"
    .parameter "backupMode"

    .prologue
    .line 516
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 517
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 518
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 519
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 521
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 522
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;)V
    .registers 7
    .parameter "token"
    .parameter "info"
    .parameter "compatInfo"

    .prologue
    .line 535
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 536
    .local v0, s:Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 537
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 538
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 540
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 541
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .registers 7
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"

    .prologue
    .line 500
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6d

    if-eqz p2, :cond_b

    const/4 v2, 0x1

    :goto_7
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v0, v1, p1, v2, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 502
    return-void

    .line 500
    :cond_b
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .registers 6
    .parameter "app"
    .parameter "compatInfo"

    .prologue
    .line 526
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 527
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 528
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 530
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 531
    return-void
.end method

.method public final scheduleExit()V
    .registers 4

    .prologue
    .line 607
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 608
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZ)V
    .registers 14
    .parameter "intent"
    .parameter "token"
    .parameter "ident"
    .parameter "info"
    .parameter "compatInfo"
    .parameter "state"
    .parameter
    .parameter
    .parameter "notResumed"
    .parameter "isForward"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/CompatibilityInfo;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p7, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p8, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 467
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 468
    iput p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 469
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 470
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 471
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 472
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 474
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 475
    iput-object p8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 477
    iput-boolean p9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 478
    iput-boolean p10, v0, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 480
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x64

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 481
    return-void
.end method

.method public scheduleLowMemory()V
    .registers 4

    .prologue
    .line 668
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 669
    return-void
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .registers 6
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$NewIntentData;-><init>()V

    .line 492
    .local v0, data:Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    .line 493
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    .line 495
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x70

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 496
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZI)V
    .registers 8
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    .line 424
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_d

    const/16 v1, 0x66

    :goto_6
    if-eqz p3, :cond_10

    const/4 v2, 0x1

    :goto_9
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v0, v1, p1, v2, p4}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 429
    return-void

    .line 424
    :cond_d
    const/16 v1, 0x65

    goto :goto_6

    :cond_10
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .registers 16
    .parameter "intent"
    .parameter "info"
    .parameter "compatInfo"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 507
    new-instance v0, Landroid/app/ActivityThread$ReceiverData;

    const/4 v6, 0x0

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v1, p1

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;)V

    .line 509
    .local v0, r:Landroid/app/ActivityThread$ReceiverData;
    iput-object p2, v0, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 510
    iput-object p3, v0, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 511
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x71

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 512
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .registers 8
    .parameter "receiver"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "dataStr"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-interface/range {p1 .. p7}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 665
    return-void
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .registers 15
    .parameter "token"
    .parameter
    .parameter
    .parameter "configChanges"
    .parameter "notResumed"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 486
    .local p2, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V

    .line 488
    return-void
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;Z)V
    .registers 6
    .parameter "token"
    .parameter "isForward"

    .prologue
    .line 449
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6b

    if-eqz p2, :cond_b

    const/4 v2, 0x1

    :goto_7
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 450
    return-void

    .line 449
    :cond_b
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .registers 6
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ResultData;-><init>()V

    .line 454
    .local v0, res:Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    .line 455
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    .line 456
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6c

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 457
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;IILandroid/content/Intent;)V
    .registers 8
    .parameter "token"
    .parameter "startId"
    .parameter "flags"
    .parameter "args"

    .prologue
    .line 563
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 564
    .local v0, s:Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 565
    iput p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 566
    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 567
    iput-object p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 569
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x73

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 570
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .registers 6
    .parameter "token"
    .parameter "sleeping"

    .prologue
    .line 445
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x89

    if-eqz p2, :cond_b

    const/4 v2, 0x1

    :goto_7
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 446
    return-void

    .line 445
    :cond_b
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .registers 7
    .parameter "token"
    .parameter "showWindow"
    .parameter "configChanges"

    .prologue
    .line 433
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_b

    const/16 v1, 0x67

    :goto_6
    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v0, v1, p1, v2, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 436
    return-void

    .line 433
    :cond_b
    const/16 v1, 0x68

    goto :goto_6
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .registers 4
    .parameter "token"

    .prologue
    .line 573
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 574
    return-void
.end method

.method public final scheduleSuicide()V
    .registers 4

    .prologue
    .line 611
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 612
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .registers 6
    .parameter "token"
    .parameter "intent"

    .prologue
    .line 554
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 555
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 556
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 558
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 559
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .registers 5
    .parameter "token"
    .parameter "showWindow"

    .prologue
    .line 439
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_a

    const/16 v1, 0x69

    :goto_6
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 442
    return-void

    .line 439
    :cond_a
    const/16 v1, 0x6a

    goto :goto_6
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .registers 4
    .parameter "coreSettings"

    .prologue
    .line 917
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 918
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "host"
    .parameter "port"
    .parameter "exclList"

    .prologue
    .line 638
    invoke-static {p1, p2, p3}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public setSchedulingGroup(I)V
    .registers 6
    .parameter "group"

    .prologue
    .line 695
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 699
    :goto_7
    return-void

    .line 696
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 697
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .registers 6
    .parameter "pkg"
    .parameter "info"

    .prologue
    .line 921
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 922
    .local v0, ucd:Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 923
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 924
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 925
    return-void
.end method

.method public updateTimeZone()V
    .registers 2

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 630
    return-void
.end method
