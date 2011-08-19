.class Lcom/android/server/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "looper"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    .line 427
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 428
    return-void
.end method

.method private connectToService()Z
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 406
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/server/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 407
    .local v0, service:Landroid/content/Intent;
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 408
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    #getter for: Lcom/android/server/PackageManagerService;->mDefContainerConn:Lcom/android/server/PackageManagerService$DefaultContainerConnection;
    invoke-static {v2}, Lcom/android/server/PackageManagerService;->access$200(Lcom/android/server/PackageManagerService;)Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 410
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 411
    iput-boolean v3, p0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    move v1, v3

    .line 415
    :goto_28
    return v1

    .line 414
    :cond_29
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    move v1, v4

    .line 415
    goto :goto_28
.end method

.method private disconnectService()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 419
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$302(Lcom/android/server/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 420
    iput-boolean v2, p0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    .line 421
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 422
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    #getter for: Lcom/android/server/PackageManagerService;->mDefContainerConn:Lcom/android/server/PackageManagerService$DefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/PackageManagerService;->access$200(Lcom/android/server/PackageManagerService;)Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 423
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 424
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 34
    .parameter "msg"

    .prologue
    .line 439
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_536

    .line 682
    .end local p1
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 442
    .restart local p1
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 443
    .local v20, params:Lcom/android/server/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 448
    .local v16, idx:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    move/from16 v27, v0

    if-nez v27, :cond_45

    .line 451
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v27

    if-nez v27, :cond_35

    .line 452
    const-string v27, "PackageManager"

    const-string v28, "Failed to bind to media container service"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_9

    .line 458
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_9

    .line 461
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 464
    if-nez v16, :cond_9

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto :goto_9

    .line 472
    .end local v16           #idx:I
    .end local v20           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :pswitch_68
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    if-eqz v27, :cond_85

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    #setter for: Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$302(Lcom/android/server/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 475
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v27 .. v27}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v27

    if-nez v27, :cond_c8

    .line 477
    const-string v27, "PackageManager"

    const-string v28, "Cannot bind to media container service"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_a2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_bd

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 479
    .restart local v20       #params:Lcom/android/server/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 481
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_a2

    .line 483
    .end local v20           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_9

    .line 484
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_e9

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 486
    .restart local v20       #params:Lcom/android/server/PackageManagerService$HandlerParams;
    if-eqz v20, :cond_9

    .line 487
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/PackageManagerService$HandlerParams;->startCopy()V

    goto/16 :goto_9

    .line 491
    .end local v20           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :cond_e9
    const-string v27, "PackageManager"

    const-string v28, "Empty queue"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 497
    .restart local p1
    :pswitch_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_9

    .line 498
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    move/from16 v27, v0

    if-eqz v27, :cond_109

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService$PackageHandler;->disconnectService()V

    .line 501
    :cond_109
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v27

    if-nez v27, :cond_9

    .line 502
    const-string v27, "PackageManager"

    const-string v28, "Failed to bind to media container service"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_120
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_13b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 504
    .restart local v20       #params:Lcom/android/server/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 506
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_120

    .line 508
    .end local v20           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :cond_13b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_9

    .line 516
    .end local v15           #i$:Ljava/util/Iterator;
    :pswitch_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_15d

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 519
    :cond_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-nez v27, :cond_176

    .line 520
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_9

    .line 527
    :cond_176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_9

    .line 533
    :pswitch_189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 534
    .restart local v20       #params:Lcom/android/server/PackageManagerService$HandlerParams;
    goto/16 :goto_9

    .line 539
    .end local v20           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :pswitch_199
    const/16 v24, 0x0

    .line 541
    .local v24, size:I
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Landroid/os/Process;->setThreadPriority(I)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 543
    :try_start_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v28, v0

    if-nez v28, :cond_1c1

    .line 544
    monitor-exit v27

    goto/16 :goto_9

    .line 567
    .end local p1
    :catchall_1be
    move-exception v28

    monitor-exit v27
    :try_end_1c0
    .catchall {:try_start_1ad .. :try_end_1c0} :catchall_1be

    throw v28

    .line 546
    .restart local p1
    :cond_1c1
    :try_start_1c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->size()I

    move-result v24

    .line 547
    if-gtz v24, :cond_1d6

    .line 549
    monitor-exit v27

    goto/16 :goto_9

    .line 551
    :cond_1d6
    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 552
    .local v19, packages:[Ljava/lang/String;
    move/from16 v0, v24

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object v7, v0

    .line 553
    .local v7, components:[Ljava/util/ArrayList;
    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 555
    .local v25, uids:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 556
    .local v17, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v14, 0x0

    .line 557
    .end local p1
    .local v14, i:I
    :goto_1fc
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_247

    move v0, v14

    move/from16 v1, v24

    if-ge v0, v1, :cond_247

    .line 558
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 559
    .local v12, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, v19, v14

    .line 560
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    aput-object p1, v7, v14

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static/range {v28 .. v28}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v28

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 562
    .local v21, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v21, :cond_244

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v28, v0

    :goto_23f
    aput v28, v25, v14

    .line 563
    add-int/lit8 v14, v14, 0x1

    .line 564
    goto :goto_1fc

    .line 562
    :cond_244
    const/16 v28, -0x1

    goto :goto_23f

    .line 565
    .end local v12           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v21           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_247
    move/from16 v24, v14

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->clear()V

    .line 567
    monitor-exit v27
    :try_end_259
    .catchall {:try_start_1c1 .. :try_end_259} :catchall_1be

    .line 569
    const/4 v14, 0x0

    :goto_25a
    move v0, v14

    move/from16 v1, v24

    if-ge v0, v1, :cond_273

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    aget-object v28, v19, v14

    const/16 v29, 0x1

    aget-object v30, v7, v14

    aget v31, v25, v14

    #calls: Lcom/android/server/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    invoke-static/range {v27 .. v31}, Lcom/android/server/PackageManagerService;->access$500(Lcom/android/server/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 569
    add-int/lit8 v14, v14, 0x1

    goto :goto_25a

    .line 573
    :cond_273
    const/16 v27, 0xa

    invoke-static/range {v27 .. v27}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_9

    .line 577
    .end local v7           #components:[Ljava/util/ArrayList;
    .end local v14           #i:I
    .end local v17           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v19           #packages:[Ljava/lang/String;
    .end local v24           #size:I
    .end local v25           #uids:[I
    .restart local p1
    :pswitch_27a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 578
    .local v18, packageName:Ljava/lang/String;
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Landroid/os/Process;->setThreadPriority(I)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 580
    :try_start_294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2c9

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_2c9
    monitor-exit v27
    :try_end_2ca
    .catchall {:try_start_294 .. :try_end_2ca} :catchall_2da

    .line 584
    const/16 v27, 0xa

    invoke-static/range {v27 .. v27}, Landroid/os/Process;->setThreadPriority(I)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_9

    .line 583
    :catchall_2da
    move-exception v28

    :try_start_2db
    monitor-exit v27
    :try_end_2dc
    .catchall {:try_start_2db .. :try_end_2dc} :catchall_2da

    throw v28

    .line 589
    .end local v18           #packageName:Ljava/lang/String;
    :pswitch_2dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/PackageManagerService$PostInstallData;

    .line 590
    .local v8, data:Lcom/android/server/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/util/SparseArray;->delete(I)V

    .line 591
    const/4 v9, 0x0

    .line 593
    .local v9, deleteOld:Z
    if-eqz v8, :cond_439

    .line 594
    iget-object v5, v8, Lcom/android/server/PackageManagerService$PostInstallData;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 595
    .local v5, args:Lcom/android/server/PackageManagerService$InstallArgs;
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PostInstallData;->res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v23, v0

    .line 597
    .local v23, res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3df

    .line 598
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZ)V

    .line 599
    new-instance v13, Landroid/os/Bundle;

    const/16 v27, 0x1

    move-object v0, v13

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 600
    .local v13, extras:Landroid/os/Bundle;
    const-string v27, "android.intent.extra.UID"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->uid:I

    move/from16 v28, v0

    move-object v0, v13

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 601
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_430

    const/16 v27, 0x1

    move/from16 v26, v27

    .line 602
    .local v26, update:Z
    :goto_35b
    if-eqz v26, :cond_369

    .line 603
    const-string v27, "android.intent.extra.REPLACING"

    const/16 v28, 0x1

    move-object v0, v13

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 605
    :cond_369
    const-string v27, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v13

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    #calls: Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 608
    if-eqz v26, :cond_3d0

    .line 609
    const-string v27, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v13

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    #calls: Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 612
    const-string v27, "android.intent.action.MY_PACKAGE_REPLACED"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    #calls: Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V
    invoke-static/range {v27 .. v31}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 616
    :cond_3d0
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3df

    .line 618
    const/4 v9, 0x1

    .line 622
    .end local v13           #extras:Landroid/os/Bundle;
    .end local v26           #update:Z
    :cond_3df
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Runtime;->gc()V

    .line 624
    if-eqz v9, :cond_407

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 626
    :try_start_3f5
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 627
    monitor-exit v27
    :try_end_407
    .catchall {:try_start_3f5 .. :try_end_407} :catchall_436

    .line 629
    :cond_407
    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    .line 631
    :try_start_40e
    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move/from16 v29, v0

    invoke-interface/range {v27 .. v29}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_422
    .catch Landroid/os/RemoteException; {:try_start_40e .. :try_end_422} :catch_424

    goto/16 :goto_9

    .line 632
    :catch_424
    move-exception v27

    move-object/from16 v11, v27

    .line 633
    .local v11, e:Landroid/os/RemoteException;
    const-string v27, "PackageManager"

    const-string v28, "Observer no longer exists."

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 601
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v13       #extras:Landroid/os/Bundle;
    :cond_430
    const/16 v27, 0x0

    move/from16 v26, v27

    goto/16 :goto_35b

    .line 627
    .end local v13           #extras:Landroid/os/Bundle;
    :catchall_436
    move-exception v28

    :try_start_437
    monitor-exit v27
    :try_end_438
    .catchall {:try_start_437 .. :try_end_438} :catchall_436

    throw v28

    .line 637
    .end local v5           #args:Lcom/android/server/PackageManagerService$InstallArgs;
    .end local v23           #res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;
    :cond_439
    const-string v27, "PackageManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Bogus post-install token "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 642
    .end local v8           #data:Lcom/android/server/PackageManagerService$PostInstallData;
    .end local v9           #deleteOld:Z
    :pswitch_459
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4b8

    const/16 v27, 0x1

    move/from16 v22, v27

    .line 643
    .local v22, reportStatus:Z
    :goto_46b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4bd

    const/16 v27, 0x1

    move/from16 v10, v27

    .line 645
    .local v10, doGc:Z
    :goto_47d
    if-eqz v10, :cond_486

    .line 647
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Runtime;->gc()V

    .line 649
    :cond_486
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4a1

    .line 650
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/Set;

    .line 653
    .local v6, args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v6

    #calls: Lcom/android/server/PackageManagerService;->unloadAllContainers(Ljava/util/Set;)V
    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$700(Lcom/android/server/PackageManagerService;Ljava/util/Set;)V

    .line 655
    .end local v6           #args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    :cond_4a1
    if-eqz v22, :cond_9

    .line 658
    :try_start_4a3
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_4aa
    .catch Landroid/os/RemoteException; {:try_start_4a3 .. :try_end_4aa} :catch_4ac

    goto/16 :goto_9

    .line 659
    :catch_4ac
    move-exception v27

    move-object/from16 v11, v27

    .line 660
    .restart local v11       #e:Landroid/os/RemoteException;
    const-string v27, "PackageManager"

    const-string v28, "MountService not running?"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 642
    .end local v10           #doGc:Z
    .end local v11           #e:Landroid/os/RemoteException;
    .end local v22           #reportStatus:Z
    :cond_4b8
    const/16 v27, 0x0

    move/from16 v22, v27

    goto :goto_46b

    .line 643
    .restart local v22       #reportStatus:Z
    :cond_4bd
    const/16 v27, 0x0

    move/from16 v10, v27

    goto :goto_47d

    .line 665
    .end local v22           #reportStatus:Z
    :pswitch_4c2
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Landroid/os/Process;->setThreadPriority(I)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 667
    const/16 v28, 0xd

    :try_start_4d6
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 668
    const/16 v28, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 670
    monitor-exit v27
    :try_end_4f6
    .catchall {:try_start_4d6 .. :try_end_4f6} :catchall_4fd

    .line 671
    const/16 v27, 0xa

    invoke-static/range {v27 .. v27}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_9

    .line 670
    :catchall_4fd
    move-exception v28

    :try_start_4fe
    monitor-exit v27
    :try_end_4ff
    .catchall {:try_start_4fe .. :try_end_4ff} :catchall_4fd

    throw v28

    .line 674
    :pswitch_500
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Landroid/os/Process;->setThreadPriority(I)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 676
    const/16 v28, 0xe

    :try_start_514
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/PackageManagerService$Settings;->writeStoppedLP()V

    .line 678
    monitor-exit v27
    :try_end_52b
    .catchall {:try_start_514 .. :try_end_52b} :catchall_532

    .line 679
    const/16 v27, 0xa

    invoke-static/range {v27 .. v27}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_9

    .line 678
    :catchall_532
    move-exception v28

    :try_start_533
    monitor-exit v27
    :try_end_534
    .catchall {:try_start_533 .. :try_end_534} :catchall_532

    throw v28

    .line 439
    nop

    :pswitch_data_536
    .packed-switch 0x1
        :pswitch_199
        :pswitch_9
        :pswitch_68
        :pswitch_9
        :pswitch_a
        :pswitch_146
        :pswitch_27a
        :pswitch_9
        :pswitch_2dd
        :pswitch_f2
        :pswitch_189
        :pswitch_459
        :pswitch_4c2
        :pswitch_500
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    const/16 v1, 0xa

    .line 432
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    .line 434
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 436
    return-void

    .line 434
    :catchall_9
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
