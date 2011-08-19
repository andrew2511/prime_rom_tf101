.class public Lcom/android/vending/controller/AssetInfoActivityController;
.super Ljava/lang/Object;
.source "AssetInfoActivityController.java"

# interfaces
.implements Lcom/android/vending/controller/ResultsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/controller/AssetInfoActivityController;Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/vending/controller/AssetInfoActivityController;->postEnoughSpaceCheck(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    return-void
.end method

.method public static getIdFromServer(Lcom/android/vending/model/Asset;)Ljava/lang/String;
    .locals 1
    .parameter "asset"

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleAutoUpdateChanged(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 4
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 560
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v2

    const-string v3, "auto_update"

    invoke-virtual {v2, v3}, Lcom/android/vending/controller/RequestParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 562
    .local v0, enabled:Z
    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->ENABLED:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    move-object v1, v2

    .line 564
    .local v1, state:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    :goto_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/vending/controller/AssetInfoActivityController$2;

    invoke-direct {v3, p0, p2, v1, p1}, Lcom/android/vending/controller/AssetInfoActivityController$2;-><init>(Lcom/android/vending/controller/AssetInfoActivityController;Lcom/android/vending/model/Asset;Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;Lcom/android/vending/BaseActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->run()V

    .line 572
    return-void

    .line 562
    .end local v1           #state:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    :cond_0
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->DISABLED:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    move-object v1, v2

    goto :goto_0
.end method

.method private handleBuyDownload(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 2
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 351
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f07014e

    move v0, v1

    .line 353
    .local v0, downloadMsg:I
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/vending/BaseActivity;->displayToast(I)V

    .line 354
    invoke-direct {p0, p1}, Lcom/android/vending/controller/AssetInfoActivityController;->postProcessDownload(Lcom/android/vending/BaseActivity;)V

    .line 355
    return-void

    .line 351
    .end local v0           #downloadMsg:I
    :cond_0
    const v1, 0x7f07014f

    move v0, v1

    goto :goto_0
.end method

.method private handleCancelDownload(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 3
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 399
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 400
    .local v0, la:Lcom/android/vending/model/LocalAsset;
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAssetDownloader()Lcom/android/vending/AssetDownloader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/AssetDownloader;->cancelDownload(Lcom/android/vending/model/LocalAsset;Landroid/content/Context;)V

    .line 401
    return-void
.end method

.method private handleCheckForEnoughSpace(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 5
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 415
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getRequiredInstallationSize()J

    move-result-wide v2

    .line 417
    .local v2, requiredSize:J
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 420
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 421
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    new-instance v4, Lcom/android/vending/controller/AssetInfoActivityController$1;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController$1;-><init>(Lcom/android/vending/controller/AssetInfoActivityController;Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 439
    return-void
.end method

.method private handleClearReview(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 3
    .parameter "activity"
    .parameter "asset"

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v0

    const-string v1, "rating"

    invoke-virtual {v0, v1}, Lcom/android/vending/controller/RequestParameters;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v0

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Lcom/android/vending/controller/RequestParameters;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getLocalId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/vending/BaseActivity;)V

    invoke-virtual {p1, v0}, Lcom/android/vending/BaseActivity;->startAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 264
    return-void
.end method

.method private handleCommentsChanged(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 555
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 556
    return-void
.end method

.method private handleDoInstall(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isOwnedByUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    :cond_0
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vending/model/Asset;->setRefundTimeoutByPackageName(Ljava/lang/String;Ljava/lang/Long;)V

    .line 365
    :cond_1
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    new-instance v1, Lcom/android/vending/GetAssetAsynchRequest;

    invoke-direct {v1, p2, p1}, Lcom/android/vending/GetAssetAsynchRequest;-><init>(Lcom/android/vending/model/Asset;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    .line 368
    const v0, 0x7f07014e

    invoke-virtual {p1, v0}, Lcom/android/vending/BaseActivity;->displayToast(I)V

    .line 369
    invoke-direct {p0, p1}, Lcom/android/vending/controller/AssetInfoActivityController;->postProcessDownload(Lcom/android/vending/BaseActivity;)V

    .line 376
    :goto_0
    return-void

    .line 371
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/vending/billing/BuyPageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 373
    const-string v1, "assetid"

    invoke-static {p2}, Lcom/android/vending/controller/AssetInfoActivityController;->getIdFromServer(Lcom/android/vending/model/Asset;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/vending/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private handleEmailContact(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 6
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 506
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getContactEmail()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, emailAddress:Ljava/lang/String;
    const-string v3, "mailto"

    if-nez v0, :cond_0

    const-string v4, ""

    :goto_0
    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 511
    .local v2, emailUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 513
    .local v1, emailIntent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p1, v1}, Lcom/android/vending/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 515
    return-void

    .end local v1           #emailIntent:Landroid/content/Intent;
    .end local v2           #emailUri:Landroid/net/Uri;
    :cond_0
    move-object v4, v0

    .line 508
    goto :goto_0
.end method

.method private handleFlagContentComplete(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 395
    const v0, 0x7f0700ab

    invoke-virtual {p1, v0}, Lcom/android/vending/BaseActivity;->displayToast(I)V

    .line 396
    return-void
.end method

.method private handleFlagItem(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 494
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/vending/FlagContentActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 496
    const-string v1, "assetid"

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getLocalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v1, "EverInstalled"

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isEverInstalledByUser()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 498
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/android/vending/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 499
    return-void
.end method

.method private handleLaunch(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 6
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 458
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/vending/model/Asset;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 460
    .local v0, launchIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p1, v0}, Lcom/android/vending/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 468
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0700d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, msg:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0700d7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p1, v2, v1}, Lcom/android/vending/BaseActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleModifyComment(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 4
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "comment"

    invoke-virtual {v1, v2}, Lcom/android/vending/controller/RequestParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    .local v0, comment:Ljava/lang/String;
    new-instance v1, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getLocalId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/vending/BaseActivity;)V

    invoke-virtual {p1, v1}, Lcom/android/vending/BaseActivity;->startAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 276
    return-void
.end method

.method private handleModifyRating(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 5
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "rating"

    invoke-virtual {v1, v2}, Lcom/android/vending/controller/RequestParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 268
    .local v0, rating:I
    new-instance v1, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getLocalId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/vending/BaseActivity;)V

    invoke-virtual {p1, v1}, Lcom/android/vending/BaseActivity;->startAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 270
    return-void
.end method

.method private handlePackageAlreadyInstalled(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 1
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 408
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 409
    return-void
.end method

.method private handlePhoneContact(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 5
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 531
    const-string v2, "tel"

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getContactPhone()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 532
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 533
    .local v0, phoneIntent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Lcom/android/vending/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 534
    return-void
.end method

.method private handleShare(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 9
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 575
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 576
    .local v3, context:Landroid/content/Context;
    sget-object v7, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_APP_INFO_URL:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v7}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 577
    .local v0, assetUri:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/android/vending/controller/AssetInfoActivityController;->getIdFromServer(Lcom/android/vending/model/Asset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 579
    .local v6, message:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "text/plain"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const v7, 0x7f0701a2

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, chooseTitle:Ljava/lang/String;
    invoke-static {v5, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 588
    .local v1, chooseIntent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/android/vending/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v4

    .line 590
    .local v4, ex:Landroid/content/ActivityNotFoundException;
    const v7, 0x7f0701a3

    invoke-virtual {p1, v7}, Lcom/android/vending/BaseActivity;->displayToast(I)V

    goto :goto_0
.end method

.method private handleUninstall(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 0
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 455
    return-void
.end method

.method private handleUninstallComplete(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 404
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 405
    return-void
.end method

.method private handleViewComments(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 537
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 538
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/vending/CommentsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 539
    const-string v1, "assetid"

    invoke-static {p2}, Lcom/android/vending/controller/AssetInfoActivityController;->getIdFromServer(Lcom/android/vending/model/Asset;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const-string v1, "asset_name"

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/android/vending/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 543
    return-void
.end method

.method private handleViewPublisherApps(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 471
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Util;->getSearchQueryForPublisher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 473
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/vending/SearchAssetListActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 474
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    invoke-virtual {p1, v1}, Lcom/android/vending/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 478
    return-void
.end method

.method private handleViewSecurityPermissions(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 483
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/vending/AssetPermissionsSubActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 486
    const-string v1, "assetid"

    invoke-static {p2}, Lcom/android/vending/controller/AssetInfoActivityController;->getIdFromServer(Lcom/android/vending/model/Asset;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-string v1, "during_install_flow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    if-eqz p3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/vending/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 491
    return-void

    .line 488
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private handleViewSimilar(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 546
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 547
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/vending/SimilarAssetListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 548
    const-string v1, "assetid"

    invoke-static {p2}, Lcom/android/vending/controller/AssetInfoActivityController;->getIdFromServer(Lcom/android/vending/model/Asset;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v1, "asset_package"

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/android/vending/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 552
    return-void
.end method

.method private handleWebsiteContact(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 6
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 518
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getContactWebsite()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, url:Ljava/lang/String;
    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 520
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 521
    .local v1, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 523
    .local v3, webIntent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p1, v3}, Lcom/android/vending/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #webIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 524
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v3       #webIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postEnoughSpaceCheck(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V
    .locals 1
    .parameter "activity"
    .parameter "asset"

    .prologue
    .line 442
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isOwnedByUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->hasNextPurchaseRefundable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isNextPurchaseRefundable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/vending/controller/AssetInfoActivityController;->handleDoInstall(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    goto :goto_0
.end method

.method private postProcessDownload(Lcom/android/vending/BaseActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 384
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getGTalkServiceHelper()Lcom/android/vending/GTalkServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/GTalkServiceHelper;->requestSendHeartbeat()Z

    .line 388
    new-instance v0, Lcom/android/vending/api/AssetService;

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    .line 389
    .local v0, assetService:Lcom/android/vending/api/AssetService;
    invoke-virtual {v0}, Lcom/android/vending/api/AssetService;->invalidateMyDownloads()V

    .line 391
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 392
    return-void
.end method


# virtual methods
.method public handleRequest(ILcom/android/vending/BaseActivity;)V
    .locals 3
    .parameter "requestId"
    .parameter "activity"

    .prologue
    .line 100
    invoke-virtual {p2}, Lcom/android/vending/BaseActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "asset"

    invoke-virtual {v1, v2}, Lcom/android/vending/controller/RequestParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 101
    .local v0, asset:Lcom/android/vending/model/Asset;
    if-nez v0, :cond_1

    .line 102
    const-string v1, "asset is null"

    invoke-static {v1}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isInstallable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handlePackageAlreadyInstalled(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 114
    :pswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/vending/controller/AssetInfoActivityController;->handleViewSecurityPermissions(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;Z)V

    goto :goto_0

    .line 118
    :pswitch_3
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleCheckForEnoughSpace(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleCheckForEnoughSpace(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 132
    :pswitch_4
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleDoInstall(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 136
    :pswitch_5
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleUninstall(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 140
    :pswitch_6
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleLaunch(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 144
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleFlagItem(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 148
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleEmailContact(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 152
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleCancelDownload(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 156
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleViewPublisherApps(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 160
    :pswitch_b
    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/vending/controller/AssetInfoActivityController;->handleViewSecurityPermissions(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;Z)V

    goto :goto_0

    .line 164
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleViewSimilar(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 168
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleClearReview(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 172
    :pswitch_e
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleViewComments(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 176
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleModifyComment(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 180
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleModifyRating(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 184
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleWebsiteContact(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 188
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handlePhoneContact(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 192
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleAutoUpdateChanged(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 196
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleShare(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_3
        :pswitch_11
        :pswitch_12
        :pswitch_4
        :pswitch_13
        :pswitch_14
        :pswitch_2
        :pswitch_c
    .end packed-switch
.end method

.method public handleResult(IILcom/android/vending/BaseActivity;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "activity"

    .prologue
    const/16 v4, 0xa

    const/4 v3, -0x1

    .line 202
    invoke-virtual {p3}, Lcom/android/vending/BaseActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "asset"

    invoke-virtual {v1, v2}, Lcom/android/vending/controller/RequestParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 204
    .local v0, asset:Lcom/android/vending/model/Asset;
    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected activity result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 212
    :cond_0
    if-nez v0, :cond_2

    .line 213
    invoke-virtual {p3, p1, p2}, Lcom/android/vending/BaseActivity;->deferResultHandling(II)V

    .line 257
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 217
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected activity requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_1
    if-ne p2, v3, :cond_1

    .line 220
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Lcom/android/vending/controller/AssetInfoActivityController;->handleRequest(ILcom/android/vending/BaseActivity;)V

    goto :goto_0

    .line 225
    :pswitch_2
    if-ne p2, v3, :cond_1

    .line 226
    invoke-direct {p0, p3, v0}, Lcom/android/vending/controller/AssetInfoActivityController;->handleBuyDownload(Lcom/android/vending/BaseActivity;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 231
    :pswitch_3
    if-ne p2, v3, :cond_1

    .line 232
    invoke-direct {p0, p3}, Lcom/android/vending/controller/AssetInfoActivityController;->handleFlagContentComplete(Lcom/android/vending/BaseActivity;)V

    goto :goto_0

    .line 237
    :pswitch_4
    if-ne p2, v3, :cond_1

    .line 238
    invoke-direct {p0, p3}, Lcom/android/vending/controller/AssetInfoActivityController;->handleUninstallComplete(Lcom/android/vending/BaseActivity;)V

    goto :goto_0

    .line 243
    :pswitch_5
    if-ne p2, v4, :cond_1

    .line 244
    invoke-direct {p0, p3}, Lcom/android/vending/controller/AssetInfoActivityController;->handleCommentsChanged(Lcom/android/vending/BaseActivity;)V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
