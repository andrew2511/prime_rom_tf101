.class public Lcom/google/android/youtube/app/c2dm/C2dmReceiverService;
.super Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;
.source "C2dmReceiverService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;-><init>()V

    return-void
.end method

.method private createNotification(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/high16 v9, 0x7f0d

    const/4 v8, 0x0

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 58
    .local v4, when:J
    new-instance v2, Landroid/app/Notification;

    const v6, 0x7f020079

    invoke-virtual {p0, v9}, Lcom/google/android/youtube/app/c2dm/C2dmReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 63
    .local v2, notification:Landroid/app/Notification;
    const/4 v1, 0x0

    .line 64
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p1, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 68
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0, v9}, Lcom/google/android/youtube/app/c2dm/C2dmReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0d00e2

    invoke-virtual {p0, v7}, Lcom/google/android/youtube/app/c2dm/C2dmReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, p1, v6, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 72
    const/4 v6, -0x1

    iput v6, v2, Landroid/app/Notification;->defaults:I

    .line 74
    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 76
    .local v3, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v3, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 36
    const-string v0, "Device registration error"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription registration error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 39
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    const-string v1, "ok"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, mockOk:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/c2dm/C2dmReceiverService;->createNotification(Landroid/content/Context;)V

    .line 50
    :cond_0
    return-void
.end method

.method public onRegistered(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    return-void
.end method

.method public onUnregistered(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    return-void
.end method
