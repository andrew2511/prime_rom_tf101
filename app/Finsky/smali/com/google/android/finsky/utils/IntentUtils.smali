.class public Lcom/google/android/finsky/utils/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/IntentUtils$GenericConsumptionApp;,
        Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
    }
.end annotation


# static fields
.field private static final BOOKS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final BOOKS_WEB:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final MUSIC_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final MY_APPS:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final VIDEOS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final VIDEOS_WEB:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$1;

    const-class v1, Lcom/google/android/finsky/activities/BooksUrlHandlerActivity;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/IntentUtils$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->BOOKS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 144
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$2;

    const-class v1, Lcom/google/android/finsky/activities/BooksUrlHandlerActivity;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/IntentUtils$2;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->BOOKS_WEB:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 177
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$3;

    const-class v1, Lcom/google/android/finsky/activities/AppsUrlHandlerActivity;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/IntentUtils$3;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MY_APPS:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 224
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$4;

    const-class v1, Lcom/google/android/finsky/activities/VideoUrlHandlerActivity;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/IntentUtils$4;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->VIDEOS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 271
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$5;

    const-class v1, Lcom/google/android/finsky/activities/VideoUrlHandlerActivity;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/IntentUtils$5;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->VIDEOS_WEB:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 322
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$GenericConsumptionApp;

    const-class v1, Lcom/google/android/finsky/activities/MusicUrlHandlerActivity;

    const-string v2, "com.google.android.music"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/IntentUtils$GenericConsumptionApp;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MUSIC_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    return-void
.end method

.method public static buildConsumptionAppLaunchIntent(Landroid/content/pm/PackageManager;I)Landroid/content/Intent;
    .locals 1
    .parameter "packageManager"
    .parameter "contentType"

    .prologue
    .line 386
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildViewCollectionIntent(Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildConsumptionAppManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 1
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildConsumptionAppViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 1
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildConsumptionAppViewSampleIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 1
    .parameter "pm"
    .parameter "doc"

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildViewSampleIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 6
    .parameter "context"
    .parameter "doc"

    .prologue
    .line 478
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 481
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f0b000b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    return-object v0
.end method

.method public static configureUrlInterceptors(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/google/android/finsky/model/ChannelList;)V
    .locals 8
    .parameter "context"
    .parameter "pm"
    .parameter "channels"

    .prologue
    .line 530
    const/4 v7, 0x4

    new-array v6, v7, [I

    fill-array-data v6, :array_0

    .line 533
    .local v6, tabs:[I
    move-object v0, v6

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 534
    .local v1, channel:I
    const/4 v2, 0x1

    .line 535
    .local v2, enable:Z
    invoke-virtual {p2, v1}, Lcom/google/android/finsky/model/ChannelList;->getTab(I)Lcom/google/android/finsky/model/ChannelTab;

    move-result-object v5

    .line 536
    .local v5, tab:Lcom/google/android/finsky/model/ChannelTab;
    if-nez v5, :cond_0

    .line 537
    const/4 v2, 0x0

    .line 539
    :cond_0
    invoke-static {p0, p1, v1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->enableDisableUrlHandler(Landroid/content/Context;Landroid/content/pm/PackageManager;IZ)V

    .line 533
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 541
    .end local v1           #channel:I
    .end local v2           #enable:Z
    .end local v5           #tab:Lcom/google/android/finsky/model/ChannelTab;
    :cond_1
    return-void

    .line 530
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static createSendIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "uri"

    .prologue
    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 465
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 466
    return-object v0
.end method

.method public static createViewIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "uri"

    .prologue
    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 425
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 426
    return-object v0
.end method

.method public static createYouTubeIntentForUrl(Landroid/content/pm/PackageManager;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .parameter "pm"
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 441
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isYouTubeAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v1, "authAccount"

    invoke-static {}, Lcom/google/android/finsky/api/AccountHandler;->getCurrentAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v1, "force_fullscreen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    const-string v1, "finish_on_ended"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 451
    :cond_0
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 452
    return-object v0
.end method

.method public static enableDisableUrlHandler(Landroid/content/Context;Landroid/content/pm/PackageManager;IZ)V
    .locals 5
    .parameter "context"
    .parameter "pm"
    .parameter "channel"
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    .line 510
    invoke-static {p1, p2}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    .line 511
    .local v0, app:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->getUrlHandlerClassName()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, className:Ljava/lang/String;
    if-eqz p3, :cond_1

    move v2, v4

    .line 517
    .local v2, status:I
    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 520
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #status:I
    :cond_0
    return-void

    .line 514
    .restart local v1       #className:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    move v2, v3

    goto :goto_0
.end method

.method public static forwardIntentToMainActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 493
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 494
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 495
    const-string v1, "authAccount"

    const-string v2, "authAccount"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 499
    return-void
.end method

.method private static getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
    .locals 3
    .parameter "pm"
    .parameter "contentType"

    .prologue
    .line 356
    packed-switch p1, :pswitch_data_0

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :pswitch_0
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isBooksAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->BOOKS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 372
    :goto_0
    return-object v0

    .line 361
    :cond_0
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->BOOKS_WEB:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    .line 365
    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MY_APPS:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    .line 367
    :pswitch_2
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MUSIC_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    .line 369
    :pswitch_3
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isVideosAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->VIDEOS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    .line 372
    :cond_1
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->VIDEOS_WEB:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static isBooksAppInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 4
    .parameter "pm"

    .prologue
    const/4 v3, 0x0

    .line 326
    const-string v2, "com.google.android.apps.books"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 327
    .local v0, booksIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    move v2, v3

    .line 332
    :goto_0
    return v2

    .line 330
    :cond_0
    const/high16 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 332
    .local v1, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static isChannelEnabled(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 5
    .parameter "context"
    .parameter "pm"
    .parameter "channel"

    .prologue
    const/4 v4, 0x1

    .line 544
    const/4 v2, 0x0

    .line 545
    .local v2, result:Z
    invoke-static {p1, p2}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    .line 546
    .local v0, app:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->getUrlHandlerClassName()Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, className:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 549
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v2, v4

    .line 553
    .end local v1           #className:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 549
    .restart local v1       #className:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0
.end method

.method private static isVideosAppInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 4
    .parameter "pm"

    .prologue
    const/4 v3, 0x0

    .line 336
    const-string v2, "com.google.android.videos"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 337
    .local v1, videosIntent:Landroid/content/Intent;
    if-nez v1, :cond_0

    move v2, v3

    .line 342
    :goto_0
    return v2

    .line 340
    :cond_0
    const/high16 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 342
    .local v0, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private static isYouTubeAppInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 4
    .parameter "pm"

    .prologue
    const/4 v3, 0x0

    .line 346
    const-string v2, "com.google.android.youtube"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 347
    .local v1, youTubeIntent:Landroid/content/Intent;
    if-nez v1, :cond_0

    move v2, v3

    .line 352
    :goto_0
    return v2

    .line 350
    :cond_0
    const/high16 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 352
    .local v0, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method
