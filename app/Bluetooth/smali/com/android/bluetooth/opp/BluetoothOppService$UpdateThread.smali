.class Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 1
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    .line 374
    const-string v0, "Bluetooth Share Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 375
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 379
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 381
    const/4 v12, 0x0

    .line 383
    .local v12, keepService:Z
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 385
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in BluetoothOppService"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 390
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 391
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1202(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    .line 392
    if-nez v12, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->stopSelf()V

    .line 394
    monitor-exit v0

    .line 515
    :cond_1
    :goto_1
    return-void

    .line 396
    :cond_2
    monitor-exit v0

    goto :goto_1

    .line 398
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1302(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 399
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 403
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 407
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 409
    const/4 v7, 0x0

    .line 411
    .local v7, arrayPos:I
    const/4 v12, 0x0

    .line 412
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    .line 414
    .local v11, isAfterLast:Z
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 430
    .local v10, idColumn:I
    :goto_2
    if-eqz v11, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_14

    .line 431
    :cond_4
    if-eqz v11, :cond_6

    .line 438
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 439
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v2, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    .line 441
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppService;I)V

    goto :goto_2

    .line 443
    :cond_6
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 445
    .local v9, id:I
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v7, v0, :cond_a

    .line 446
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V

    .line 448
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 449
    const/4 v12, 0x1

    .line 451
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 452
    const/4 v12, 0x1

    .line 454
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 455
    const/4 v12, 0x1

    .line 458
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 459
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 460
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    goto :goto_2

    .line 462
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 464
    .local v6, arrayId:I
    if-ge v6, v9, :cond_c

    .line 467
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 468
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v2, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    .line 470
    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppService;I)V

    goto/16 :goto_2

    .line 471
    :cond_c
    if-ne v6, v9, :cond_10

    .line 474
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2100(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v1

    invoke-static {v0, v8, v7, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2200(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;IZ)V

    .line 475
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 476
    const/4 v12, 0x1

    .line 478
    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 479
    const/4 v12, 0x1

    .line 481
    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 482
    const/4 v12, 0x1

    .line 485
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 486
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 487
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    goto/16 :goto_2

    .line 492
    :cond_10
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V

    .line 494
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 495
    const/4 v12, 0x1

    .line 497
    :cond_11
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 498
    const/4 v12, 0x1

    .line 500
    :cond_12
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 501
    const/4 v12, 0x1

    .line 503
    :cond_13
    add-int/lit8 v7, v7, 0x1

    .line 504
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 505
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    goto/16 :goto_2

    .line 511
    .end local v6           #arrayId:I
    .end local v9           #id:I
    :cond_14
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2300(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 513
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
