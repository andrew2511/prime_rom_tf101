.class final Lcom/android/server/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsRom:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V
    .registers 5
    .parameter
    .parameter "path"
    .parameter "mask"
    .parameter "isrom"

    .prologue
    .line 4556
    iput-object p1, p0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    .line 4557
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 4558
    iput-object p2, p0, Lcom/android/server/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 4559
    iput-boolean p4, p0, Lcom/android/server/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 4560
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 23
    .parameter "event"
    .parameter "path"

    .prologue
    .line 4563
    const/16 v18, 0x0

    .line 4564
    .local v18, removedPackage:Ljava/lang/String;
    const/16 v19, -0x1

    .line 4565
    .local v19, removedUid:I
    const/4 v13, 0x0

    .line 4566
    .local v13, addedPackage:Ljava/lang/String;
    const/4 v14, -0x1

    .line 4568
    .local v14, addedUid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v5, v0

    iget-object v15, v5, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v15

    .line 4569
    const/16 v17, 0x0

    .line 4570
    .local v17, fullPathStr:Ljava/lang/String;
    const/4 v6, 0x0

    .line 4571
    .local v6, fullPath:Ljava/io/File;
    if-eqz p2, :cond_28

    .line 4572
    :try_start_13
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v16

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_38

    .line 4573
    .end local v6           #fullPath:Ljava/io/File;
    .local v16, fullPath:Ljava/io/File;
    :try_start_22
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_120

    move-result-object v17

    move-object/from16 v6, v16

    .line 4580
    .end local v16           #fullPath:Ljava/io/File;
    .restart local v6       #fullPath:Ljava/io/File;
    :cond_28
    :try_start_28
    #calls: Lcom/android/server/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/PackageManagerService;->access$1800(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 4583
    monitor-exit v15

    .line 4641
    .end local v6           #fullPath:Ljava/io/File;
    :cond_2f
    :goto_2f
    return-void

    .line 4588
    .restart local v6       #fullPath:Ljava/io/File;
    :cond_30
    #calls: Lcom/android/server/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/PackageManagerService;->access$1900(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 4589
    monitor-exit v15

    goto :goto_2f

    .line 4626
    :catchall_38
    move-exception v5

    :goto_39
    monitor-exit v15
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_38

    throw v5

    .line 4591
    :cond_3b
    const/4 v9, 0x0

    .line 4592
    .local v9, p:Landroid/content/pm/PackageParser$Package;
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_38

    .line 4593
    :try_start_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object v9, v0

    .line 4594
    monitor-exit v5
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_112

    .line 4595
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x248

    move v5, v0

    if-eqz v5, :cond_77

    .line 4596
    if-eqz v9, :cond_77

    .line 4597
    :try_start_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v5, v0

    const/4 v7, 0x1

    invoke-virtual {v5, v9, v7}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 4598
    iget-object v5, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 4599
    iget-object v5, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v0, v5

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    .line 4603
    :cond_77
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x88

    move v5, v0

    if-eqz v5, :cond_c4

    .line 4604
    if-nez v9, :cond_c4

    .line 4605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->mIsRom:Z

    move v7, v0

    if-eqz v7, :cond_115

    const/16 v7, 0x41

    :goto_8e
    or-int/lit8 v7, v7, 0x2

    or-int/lit8 v7, v7, 0x4

    const/16 v8, 0x61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .end local v9           #p:Landroid/content/pm/PackageParser$Package;
    #calls: Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->access$2000(Lcom/android/server/PackageManagerService;Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 4612
    .restart local v9       #p:Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_c4

    .line 4613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_a6
    .catchall {:try_start_60 .. :try_end_a6} :catchall_38

    .line 4614
    :try_start_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v7, v0

    iget-object v8, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v10, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_118

    const/4 v10, 0x1

    :goto_b6
    const/4 v11, 0x0

    const/4 v12, 0x0

    #calls: Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V
    invoke-static/range {v7 .. v12}, Lcom/android/server/PackageManagerService;->access$2100(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 4616
    monitor-exit v5
    :try_end_bc
    .catchall {:try_start_a6 .. :try_end_bc} :catchall_11a

    .line 4617
    :try_start_bc
    iget-object v5, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4618
    iget-object v5, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4623
    :cond_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_cc
    .catchall {:try_start_bc .. :try_end_cc} :catchall_38

    .line 4624
    :try_start_cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v7}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 4625
    monitor-exit v5
    :try_end_d7
    .catchall {:try_start_cc .. :try_end_d7} :catchall_11d

    .line 4626
    :try_start_d7
    monitor-exit v15
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_38

    .line 4628
    if-eqz v18, :cond_fc

    .line 4629
    new-instance v15, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v15, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 4630
    .local v15, extras:Landroid/os/Bundle;
    const-string v5, "android.intent.extra.UID"

    move-object v0, v15

    move-object v1, v5

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4631
    const-string v5, "android.intent.extra.DATA_REMOVED"

    const/4 v6, 0x0

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4632
    .end local v6           #fullPath:Ljava/io/File;
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v18

    move-object v2, v15

    move-object v3, v6

    move-object v4, v7

    #calls: Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 4635
    .end local v15           #extras:Landroid/os/Bundle;
    :cond_fc
    if-eqz v13, :cond_2f

    .line 4636
    new-instance v15, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v15, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 4637
    .restart local v15       #extras:Landroid/os/Bundle;
    const-string v5, "android.intent.extra.UID"

    invoke-virtual {v15, v5, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4638
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    const/4 v6, 0x0

    const/4 v7, 0x0

    #calls: Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V
    invoke-static {v5, v13, v15, v6, v7}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    goto/16 :goto_2f

    .line 4594
    .end local v15           #extras:Landroid/os/Bundle;
    .restart local v6       #fullPath:Ljava/io/File;
    :catchall_112
    move-exception v7

    :try_start_113
    monitor-exit v5
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_112

    :try_start_114
    throw v7
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_38

    .line 4605
    :cond_115
    const/4 v7, 0x0

    goto/16 :goto_8e

    .line 4614
    :cond_118
    const/4 v10, 0x0

    goto :goto_b6

    .line 4616
    :catchall_11a
    move-exception v7

    :try_start_11b
    monitor-exit v5
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    :try_start_11c
    throw v7
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_38

    .line 4625
    :catchall_11d
    move-exception v7

    :try_start_11e
    monitor-exit v5
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    :try_start_11f
    throw v7
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_38

    .line 4626
    .end local v6           #fullPath:Ljava/io/File;
    .end local v9           #p:Landroid/content/pm/PackageParser$Package;
    .restart local v16       #fullPath:Ljava/io/File;
    :catchall_120
    move-exception v5

    move-object/from16 v6, v16

    .end local v16           #fullPath:Ljava/io/File;
    .restart local v6       #fullPath:Ljava/io/File;
    goto/16 :goto_39
.end method
