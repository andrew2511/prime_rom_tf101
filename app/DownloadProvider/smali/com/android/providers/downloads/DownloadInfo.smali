.class public Lcom/android/providers/downloads/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadInfo$1;,
        Lcom/android/providers/downloads/DownloadInfo$Reader;
    }
.end annotation


# instance fields
.field public mAllowRoaming:Z

.field public mAllowedNetworkTypes:I

.field public mBypassRecommendedSizeLimit:I

.field public mClass:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mControl:I

.field public mCookies:Ljava/lang/String;

.field public mCurrentBytes:J

.field public mDeleted:Z

.field public mDescription:Ljava/lang/String;

.field public mDestination:I

.field public mETag:Ljava/lang/String;

.field public mExtras:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFuzz:I

.field public volatile mHasActiveThread:Z

.field public mHint:Ljava/lang/String;

.field public mId:J

.field public mIsPublicApi:Z

.field public mLastMod:J

.field public mMediaProviderUri:Ljava/lang/String;

.field public mMediaScanned:I

.field public mMimeType:Ljava/lang/String;

.field public mNoIntegrity:Z

.field public mNumFailed:I

.field public mPackage:Ljava/lang/String;

.field public mReferer:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRetryAfter:I

.field public mStatus:I

.field private mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

.field public mTitle:Ljava/lang/String;

.field public mTotalBytes:J

.field public mUri:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V
    .locals 2
    .parameter "context"
    .parameter "systemFacade"

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    .line 226
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    .line 227
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 228
    sget-object v0, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mFuzz:I

    .line 229
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/DownloadInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    return-object v0
.end method

.method private checkIsNetworkTypeAllowed(I)I
    .locals 2
    .parameter "networkType"

    .prologue
    .line 386
    iget-boolean v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v1, :cond_0

    .line 387
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadInfo;->translateNetworkTypeToApiFlag(I)I

    move-result v0

    .line 388
    .local v0, flag:I
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowedNetworkTypes:I

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 389
    const/4 v1, 0x6

    .line 392
    .end local v0           #flag:I
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadInfo;->checkSizeAllowedForNetwork(I)I

    move-result v1

    goto :goto_0
.end method

.method private checkSizeAllowedForNetwork(I)I
    .locals 7
    .parameter "networkType"

    .prologue
    const/4 v6, 0x1

    .line 417
    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v2, v6

    .line 434
    :goto_0
    return v2

    .line 420
    :cond_0
    if-ne p1, v6, :cond_1

    move v2, v6

    .line 421
    goto :goto_0

    .line 423
    :cond_1
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->getMaxBytesOverMobile()Ljava/lang/Long;

    move-result-object v0

    .line 424
    .local v0, maxBytesOverMobile:Ljava/lang/Long;
    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 425
    const/4 v2, 0x3

    goto :goto_0

    .line 427
    :cond_2
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mBypassRecommendedSizeLimit:I

    if-nez v2, :cond_3

    .line 428
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->getRecommendedMaxBytesOverMobile()Ljava/lang/Long;

    move-result-object v1

    .line 429
    .local v1, recommendedMaxBytesOverMobile:Ljava/lang/Long;
    if-eqz v1, :cond_3

    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 431
    const/4 v2, 0x4

    goto :goto_0

    .end local v1           #recommendedMaxBytesOverMobile:Ljava/lang/Long;
    :cond_3
    move v2, v6

    .line 434
    goto :goto_0
.end method

.method private isReadyToStart(J)Z
    .locals 4
    .parameter "now"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 282
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mHasActiveThread:Z

    if-eqz v0, :cond_0

    move v0, v3

    .line 314
    :goto_0
    return v0

    .line 286
    :cond_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    if-ne v0, v2, :cond_1

    move v0, v3

    .line 288
    goto :goto_0

    .line 290
    :cond_1
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    sparse-switch v0, :sswitch_data_0

    move v0, v3

    .line 314
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 295
    goto :goto_0

    .line 299
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    .line 303
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;->restartTime(J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    .line 306
    :sswitch_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :sswitch_4
    move v0, v2

    .line 312
    goto :goto_0

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xbe -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc2 -> :sswitch_2
        0xc3 -> :sswitch_1
        0xc4 -> :sswitch_1
        0xc6 -> :sswitch_4
        0xc7 -> :sswitch_3
    .end sparse-switch
.end method

.method private isRoamingAllowed()Z
    .locals 2

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v0, :cond_0

    .line 348
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowRoaming:Z

    .line 350
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private translateNetworkTypeToApiFlag(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 400
    packed-switch p1, :pswitch_data_0

    .line 408
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 402
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 405
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public checkCanUseNetwork()I
    .locals 2

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1}, Lcom/android/providers/downloads/SystemFacade;->getActiveNetworkType()Ljava/lang/Integer;

    move-result-object v0

    .line 337
    .local v0, networkType:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 338
    const/4 v1, 0x2

    .line 343
    :goto_0
    return v1

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadInfo;->isRoamingAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1}, Lcom/android/providers/downloads/SystemFacade;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    const/4 v1, 0x5

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo;->checkIsNetworkTypeAllowed(I)I

    move-result v1

    goto :goto_0
