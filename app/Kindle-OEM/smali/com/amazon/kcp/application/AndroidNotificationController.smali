.class public Lcom/amazon/kcp/application/AndroidNotificationController;
.super Ljava/lang/Object;
.source "AndroidNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;
    }
.end annotation


# static fields
.field private static final LED_COLOR:I = -0x100

.field private static final LED_OFF_TIME:I = 0x3e8

.field private static final LED_ON_TIME:I = 0x12c


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

.field private downloadBookTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadEncounteredLicenseError:Lcom/amazon/foundation/IIntCallback;

.field private final downloadFinished:Lcom/amazon/foundation/IIntCallback;

.field private final downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

.field private final downloadStarted:Lcom/amazon/foundation/IIntCallback;

.field private final downloadUpdated:Lcom/amazon/foundation/IIntCallback;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final partialDownloadRemoved:Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;

.field private final progressChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)V
    .locals 2
    .parameter "context"
    .parameter "downloadManager"
    .parameter "dictionaryManager"

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Lcom/amazon/kcp/application/AndroidNotificationController$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AndroidNotificationController$1;-><init>(Lcom/amazon/kcp/application/AndroidNotificationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadStarted:Lcom/amazon/foundation/IIntCallback;

    .line 247
    new-instance v0, Lcom/amazon/kcp/application/AndroidNotificationController$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AndroidNotificationController$2;-><init>(Lcom/amazon/kcp/application/AndroidNotificationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadUpdated:Lcom/amazon/foundation/IIntCallback;

    .line 256
    new-instance v0, Lcom/amazon/kcp/application/AndroidNotificationController$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AndroidNotificationController$3;-><init>(Lcom/amazon/kcp/application/AndroidNotificationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadFinished:Lcom/amazon/foundation/IIntCallback;

    .line 265
    new-instance v0, Lcom/amazon/kcp/application/AndroidNotificationController$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AndroidNotificationController$4;-><init>(Lcom/amazon/kcp/application/AndroidNotificationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadEncounteredLicenseError:Lcom/amazon/foundation/IIntCallback;

    .line 274
    new-instance v0, Lcom/amazon/kcp/application/AndroidNotificationController$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AndroidNotificationController$5;-><init>(Lcom/amazon/kcp/application/AndroidNotificationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->progressChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    .line 289
    new-instance v0, Lcom/amazon/kcp/application/AndroidNotificationController$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AndroidNotificationController$6;-><init>(Lcom/amazon/kcp/application/AndroidNotificationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->partialDownloadRemoved:Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    .line 312
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    .line 313
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 314
    iput-object p3, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    .line 315
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/AndroidNotificationController;)Lcom/amazon/kcp/library/models/internal/IDownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/AndroidNotificationController;Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->onDownloadStarted(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/application/AndroidNotificationController;Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->onDownloadUpdated(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/application/AndroidNotificationController;Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->onDownloadFinished(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/application/AndroidNotificationController;Lcom/amazon/kcp/library/models/IDownloadBookItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/application/AndroidNotificationController;->notifyBookIsDownloading(Lcom/amazon/kcp/library/models/IDownloadBookItem;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/application/AndroidNotificationController;Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->onDownloadingBookDeleted(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    return-void
.end method

.method private createNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;IZ)Landroid/app/Notification;
    .locals 5
    .parameter "iconId"
    .parameter "tickerText"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "notificationIntent"
    .parameter "flags"
    .parameter "showLights"

    .prologue
    const/4 v4, 0x0

    .line 532
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 536
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-static {v2, v4, p5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 538
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p3, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 540
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/2addr v2, p6

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 542
    if-eqz p7, :cond_0

    .line 545
    const/16 v2, -0x100

    iput v2, v1, Landroid/app/Notification;->ledARGB:I

    .line 546
    const/16 v2, 0x12c

    iput v2, v1, Landroid/app/Notification;->ledOnMS:I

    .line 547
    const/16 v2, 0x3e8

    iput v2, v1, Landroid/app/Notification;->ledOffMS:I

    .line 548
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 551
    :cond_0
    return-object v1
.end method

.method private getNotificationClickedIntent(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Landroid/content/Intent;
    .locals 3
    .parameter "book"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/dictionary/IDictionaryManager;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 605
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/application/KindleProtocol;->createOpenBookIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyBookIsDownloading(Lcom/amazon/kcp/library/models/IDownloadBookItem;I)V
    .locals 6
    .parameter "item"
    .parameter "downloadProgress"

    .prologue
    .line 436
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 441
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getActiveNotification(Lcom/amazon/kcp/library/models/IListableBook;)Landroid/app/Notification;

    move-result-object v1

    .line 442
    .local v1, activeNotification:Landroid/app/Notification;
    if-nez v1, :cond_1

    .line 444
    new-instance v1, Landroid/app/Notification;

    .end local v1           #activeNotification:Landroid/app/Notification;
    const v0, 0x1080081

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 445
    .restart local v1       #activeNotification:Landroid/app/Notification;
    invoke-static {p1, v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->setActiveNotification(Lcom/amazon/kcp/library/models/IListableBook;Landroid/app/Notification;)V

    .line 448
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-static {p1, v0, v3}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kcp/library/models/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->getNotificationClickedIntent(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Landroid/content/Intent;

    move-result-object v4

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/application/AndroidNotificationController;->updateActiveNotificationFields(Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    .line 454
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/library/models/IListableBook;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 456
    .end local v1           #activeNotification:Landroid/app/Notification;
    :cond_2
    return-void
.end method

.method private onDownloadFinished(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 460
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayNotification(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidNotificationController#onDownloadFinished("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayFinishedNotification(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    const v1, 0x7f020093

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    const v4, 0x7f0b00dd

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-static {p1, v7, v8}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kcp/library/models/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->getNotificationClickedIntent(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/application/AndroidNotificationController;->createNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;IZ)Landroid/app/Notification;

    move-result-object v0

    .line 474
    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->removeActiveNotification(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 475
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/library/models/IListableBook;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->clearDownloadNotification(Lcom/amazon/kcp/library/models/IListableBook;)V

    goto :goto_0
.end method

.method private onDownloadStarted(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 2
    .parameter

    .prologue
    .line 377
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayNotification(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidNotificationController#onDownloadStarted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->progressChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 382
    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->getContentDownloadProgressPercent(Lcom/amazon/kcp/library/models/IDownloadBookItem;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->notifyBookIsDownloading(Lcom/amazon/kcp/library/models/IDownloadBookItem;I)V

    .line 384
    :cond_0
    return-void
.end method

.method private onDownloadUpdated(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 388
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayNotification(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidNotificationController#onDownloadUpdated("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 395
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayFinishedNotification(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    const v1, 0x1080078

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    const v4, 0x7f0b00de

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-static {p1, v8, v6}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kcp/library/models/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->getNotificationClickedIntent(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/application/AndroidNotificationController;->createNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;IZ)Landroid/app/Notification;

    move-result-object v0

    .line 404
    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->removeActiveNotification(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 405
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/library/models/IListableBook;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->clearDownloadNotification(Lcom/amazon/kcp/library/models/IListableBook;)V

    goto :goto_0

    .line 413
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 415
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->progressChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->isRegistered(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 417
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->progressChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 419
    :cond_4
    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->getContentDownloadProgressPercent(Lcom/amazon/kcp/library/models/IDownloadBookItem;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->notifyBookIsDownloading(Lcom/amazon/kcp/library/models/IDownloadBookItem;I)V

    goto :goto_0

    .line 421
    :cond_5
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 425
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->clearDownloadNotification(Lcom/amazon/kcp/library/models/IListableBook;)V

    goto :goto_0
.end method

.method private onDownloadingBookDeleted(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 2
    .parameter

    .prologue
    .line 584
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->progressChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 588
    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getActiveNotification(Lcom/amazon/kcp/library/models/IListableBook;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/library/models/IListableBook;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 593
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->releaseIdForBookItem(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 594
    return-void
.end method

.method private shouldDisplayFinishedNotification(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 515
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadBookTypes:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadBookTypes:Ljava/util/Set;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getBookType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/dictionary/IDictionaryManager;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldDisplayNotification(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 501
    if-eqz p1, :cond_3

    .line 503
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadBookTypes:Ljava/util/Set;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadBookTypes:Ljava/util/Set;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getBookType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    .line 504
    .local v1, isASupportedType:Z
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-interface {v2, p1}, Lcom/amazon/kcp/library/dictionary/IDictionaryManager;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v0

    .line 506
    .local v0, isADictionary:Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    move v2, v5

    .line 509
    .end local v0           #isADictionary:Z
    .end local v1           #isASupportedType:Z
    :goto_1
    return v2

    :cond_1
    move v1, v4

    .line 503
    goto :goto_0

    .restart local v0       #isADictionary:Z
    .restart local v1       #isASupportedType:Z
    :cond_2
    move v2, v4

    .line 506
    goto :goto_1

    .end local v0           #isADictionary:Z
    .end local v1           #isASupportedType:Z
    :cond_3
    move v2, v4

    .line 509
    goto :goto_1
.end method

.method private updateActiveNotificationFields(Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
    .locals 8
    .parameter "notification"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "notificationIntent"
    .parameter "downloadProgress"

    .prologue
    const/4 v7, 0x0

    .line 560
    iget-object v3, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0062

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, downloadPercentString:Ljava/lang/String;
    iget-object v3, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-static {v3, v7, p4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 564
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030018

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 565
    .local v1, contentView:Landroid/widget/RemoteViews;
    const v3, 0x7f0c0060

    invoke-virtual {v1, v3, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 566
    const v3, 0x7f0c0063

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 567
    const v3, 0x7f0c0061

    invoke-virtual {v1, v3, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 568
    const v3, 0x7f0c0062

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, p5, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 570
    iget v3, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p1, Landroid/app/Notification;->flags:I

    .line 571
    iput-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 572
    iput-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 573
    return-void
.end method


# virtual methods
.method public clearDownloadNotification(Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/library/models/IListableBook;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 372
    invoke-static {p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->releaseIdForBookItem(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 373
    return-void
.end method

.method public displayDebugNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 322
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020093

    const-string v2, "Kindle debug"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 324
    const-string v1, "Kindle debug"

    .line 325
    const-string v2, "Select to open Kindle debug options"

    .line 326
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    const-class v5, Lcom/amazon/kcp/debug/DebugActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    iget-object v4, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-static {v4, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 329
    iget-object v4, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 331
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getDebugNotificationId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 332
    return-void
.end method

.method public displayDownloadNotifications(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadStarted:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 346
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadUpdatedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadUpdated:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBeforeRemovedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadFinished:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 348
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getOnLicenseCountErrorEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadEncounteredLicenseError:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 349
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadAfterRemovedEvent()Lcom/amazon/foundation/internal/IIndexedDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->partialDownloadRemoved:Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IIndexedDownloadBookItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;)Z

    .line 361
    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadBookTypes:Ljava/util/Set;

    .line 362
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadStarted:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 355
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadUpdatedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadUpdated:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 356
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBeforeRemovedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadFinished:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 357
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getOnLicenseCountErrorEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadEncounteredLicenseError:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 358
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadAfterRemovedEvent()Lcom/amazon/foundation/internal/IIndexedDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidNotificationController;->partialDownloadRemoved:Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IIndexedDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;)Z

    goto :goto_0
.end method

.method protected onDownloadEncounteredLicenseError(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 2
    .parameter

    .prologue
    .line 486
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->shouldDisplayNotification(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidNotificationController#onDownloadEncounteredLicenseError("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->clearDownloadNotification(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 493
    :cond_0
    return-void
.end method
