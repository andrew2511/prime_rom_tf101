.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .parameter
    .parameter "toneId"

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 1324
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1325
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 1326
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1327
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 1333
    const/4 v8, 0x0

    .line 1336
    .local v8, toneType:I
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1338
    .local v3, phoneType:I
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v10, :pswitch_data_0

    .line 1428
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad toneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1340
    :pswitch_0
    const/16 v8, 0x16

    .line 1341
    const/16 v9, 0x50

    .line 1343
    .local v9, toneVolume:I
    const v7, 0x7fffffeb

    .line 1436
    .local v7, toneLengthMillis:I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 1437
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x6

    move v5, v10

    .line 1442
    .local v5, stream:I
    :goto_1
    new-instance v6, Landroid/media/ToneGenerator;

    invoke-direct {v6, v5, v9}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    .end local v5           #stream:I
    .local v6, toneGenerator:Landroid/media/ToneGenerator;
    :goto_2
    const/4 v1, 0x1

    .line 1465
    .local v1, needToStopTone:Z
    const/4 v2, 0x0

    .line 1467
    .local v2, okToPlayTone:Z
    if-eqz v6, :cond_3

    .line 1468
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 1469
    .local v4, ringerMode:I
    if-ne v3, v14, :cond_12

    .line 1470
    const/16 v10, 0x5d

    if-ne v8, v10, :cond_b

    .line 1471
    if-eqz v4, :cond_1

    if-eq v4, v13, :cond_1

    .line 1473
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$800()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1474
    :cond_0
    const/4 v2, 0x1

    .line 1475
    const/4 v1, 0x0

    .line 1501
    :cond_1
    :goto_3
    monitor-enter p0

    .line 1502
    if-eqz v2, :cond_2

    :try_start_1
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    if-eq v10, v14, :cond_2

    .line 1503
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1504
    invoke-virtual {v6, v8}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1506
    add-int/lit8 v10, v7, 0x14

    int-to-long v10, v10

    :try_start_2
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1511
    :goto_4
    if-eqz v1, :cond_2

    .line 1512
    :try_start_3
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1516
    :cond_2
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 1517
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1518
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1534
    .end local v4           #ringerMode:I
    :cond_3
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_4

    .line 1535
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)V

    .line 1537
    :cond_4
    return-void

    .line 1346
    .end local v1           #needToStopTone:Z
    .end local v2           #okToPlayTone:Z
    .end local v6           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_1
    if-ne v3, v14, :cond_5

    .line 1347
    const/16 v8, 0x60

    .line 1348
    const/16 v9, 0x32

    .line 1349
    .restart local v9       #toneVolume:I
    const/16 v7, 0x3e8

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1350
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_5
    if-eq v3, v13, :cond_6

    const/4 v10, 0x3

    if-ne v3, v10, :cond_7

    .line 1352
    :cond_6
    const/16 v8, 0x11

    .line 1353
    const/16 v9, 0x50

    .line 1354
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1356
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_7
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1360
    :pswitch_2
    const/16 v8, 0x12

    .line 1361
    const/16 v9, 0x50

    .line 1362
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 1363
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1369
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_3
    const/16 v8, 0x19

    .line 1370
    const/16 v9, 0x50

    .line 1371
    .restart local v9       #toneVolume:I
    const/16 v7, 0x3e8

    .line 1372
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1374
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_4
    const/16 v8, 0x1b

    .line 1375
    const/16 v9, 0x50

    .line 1376
    .restart local v9       #toneVolume:I
    const/16 v7, 0xc8

    .line 1377
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1379
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_5
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    if-ne v10, v13, :cond_8

    .line 1381
    const/16 v8, 0x5d

    .line 1382
    const/16 v9, 0x50

    .line 1383
    .restart local v9       #toneVolume:I
    const/16 v7, 0x2ee

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1385
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_8
    const/16 v8, 0x1b

    .line 1386
    const/16 v9, 0x50

    .line 1387
    .restart local v9       #toneVolume:I
    const/16 v7, 0xc8

    .line 1389
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1391
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_6
    const/16 v8, 0x56

    .line 1392
    const/16 v9, 0x50

    .line 1393
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 1394
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1396
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_7
    const/16 v8, 0x27

    .line 1397
    const/16 v9, 0x32

    .line 1398
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 1399
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1401
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_8
    const/16 v8, 0x25

    .line 1402
    const/16 v9, 0x32

    .line 1403
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1f4

    .line 1404
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1407
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_9
    const/16 v8, 0x5f

    .line 1408
    const/16 v9, 0x32

    .line 1409
    .restart local v9       #toneVolume:I
    const/16 v7, 0x177

    .line 1410
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1412
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_a
    const/16 v8, 0x57

    .line 1413
    const/16 v9, 0x32

    .line 1414
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 1415
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1417
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_b
    const/16 v8, 0x17

    .line 1418
    const/16 v9, 0x50

    .line 1420
    .restart local v9       #toneVolume:I
    const v7, 0x7fffffeb

    .line 1421
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1423
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_c
    const/16 v8, 0x15

    .line 1424
    const/16 v9, 0x50

    .line 1425
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 1426
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_0

    :cond_9
    move v5, v11

    .line 1437
    goto/16 :goto_1

    .line 1440
    :cond_a
    const/4 v5, 0x0

    .restart local v5       #stream:I
    goto/16 :goto_1

    .line 1444
    .end local v5           #stream:I
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 1445
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const/4 v6, 0x0

    .restart local v6       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_2

    .line 1477
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #needToStopTone:Z
    .restart local v2       #okToPlayTone:Z
    .restart local v4       #ringerMode:I
    :cond_b
    const/16 v10, 0x60

    if-eq v8, v10, :cond_c

    const/16 v10, 0x27

    if-eq v8, v10, :cond_c

    const/16 v10, 0x25

    if-eq v8, v10, :cond_c

    const/16 v10, 0x5f

    if-ne v8, v10, :cond_e

    .line 1481
    :cond_c
    if-eqz v4, :cond_1

    .line 1482
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$800()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1483
    :cond_d
    const/4 v2, 0x1

    .line 1484
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1486
    :cond_e
    const/16 v10, 0x57

    if-eq v8, v10, :cond_f

    const/16 v10, 0x56

    if-ne v8, v10, :cond_11

    .line 1488
    :cond_f
    if-eqz v4, :cond_1

    if-eq v4, v13, :cond_1

    .line 1490
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$800()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1491
    :cond_10
    const/4 v2, 0x1

    .line 1492
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1495
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1498
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1507
    :catch_1
    move-exception v0

    .line 1508
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer stopped: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1518
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 1338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 1540
    monitor-enter p0

    .line 1541
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1542
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1544
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1545
    monitor-exit p0

    .line 1546
    return-void

    .line 1545
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
