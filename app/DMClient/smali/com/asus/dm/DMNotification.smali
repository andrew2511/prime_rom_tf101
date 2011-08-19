.class public Lcom/asus/dm/DMNotification;
.super Ljava/lang/Object;
.source "DMNotification.java"


# static fields
.field static final ACTION_SHOW_CONFIRM_UPDATE:Ljava/lang/String; = "com.asus.dm.DMService.showConfirmUpdate"

.field private static final NOTIFICATION_ID:I = 0x2063d93


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 50
    .local v0, manager:Landroid/app/NotificationManager;
    const v1, 0x2063d93

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 51
    return-void
.end method

.method public static createNotification(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "notificationUser"

    .prologue
    .line 27
    const v5, 0x7f06002d

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, tickerText:Ljava/lang/String;
    const v5, 0x7f060027

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, title:Ljava/lang/String;
    const v5, 0x7f060028

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, message:Ljava/lang/String;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 34
    .local v0, manager:Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 35
    .local v2, notification:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 36
    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 37
    const v5, 0x1080082

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 38
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 40
    invoke-static {p0}, Lcom/asus/dm/DMNotification;->createPendingDialog(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    iget v5, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, -0x1

    iput v5, v2, Landroid/app/Notification;->defaults:I

    .line 44
    :cond_0
    const v5, 0x2063d93

    invoke-virtual {v0, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 45
    return-void
.end method

.method private static createPendingDialog(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/dm/DMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.asus.dm.DMService.showConfirmUpdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method
