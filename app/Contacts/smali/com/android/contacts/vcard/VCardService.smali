.class public Lcom/android/contacts/vcard/VCardService;
.super Landroid/app/Service;
.source "VCardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;
    }
.end annotation


# instance fields
.field private mCurrentJobId:I

.field private mErrorReason:Ljava/lang/String;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mExtensionsToConsider:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileIndexMaximum:I

.field private mFileIndexMinimum:I

.field private mFileNameExtension:Ljava/lang/String;

.field private mFileNamePrefix:Ljava/lang/String;

.field private mFileNameSuffix:Ljava/lang/String;

.field private final mMessenger:Landroid/os/Messenger;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mRemainingScannerConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mReservedDestination:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningJobMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/contacts/vcard/ProcessorBase;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/contacts/vcard/VCardService$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/vcard/VCardService$1;-><init>(Lcom/android/contacts/vcard/VCardService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mMessenger:Landroid/os/Messenger;

    .line 139
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ImportRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/VCardService;->handleImportRequest(Lcom/android/contacts/vcard/ImportRequest;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ExportRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/VCardService;->handleExportRequest(Lcom/android/contacts/vcard/ExportRequest;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/CancelRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/VCardService;->handleCancelRequest(Lcom/android/contacts/vcard/CancelRequest;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/vcard/VCardService;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/VCardService;->handleRequestAvailableExportDestination(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/VCardService;->removeConnectionClient(Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V

    return-void
.end method

.method private declared-synchronized cancelAllRequestsAndShutdown()V
    .locals 4

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 443
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/vcard/ProcessorBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/vcard/ProcessorBase;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 442
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 445
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 446
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    monitor-exit p0

    return-void
.end method

.method private clearCache()V
    .locals 7

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/contacts/vcard/VCardService;->fileList()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 454
    .local v1, fileName:Ljava/lang/String;
    const-string v4, "import_tmp_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 456
    const-string v4, "VCardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove a temporary file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/VCardService;->deleteFile(Ljava/lang/String;)Z

    .line 453
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    .end local v1           #fileName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 3
    .parameter "context"
    .parameter "description"

    .prologue
    const/4 v2, 0x0

    .line 533
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080078

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "description"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 551
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080082

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    move-object v1, p3

    :goto_0
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method static constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 3
    .parameter "context"
    .parameter "reason"

    .prologue
    const/4 v2, 0x0

    .line 569
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080078

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0c00b9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 480
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040049

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 483
    const v1, 0x7f0700b8

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 484
    const v1, 0x7f0700b9

    const/4 v2, -0x1

    if-ne p6, v2, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {v0, v1, p6, p7, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 487
    if-lez p6, :cond_1

    .line 488
    const v1, 0x7f0c00cd

    new-array v2, v4, [Ljava/lang/Object;

    mul-int/lit8 v3, p7, 0x64

    div-int/2addr v3, p6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 493
    :goto_1
    const v2, 0x7f0700b7

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 494
    if-ne p1, v4, :cond_2

    const v1, 0x1080081

    .line 496
    :goto_2
    const v2, 0x7f0700b6

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 498
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 499
    iput v1, v2, Landroid/app/Notification;->icon:I

    .line 500
    iput-object p3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 501
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 502
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 512
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/CancelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "invalidscheme"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "invalidauthority"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "job_id"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "display_name"

    invoke-virtual {v1, v3, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 519
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 521
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 522
    return-object v2

    :cond_0
    move v2, v5

    .line 484
    goto :goto_0

    .line 491
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 494
    :cond_2
    const v1, 0x1080088

    goto :goto_2
.end method

.method private getAppropriateDestination(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter "destDirectory"

    .prologue
    .line 603
    const/4 v6, 0x0

    .line 607
    .local v6, fileIndexDigit:I
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMaximum:I

    move v13, v0

    .local v13, tmp:I
    :goto_0
    if-lez v13, :cond_0

    .line 608
    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v13, v13, 0xa

    goto :goto_0

    .line 613
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "%s%0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "d%s"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, bodyFormat:Ljava/lang/String;
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 618
    .local v11, possibleBody:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x8

    if-gt v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_2

    .line 619
    :cond_1
    const-string v14, "VCardService"

    const-string v15, "This code does not allow any long file name."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const v14, 0x7f0c00d4

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "%s.%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    .line 622
    const-string v14, "VCardService"

    const-string v15, "File name becomes too long."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v14, 0x0

    .line 656
    :goto_1
    return-object v14

    .line 627
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMinimum:I

    move v7, v0

    .local v7, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMaximum:I

    move v14, v0

    if-gt v7, v14, :cond_7

    .line 628
    const/4 v9, 0x1

    .line 629
    .local v9, numberIsAvailable:Z
    const/4 v3, 0x0

    .line 630
    .local v3, body:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 631
    .local v12, possibleExtension:Ljava/lang/String;
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 632
    const-string v14, "%s/%s.%s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    const/16 v16, 0x1

    aput-object v3, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 634
    .local v10, path:Ljava/lang/String;
    monitor-enter p0

    .line 635
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    move-object v14, v0

    invoke-interface {v14, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 637
    const-string v14, "VCardService"

    const-string v15, "The path %s is reserved."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v10, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v9, 0x0

    .line 640
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    .end local v10           #path:Ljava/lang/String;
    .end local v12           #possibleExtension:Ljava/lang/String;
    :cond_4
    :goto_3
    if-eqz v9, :cond_6

    .line 650
    const-string v14, "%s/%s.%s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    const/16 v16, 0x1

    aput-object v3, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 642
    .restart local v10       #path:Ljava/lang/String;
    .restart local v12       #possibleExtension:Ljava/lang/String;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 645
    const/4 v9, 0x0

    .line 646
    goto :goto_3

    .line 642
    .end local v5           #file:Ljava/io/File;
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 627
    .end local v10           #path:Ljava/lang/String;
    .end local v12           #possibleExtension:Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 654
    .end local v3           #body:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #numberIsAvailable:Z
    :cond_7
    const-string v14, "VCardService"

    const-string v15, "Reached vCard number limit. Maybe there are too many vCard in the storage"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const v14, 0x7f0c00d3

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    .line 656
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private declared-synchronized handleCancelRequest(Lcom/android/contacts/vcard/CancelRequest;)V
    .locals 11
    .parameter "request"

    .prologue
    const/4 v10, 0x1

    .line 302
    monitor-enter p0

    :try_start_0
    iget v1, p1, Lcom/android/contacts/vcard/CancelRequest;->jobId:I

    .line 303
    .local v1, jobId:I
    const-string v5, "VCardService"

    const-string v6, "Received cancel request. (id: %d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/vcard/ProcessorBase;

    .line 306
    .local v4, processor:Lcom/android/contacts/vcard/ProcessorBase;
    if-eqz v4, :cond_2

    .line 307
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ProcessorBase;->cancel(Z)Z

    .line 308
    invoke-virtual {v4}, Lcom/android/contacts/vcard/ProcessorBase;->getType()I

    move-result v5

    if-ne v5, v10, :cond_1

    const v5, 0x7f0c00c6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/android/contacts/vcard/CancelRequest;->displayName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 311
    .local v0, description:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Lcom/android/contacts/vcard/VCardService;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v2

    .line 312
    .local v2, notification:Landroid/app/Notification;
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 313
    invoke-virtual {v4}, Lcom/android/contacts/vcard/ProcessorBase;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 314
    check-cast v4, Lcom/android/contacts/vcard/ExportProcessor;

    .end local v4           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-virtual {v4}, Lcom/android/contacts/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/vcard/ExportRequest;

    move-result-object v5

    iget-object v5, v5, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, path:Ljava/lang/String;
    const-string v5, "VCardService"

    const-string v6, "Cancel reservation for the path %s if appropriate"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 319
    const-string v5, "VCardService"

    const-string v6, "Not reserved."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0           #description:Ljava/lang/String;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 308
    .restart local v4       #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :cond_1
    const v5, 0x7f0c00d6

    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/android/contacts/vcard/CancelRequest;->displayName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 323
    :cond_2
    const-string v5, "VCardService"

    const-string v6, "Tried to remove unknown job (id: %d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 302
    .end local v1           #jobId:I
    .end local v4           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized handleExportRequest(Lcom/android/contacts/vcard/ExportRequest;)V
    .locals 10
    .parameter "request"

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/contacts/vcard/ExportProcessor;

    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-direct {v0, p0, p1, v1}, Lcom/android/contacts/vcard/ExportProcessor;-><init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ExportRequest;I)V

    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/VCardService;->tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p1, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, displayName:Ljava/lang/String;
    const v0, 0x7f0c00ca

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, message:Ljava/lang/String;
    iget-object v0, p1, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v9

    .line 264
    .local v9, path:Ljava/lang/String;
    const-string v0, "VCardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reserve the path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const-string v0, "VCardService"

    const-string v1, "The path %s is already reserved. Reject export request"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const v0, 0x7f0c00cb

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .end local v2           #message:Ljava/lang/String;
    .end local v5           #displayName:Ljava/lang/String;
    .end local v9           #path:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 274
    .restart local v2       #message:Ljava/lang/String;
    .restart local v5       #displayName:Ljava/lang/String;
    .restart local v9       #path:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    const/4 v1, 0x2

    iget v4, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, v2

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/vcard/VCardService;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 278
    .local v8, notification:Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-virtual {v0, v1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 279
    iget v0, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    .end local v2           #message:Ljava/lang/String;
    .end local v5           #displayName:Ljava/lang/String;
    .end local v8           #notification:Landroid/app/Notification;
    .end local v9           #path:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 281
    :cond_1
    const v0, 0x7f0c00cb

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized handleImportRequest(Lcom/android/contacts/vcard/ImportRequest;)V
    .locals 10
    .parameter "request"

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    const-string v0, "VCardService"

    const-string v1, "received import request (uri: %s, originalUri: %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v6, p1, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget-object v6, p1, Lcom/android/contacts/vcard/ImportRequest;->originalUri:Landroid/net/Uri;

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Lcom/android/contacts/vcard/ImportProcessor;

    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-direct {v0, p0, p1, v1}, Lcom/android/contacts/vcard/ImportProcessor;-><init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ImportRequest;I)V

    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/VCardService;->tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p1, Lcom/android/contacts/vcard/ImportRequest;->originalUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, lastPathSegment:Ljava/lang/String;
    const-string v0, "file"

    iget-object v1, p1, Lcom/android/contacts/vcard/ImportRequest;->originalUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    .line 232
    move-object v5, v8

    .line 233
    .local v5, displayName:Ljava/lang/String;
    const v0, 0x7f0c00c7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, message:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 243
    const/4 v1, 0x1

    iget v4, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, v2

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/vcard/VCardService;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v9

    .line 247
    .local v9, notification:Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-virtual {v0, v1, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 248
    iget v0, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v2           #message:Ljava/lang/String;
    .end local v5           #displayName:Ljava/lang/String;
    .end local v8           #lastPathSegment:Ljava/lang/String;
    .end local v9           #notification:Landroid/app/Notification;
    :goto_1
    monitor-exit p0

    return-void

    .line 235
    .restart local v8       #lastPathSegment:Ljava/lang/String;
    :cond_0
    const v0, 0x7f0c00cc

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 236
    .restart local v5       #displayName:Ljava/lang/String;
    const v0, 0x7f0c00c8

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #message:Ljava/lang/String;
    goto :goto_0

    .line 252
    .end local v2           #message:Ljava/lang/String;
    .end local v5           #displayName:Ljava/lang/String;
    .end local v8           #lastPathSegment:Ljava/lang/String;
    :cond_1
    const v0, 0x7f0c00c9

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleRequestAvailableExportDestination(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    const-string v4, "VCardService"

    const-string v5, "Received available export destination request."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 331
    .local v2, messenger:Landroid/os/Messenger;
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mTargetDirectory:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/contacts/vcard/VCardService;->getAppropriateDestination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 334
    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 342
    .local v1, message:Landroid/os/Message;
    :goto_0
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    :goto_1
    monitor-exit p0

    return-void

    .line 337
    .end local v1           #message:Landroid/os/Message;
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x5

    const v6, 0x7f070016

    const/4 v7, 0x0

    :try_start_2
    iget-object v8, p0, Lcom/android/contacts/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #message:Landroid/os/Message;
    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "VCardService"

    const-string v5, "Failed to send reply for available export destination request."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 329
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #message:Landroid/os/Message;
    .end local v2           #messenger:Landroid/os/Messenger;
    .end local v3           #path:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private initExporterParams()V
    .locals 9

    .prologue
    .line 178
    const v7, 0x7f0c0002

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mTargetDirectory:Ljava/lang/String;

    .line 179
    const v7, 0x7f0c0003

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    .line 180
    const v7, 0x7f0c0004

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    .line 181
    const v7, 0x7f0c0005

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    .line 183
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    .line 184
    iget-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    iget-object v8, p0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    const v7, 0x7f0c0006

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, additionalExtensions:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 189
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 190
    .local v2, extension:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, trimed:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 192
    iget-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #extension:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #trimed:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 198
    .local v5, resources:Landroid/content/res/Resources;
    const v7, 0x7f090002

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMinimum:I

    .line 199
    const v7, 0x7f090003

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMaximum:I

    .line 200
    return-void
.end method

.method private declared-synchronized removeConnectionClient(Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    const-string v0, "VCardService"

    const-string v1, "Removing custom MediaScannerConnectionClient."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 399
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopServiceIfAppropriate()V
    .locals 9

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 355
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 356
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 357
    .local v2, jobId:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/vcard/ProcessorBase;

    .line 358
    .local v3, processor:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-virtual {v3}, Lcom/android/contacts/vcard/ProcessorBase;->isDone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 354
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #jobId:I
    .end local v3           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 361
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #jobId:I
    .restart local v3       #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :cond_0
    :try_start_1
    const-string v4, "VCardService"

    const-string v5, "Found unfinished job (id: %d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #jobId:I
    .end local v3           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :goto_1
    monitor-exit p0

    return-void

    .line 367
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 368
    const-string v4, "VCardService"

    const-string v5, "MediaScanner update is in progress."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 372
    :cond_2
    const-string v4, "VCardService"

    const-string v5, "No unfinished job. Stop this service."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 374
    invoke-virtual {p0}, Lcom/android/contacts/vcard/VCardService;->stopSelf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z
    .locals 3
    .parameter "processor"

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 293
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    const/4 v1, 0x1

    .line 297
    :goto_0
    monitor-exit p0

    return v1

    .line 295
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 296
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    const-string v1, "VCardService"

    const-string v2, "Failed to excetute a job."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    const/4 v1, 0x0

    goto :goto_0

    .line 292
    .end local v0           #e:Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method declared-synchronized handleFinishExportNotification(IZ)V
    .locals 7
    .parameter "jobId"
    .parameter "successful"

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    const-string v2, "VCardService"

    const-string v3, "Received vCard export finish notification (id: %d). Result: %b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    const-string v6, "success"

    :goto_0
    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/vcard/ProcessorBase;

    .line 421
    .local v0, job:Lcom/android/contacts/vcard/ProcessorBase;
    if-nez v0, :cond_1

    .line 422
    const-string v2, "VCardService"

    const-string v3, "Tried to remove unknown job (id: %d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v0           #job:Lcom/android/contacts/vcard/ProcessorBase;
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p0

    return-void

    .line 417
    :cond_0
    :try_start_1
    const-string v6, "failure"

    goto :goto_0

    .line 423
    .restart local v0       #job:Lcom/android/contacts/vcard/ProcessorBase;
    :cond_1
    instance-of v2, v0, Lcom/android/contacts/vcard/ExportProcessor;

    if-nez v2, :cond_2

    .line 424
    const-string v2, "VCardService"

    const-string v3, "Removed job (id: %s) isn\'t ExportProcessor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 417
    .end local v0           #job:Lcom/android/contacts/vcard/ProcessorBase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 427
    .restart local v0       #job:Lcom/android/contacts/vcard/ProcessorBase;
    :cond_2
    :try_start_2
    check-cast v0, Lcom/android/contacts/vcard/ExportProcessor;

    .end local v0           #job:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-virtual {v0}, Lcom/android/contacts/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/vcard/ExportRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, path:Ljava/lang/String;
    const-string v2, "VCardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove reserved path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized handleFinishImportNotification(IZ)V
    .locals 5
    .parameter "jobId"
    .parameter "successful"

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    const-string v0, "VCardService"

    const-string v1, "Received vCard import finish notification (id: %d). Result: %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    const-string v4, "success"

    :goto_0
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 409
    const-string v0, "VCardService"

    const-string v1, "Tried to remove unknown job (id: %d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    .line 405
    :cond_1
    :try_start_1
    const-string v4, "failure"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 172
    const-string v0, "VCardService"

    const-string v1, "vCard Service is being created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/VCardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 174
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->initExporterParams()V

    .line 175
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "VCardService"

    const-string v1, "VCardService is being destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->cancelAllRequestsAndShutdown()V

    .line 216
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->clearCache()V

    .line 217
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 218
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "id"

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized updateMediaScanner(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    const-string v1, "VCardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaScanner is being updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    const-string v1, "VCardService"

    const-string v2, "MediaScanner update is requested after executor\'s being shut down. Ignoring the update request"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :goto_0
    monitor-exit p0

    return-void

    .line 387
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;-><init>(Lcom/android/contacts/vcard/VCardService;Ljava/lang/String;)V

    .line 389
    .local v0, client:Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {v0}, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    .end local v0           #client:Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
