.class Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "DownloadManagerBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/DownloadManagerBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPackageInstallObserver"
.end annotation


# instance fields
.field private final mAsset:Lcom/android/vending/model/LocalAsset;

.field private final mAssetName:Ljava/lang/String;

.field private final mContentUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadSource:Ljava/lang/String;

.field private final mFileUri:Landroid/net/Uri;

.field private final mIsUpdate:Z

.field private final mLastInstallInSeries:Z

.field private final mLaunchAfterInstall:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/android/vending/model/LocalAsset;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ZLandroid/content/Intent;)V
    .locals 0
    .parameter "contentUri"
    .parameter "fileUri"
    .parameter "asset"
    .parameter "context"
    .parameter "assetName"
    .parameter "lastInstallInSeries"
    .parameter "downloadSource"
    .parameter "isUpdate"
    .parameter "launchAfterInstall"

    .prologue
    .line 476
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 477
    iput-object p1, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContentUri:Landroid/net/Uri;

    .line 478
    iput-object p2, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mFileUri:Landroid/net/Uri;

    .line 479
    iput-object p3, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAsset:Lcom/android/vending/model/LocalAsset;

    .line 480
    iput-object p4, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    .line 481
    iput-object p5, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAssetName:Ljava/lang/String;

    .line 482
    iput-boolean p6, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mLastInstallInSeries:Z

    .line 483
    iput-object p7, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mDownloadSource:Ljava/lang/String;

    .line 484
    iput-boolean p8, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mIsUpdate:Z

    .line 485
    iput-object p9, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mLaunchAfterInstall:Landroid/content/Intent;

    .line 486
    return-void
.end method

