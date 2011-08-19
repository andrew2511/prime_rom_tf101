.class public abstract Lcom/asus/cm/CMDownloadProgress;
.super Ljava/lang/Object;
.source "CMDownloadProgress.java"


# static fields
.field static final DM_DL_PROGRESS_NOTIFY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DMDownloadProgress"

.field protected static dmDLNotify:Landroid/app/Notification;


# instance fields
.field protected current_percentage:I

.field protected dmDLRmView:Landroid/widget/RemoteViews;

.field protected mService:Lcom/asus/cm/CMService;

.field protected notifyMgr:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/cm/CMDownloadProgress;->current_percentage:I

    return-void
.end method

.method private doDMDLNotify(II)V
    .locals 4
    .parameter "max"
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    .line 59
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    sput-object v1, Lcom/asus/cm/CMDownloadProgress;->dmDLNotify:Landroid/app/Notification;

    .line 60
    sget-object v1, Lcom/asus/cm/CMDownloadProgress;->dmDLNotify:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 62
    iget-object v1, p0, Lcom/asus/cm/CMDownloadProgress;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v1}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 71
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0, p1, p2, v0}, Lcom/asus/cm/CMDownloadProgress;->createNotifyBody(IILandroid/app/PendingIntent;)V

    .line 73
    iget-object v1, p0, Lcom/asus/cm/CMDownloadProgress;->notifyMgr:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    sget-object v3, Lcom/asus/cm/CMDownloadProgress;->dmDLNotify:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">>> Notify <<<"

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static getDMDownloadProgress(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMDownloadProgress;
    .locals 6
    .parameter "pService"

    .prologue
    .line 23
    const/4 v2, 0x0

    .line 25
    .local v2, ret:Lcom/asus/cm/CMDownloadProgress;
    :try_start_0
    const-string v3, "DMDownloadProgress"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new Class: com.asus.cm."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/cm/CMConfig;->getProgressClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.asus.cm."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/asus/cm/CMConfig;->getProgressClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/asus/cm/CMDownloadProgress;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 37
    :goto_0
    if-nez v2, :cond_0

    .line 38
    const-string v3, "DMDownloadProgress"

    const-string v4, "mDMProgress == null --> use default progress bar."

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v2, Lcom/asus/cm/DefaultNotify;

    .end local v2           #ret:Lcom/asus/cm/CMDownloadProgress;
    invoke-direct {v2}, Lcom/asus/cm/DefaultNotify;-><init>()V

    .line 41
    .restart local v2       #ret:Lcom/asus/cm/CMDownloadProgress;
    :cond_0
    iput-object p0, v2, Lcom/asus/cm/CMDownloadProgress;->mService:Lcom/asus/cm/CMService;

    .line 42
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    iput-object p0, v2, Lcom/asus/cm/CMDownloadProgress;->notifyMgr:Landroid/app/NotificationManager;

    .line 43
    return-object v2

    .line 27
    .restart local p0
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 29
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v3, "DMDownloadProgress"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalAccessException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 32
    .local v1, e:Ljava/lang/InstantiationException;
    const-string v3, "DMDownloadProgress"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InstantiationException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 35
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v3, "DMDownloadProgress"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClassNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelProgressNotification()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/asus/cm/CMDownloadProgress;->notifyMgr:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/cm/CMDownloadProgress;->dmDLNotify:Landroid/app/Notification;

    .line 100
    return-void
.end method

.method abstract createNotifyBody(IILandroid/app/PendingIntent;)V
.end method

.method public execDownloadProgressCallback(II)V
    .locals 1
    .parameter "pCurrent"
    .parameter "pTotal"

    .prologue
    .line 89
    sget-object v0, Lcom/asus/cm/CMDownloadProgress;->dmDLNotify:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/cm/CMDownloadProgress;->dmDLRmView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    .line 90
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/asus/cm/CMDownloadProgress;->doDMDLNotify(II)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/asus/cm/CMDownloadProgress;->updtetProgress(II)V

    goto :goto_0
.end method

.method abstract updtetProgress(II)V
.end method
