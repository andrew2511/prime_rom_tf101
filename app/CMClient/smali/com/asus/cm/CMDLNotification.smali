.class public Lcom/asus/cm/CMDLNotification;
.super Ljava/lang/Object;
.source "CMDLNotification.java"


# static fields
.field static final ACTION_SHOW_CONFIRM_DOWNLOAD:Ljava/lang/String; = "com.asus.dm.DMService.showConfirmDownload"

.field private static final NOTIFICATION_ID:I = 0x2063d92


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 51
    .local v0, manager:Landroid/app/NotificationManager;
    const v1, 0x2063d92

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 52
    return-void
.end method

.method public static createNotification(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "notificationUser"

    .prologue
    .line 28
    const v5, 0x7f060016

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, tickerText:Ljava/lang/String;
    const v5, 0x7f060004

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, title:Ljava/lang/String;
    const v5, 0x7f060017

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, message:Ljava/lang/String;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 35
    .local v0, manager:Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 36
    .local v2, notification:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 37
    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 38
    const v5, 0x1080082

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 39
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 41
    invoke-static {p0}, Lcom/asus/cm/CMDLNotification;->createPendingDialog(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget v5, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, -0x1

    iput v5, v2, Landroid/app/Notification;->defaults:I

    .line 45
    :cond_0
    const v5, 0x2063d92

    invoke-virtual {v0, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 46
    return-void
.end method

.method private static createPendingDialog(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/cm/CMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.asus.dm.DMService.showConfirmDownload"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method