.end method

.method public getAllDownloadsUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 472
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLogMessageForNetworkError(I)Ljava/lang/String;
    .locals 1
    .parameter "networkError"

    .prologue
    .line 359
    packed-switch p1, :pswitch_data_0

    .line 376
    const-string v0, "unknown error with network connectivity"

    :goto_0
    return-object v0

    .line 361
    :pswitch_0
    const-string v0, "download size exceeds recommended limit for mobile network"

    goto :goto_0

    .line 364
    :pswitch_1
    const-string v0, "download size exceeds limit for mobile network"

    goto :goto_0

    .line 367
    :pswitch_2
    const-string v0, "no network connection available"

    goto :goto_0

    .line 370
    :pswitch_3
    const-string v0, "download cannot use the current network connection because it is roaming"

    goto :goto_0

    .line 373
    :pswitch_4
    const-string v0, "download was requested to not use the current network type"

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getMyDownloadsUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 468
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasCompletionNotification()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 322
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 328
    :goto_0
    return v0

    .line 325
    :cond_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-ne v0, v2, :cond_1

    move v0, v2

    .line 326
    goto :goto_0

    :cond_1
    move v0, v1

    .line 328
    goto :goto_0
.end method

.method nextAction(J)J
    .locals 6
    .parameter "now"

    .prologue
    const-wide/16 v4, 0x0

    .line 512
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    const-wide/16 v2, -0x1

    .line 522
    :goto_0
    return-wide v2

    .line 515
    :cond_0
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v3, 0xc2

    if-eq v2, v3, :cond_1

    move-wide v2, v4

    .line 516
    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;->restartTime(J)J

    move-result-wide v0

    .line 519
    .local v0, when:J
    cmp-long v2, v0, p1

    if-gtz v2, :cond_2

    move-wide v2, v4

    .line 520
    goto :goto_0

    .line 522
    :cond_2
    sub-long v2, v0, p1

    goto :goto_0
.end method

.method notifyPauseDueToSize(Z)V
    .locals 3
    .parameter

    .prologue
    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 540
    const-class v1, Lcom/android/providers/downloads/SizeLimitActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/providers/downloads/SizeLimitActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 543
    const-string v1, "isWifiRequired"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 544
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 545
    return-void
.end method

.method public restartTime(J)J
    .locals 5
    .parameter "now"

    .prologue
    const/4 v4, 0x1

    .line 266
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    if-nez v0, :cond_0

    move-wide v0, p1

    .line 272
    :goto_0
    return-wide v0

    .line 269
    :cond_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    if-lez v0, :cond_1

    .line 270
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 272
    :cond_1
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mFuzz:I

    add-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x1e

    iget v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    sub-int/2addr v3, v4

    shl-int v3, v4, v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public sendIntentIfRequested()V
    .locals 4

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-boolean v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v1, :cond_2

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v1, "extra_download_id"

    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 259
    :goto_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1, v0}, Lcom/android/providers/downloads/SystemFacade;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 246
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 252
    const-string v1, "notificationextras"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getMyDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method shouldScanFile()Z
    .locals 2

    .prologue
    .line 529
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mMediaScanned:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "application/vnd.oma.drm.message"

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startIfReady(JLcom/android/providers/downloads/StorageManager;)V
    .locals 8
    .parameter "now"
    .parameter "storageManager"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xc0

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;->isReadyToStart(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    :goto_0
    return-void

    .line 442
    :cond_0
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_1

    .line 443
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service spawning thread to handle download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_1
    iget-boolean v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mHasActiveThread:Z

    if-eqz v2, :cond_2

    .line 446
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Multiple threads on same download"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    :cond_2
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-eq v2, v6, :cond_3

    .line 449
    iput v6, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 450
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 451
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "status"

    iget v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_3
    new-instance v0, Lcom/android/providers/downloads/DownloadThread;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-direct {v0, v2, v3, p0, p3}, Lcom/android/providers/downloads/DownloadThread;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo;Lcom/android/providers/downloads/StorageManager;)V

    .line 456
    .local v0, downloader:Lcom/android/providers/downloads/DownloadThread;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mHasActiveThread:Z

    .line 457
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2, v0}, Lcom/android/providers/downloads/SystemFacade;->startThread(Ljava/lang/Thread;)V

    goto :goto_0
.end method
