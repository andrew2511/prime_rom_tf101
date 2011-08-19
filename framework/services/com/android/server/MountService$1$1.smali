.class Lcom/android/server/MountService$1$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .registers 2
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 474
    :try_start_0
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_74

    .line 475
    :try_start_9
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 476
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    .line 477
    .local v1, count:I
    new-array v10, v1, [Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 478
    .local v6, paths:[Ljava/lang/String;
    new-array v9, v1, [Ljava/lang/String;

    .line 479
    .local v9, states:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_28
    if-ge v3, v1, :cond_3f

    .line 480
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v10

    aget-object v12, v6, v3

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v9, v3

    .line 479
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 482
    :cond_3f
    monitor-exit v11
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_71

    .line 484
    const/4 v3, 0x0

    :goto_41
    if-ge v3, v1, :cond_91

    .line 485
    :try_start_43
    aget-object v5, v6, v3

    .line 486
    .local v5, path:Ljava/lang/String;
    aget-object v8, v9, v3

    .line 488
    .local v8, state:Ljava/lang/String;
    const-string v10, "unmounted"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 489
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v10, v5}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v7

    .line 490
    .local v7, rc:I
    if-eqz v7, :cond_6e

    .line 491
    const-string v10, "MountService"

    const-string v11, "Boot-time mount failed (%d)"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_6e} :catch_74

    .line 484
    .end local v7           #rc:I
    :cond_6e
    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 482
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #paths:[Ljava/lang/String;
    .end local v8           #state:Ljava/lang/String;
    .end local v9           #states:[Ljava/lang/String;
    :catchall_71
    move-exception v10

    :try_start_72
    monitor-exit v11
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    throw v10
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_74} :catch_74

    .line 520
    :catch_74
    move-exception v10

    move-object v2, v10

    .line 521
    .local v2, ex:Ljava/lang/Exception;
    const-string v10, "MountService"

    const-string v11, "Boot-time mount exception"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_7d
    :goto_7d
    return-void

    .line 495
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5       #path:Ljava/lang/String;
    .restart local v6       #paths:[Ljava/lang/String;
    .restart local v8       #state:Ljava/lang/String;
    .restart local v9       #states:[Ljava/lang/String;
    :cond_7e
    :try_start_7e
    const-string v10, "shared"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6e

    .line 500
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x7

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v10, v11, v5, v12, v13}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_6e

    .line 506
    .end local v5           #path:Ljava/lang/String;
    .end local v8           #state:Ljava/lang/String;
    :cond_91
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mEmulateExternalStorage:Z
    invoke-static {v10}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Z

    move-result v10

    if-eqz v10, :cond_ad

    .line 507
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 516
    :cond_ad
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v10}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Z

    move-result v10

    if-eqz v10, :cond_7d

    .line 517
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static {v10, v11}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Z)V

    .line 518
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v10, v11}, Lcom/android/server/MountService;->access$1002(Lcom/android/server/MountService;Z)Z
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_c7} :catch_74

    goto :goto_7d
.end method