.method private maybeBroadcastInstallReferrer(Ljava/lang/String;)V
    .locals 8
    .parameter "packageName"

    .prologue
    .line 559
    iget-object v7, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAsset:Lcom/android/vending/model/LocalAsset;

    invoke-virtual {v7}, Lcom/android/vending/model/LocalAsset;->getReferrer()Ljava/lang/String;

    move-result-object v4

    .line 560
    .local v4, referrer:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 561
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.vending.INSTALL_REFERRER"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "referrer"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    iget-object v7, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 566
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 568
    .local v6, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 569
    .local v2, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 570
    .local v0, activityName:Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 571
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 572
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    .line 573
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 574
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 580
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-eqz v0, :cond_2

    .line 581
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    iget-object v7, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 585
    .end local v0           #activityName:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method protected installFailureToString(I)Ljava/lang/String;
    .locals 4
    .parameter "result"

    .prologue
    .line 590
    sparse-switch p1, :sswitch_data_0

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, reason:Ljava/lang/String;
    const/4 v0, -0x1

    .line 686
    .local v0, errorMsgId:I
    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 592
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_0
    const-string v1, "Already exists"

    .line 593
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f070064

    .line 594
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 596
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_1
    const-string v1, "Invalid APK"

    .line 597
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f070065

    .line 598
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 600
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_2
    const-string v1, "Insufficient storage"

    .line 601
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f070066

    .line 602
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 604
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_3
    const-string v1, "Duplicate package"

    .line 605
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f070064

    .line 606
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 608
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_4
    const-string v1, "Update incompatible"

    .line 609
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f070067

    .line 610
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 612
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_5
    const-string v1, "Missing shared library"

    .line 613
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f070068

    .line 614
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 616
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_6
    const-string v1, "Replace couldn\'t delete"

    .line 617
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f070069

    .line 618
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 620
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_7
    const-string v1, "Failed dexopt"

    .line 621
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f070065

    .line 622
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 624
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_8
    const-string v1, "Older SDK"

    .line 625
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f07006a

    .line 626
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 628
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_9
    const-string v1, "Conflicting provider"

    .line 629
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f07006b

    .line 630
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 632
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_a
    const-string v1, "Newer SDK"

    .line 633
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f07006c

    .line 634
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 636
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_b
    const-string v1, "CPU ABI incompatible"

    .line 637
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f07006d

    .line 638
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 640
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_c
    const-string v1, "Parse not APK"

    .line 641
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f070065

    .line 642
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 644
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_d
    const-string v1, "Parse bad manifest"

    .line 645
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f07006e

    .line 646
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 648
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_e
    const-string v1, "Parse no certificates"

    .line 649
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f07006f

    .line 650
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 652
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_f
    const-string v1, "Parse inconsistent certificates"

    .line 653
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f07006f

    .line 654
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 656
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_10
    const-string v1, "Parse certificate encoding"

    .line 657
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f07006f

    .line 658
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 660
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_11
    const-string v1, "Parse bad package name"

    .line 661
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f070070

    .line 662
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 664
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_12
    const-string v1, "Parse bad shared user id"

    .line 665
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f070065

    .line 666
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 668
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_13
    const-string v1, "Parse manifest malformed"

    .line 669
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f07006e

    .line 670
    .restart local v0       #errorMsgId:I
    goto :goto_0

    .line 672
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_14
    const-string v1, "Parse manifest empty"

    .line 673
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f07006e

    .line 674
    .restart local v0       #errorMsgId:I
    goto/16 :goto_0

    .line 677
    .end local v0           #errorMsgId:I
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_15
    const-string v1, "Invalid install location"

    .line 678
    .restart local v1       #reason:Ljava/lang/String;
    const v0, 0x7f070071

    .line 679
    .restart local v0       #errorMsgId:I
    goto/16 :goto_0

    :cond_0
    move-object v2, v1

    .line 686
    goto/16 :goto_1

    .line 590
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d -> :sswitch_14
        -0x6c -> :sswitch_13
        -0x6b -> :sswitch_12
        -0x6a -> :sswitch_11
        -0x69 -> :sswitch_10
        -0x68 -> :sswitch_f
        -0x67 -> :sswitch_e
        -0x65 -> :sswitch_d
        -0x64 -> :sswitch_c
        -0x14 -> :sswitch_15
        -0x13 -> :sswitch_15
        -0x10 -> :sswitch_b
        -0xe -> :sswitch_a
        -0xd -> :sswitch_9
        -0xc -> :sswitch_8
        -0xb -> :sswitch_7
        -0xa -> :sswitch_6
        -0x9 -> :sswitch_5
        -0x7 -> :sswitch_4
        -0x5 -> :sswitch_3
        -0x4 -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 17
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 489
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v2

    .line 491
    .local v2, notificationMgr:Lcom/android/vending/VendingNotificationManager;
    const/4 v3, 0x1

    move/from16 v0, p2

    move v1, v3

    if-eq v0, v1, :cond_2

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAsset:Lcom/android/vending/model/LocalAsset;

    move-object v3, v0

    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v3, v4}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mIsUpdate:Z

    move v4, v0

    if-eqz v4, :cond_0

    const v4, 0x7f07004c

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAssetName:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, notificationStatus:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mIsUpdate:Z

    move v5, v0

    if-eqz v5, :cond_1

    const v5, 0x7f07004d

    :goto_1
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 500
    .local v6, notificationMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v5, 0x7f070078

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 502
    .local v7, dialogTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->installFailureToString(I)Ljava/lang/String;

    move-result-object v8

    .line 504
    .local v8, detailedMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAsset:Lcom/android/vending/model/LocalAsset;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAssetName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/vending/VendingNotificationManager;->showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package install from "

    .end local v4           #notificationStatus:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContentUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mLastInstallInSeries:Z

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mDownloadSource:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Lcom/android/vending/AssetDownloader;->finishRestore(Landroid/content/Context;ZLjava/lang/String;)V

    .line 555
    .end local v6           #notificationMsg:Ljava/lang/String;
    .end local v7           #dialogTitle:Ljava/lang/String;
    .end local v8           #detailedMessage:Ljava/lang/String;
    .end local p2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContentUri:Landroid/net/Uri;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mFileUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Lcom/android/vending/util/DownloadManagerUtil;->removeDownload(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 556
    return-void

    .line 493
    .restart local p2
    :cond_0
    const v4, 0x7f07004a

    goto/16 :goto_0

    .line 497
    .restart local v4       #notificationStatus:Ljava/lang/String;
    :cond_1
    const v5, 0x7f07004b

    goto :goto_1

    .line 516
    .end local v4           #notificationStatus:Ljava/lang/String;
    :cond_2
    const-string v3, "Package \'%s\' installed!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    invoke-direct/range {p0 .. p1}, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->maybeBroadcastInstallReferrer(Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mLaunchAfterInstall:Landroid/content/Intent;

    move-object v3, v0

    if-eqz v3, :cond_3

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mLaunchAfterInstall:Landroid/content/Intent;

    move-object v3, v0

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 524
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mLaunchAfterInstall:Landroid/content/Intent;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_3
    :goto_3
    const-string v3, "Source=%s last=%B asset=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mDownloadSource:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mLastInstallInSeries:Z

    move v6, v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAsset:Lcom/android/vending/model/LocalAsset;

    move-object v6, v0

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    const-string v3, "backup"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mDownloadSource:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mLastInstallInSeries:Z

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mDownloadSource:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Lcom/android/vending/AssetDownloader;->finishRestore(Landroid/content/Context;ZLjava/lang/String;)V

    goto/16 :goto_2

    .line 537
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mIsUpdate:Z

    move v3, v0

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/vending/util/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/vending/DownloadManagerBroadcastReceiver;->access$100(Landroid/content/Context;Ljava/lang/String;)V

    .line 541
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mIsUpdate:Z

    move v4, v0

    if-eqz v4, :cond_6

    const v4, 0x7f070048

    :goto_4
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAssetName:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 545
    .restart local v4       #notificationStatus:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mIsUpdate:Z

    move v5, v0

    if-eqz v5, :cond_7

    const v5, 0x7f070049

    :goto_5
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 548
    .restart local v6       #notificationMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 550
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAsset:Lcom/android/vending/model/LocalAsset;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAssetName:Ljava/lang/String;

    move-object v14, v0

    const v16, 0x7f02007e

    move-object v9, v2

    move-object v13, v4

    move-object v15, v6

    invoke-virtual/range {v9 .. v16}, Lcom/android/vending/VendingNotificationManager;->showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 541
    .end local v4           #notificationStatus:Ljava/lang/String;
    .end local v6           #notificationMsg:Ljava/lang/String;
    .end local v11           #intent:Landroid/content/Intent;
    :cond_6
    const v4, 0x7f070046

    goto :goto_4

    .line 545
    .restart local v4       #notificationStatus:Ljava/lang/String;
    :cond_7
    const v5, 0x7f070047

    goto :goto_5

    .line 525
    .end local v4           #notificationStatus:Ljava/lang/String;
    .restart local p2
    :catch_0
    move-exception v3

    goto/16 :goto_3
.end method
