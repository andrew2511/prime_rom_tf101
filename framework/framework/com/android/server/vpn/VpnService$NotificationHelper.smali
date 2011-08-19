.class Lcom/android/server/vpn/VpnService$NotificationHelper;
.super Ljava/lang/Object;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vpn/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationHelper"
.end annotation


# instance fields
.field private mConnectedTitle:Ljava/lang/String;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/vpn/VpnService;


# direct methods
.method private constructor <init>(Lcom/android/server/vpn/VpnService;)V
    .registers 8
    .parameter

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    const/4 v5, 0x0

    .line 403
    iput-object p1, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v0, v0, Lcom/android/server/vpn/VpnService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 406
    new-instance v0, Landroid/app/Notification;

    const v1, 0x108059f

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->mNotification:Landroid/app/Notification;

    .line 408
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v0, v0, Lcom/android/server/vpn/VpnService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/net/vpn/VpnManager;

    iget-object v2, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v2, v2, Lcom/android/server/vpn/VpnService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/net/vpn/VpnManager;->createSettingsActivityIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vpn/VpnService;Lcom/android/server/vpn/VpnService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnService$NotificationHelper;-><init>(Lcom/android/server/vpn/VpnService;)V

    return-void
.end method

.method private enableNotification(Landroid/app/Notification;)V
    .registers 4
    .parameter "n"

    .prologue
    .line 447
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 448
    return-void
.end method

.method private getConnectedNotificationMessage(J)Ljava/lang/String;
    .registers 5
    .parameter "now"

    .prologue
    .line 469
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->mStartTime:J
    invoke-static {v0}, Lcom/android/server/vpn/VpnService;->access$200(Lcom/android/server/vpn/VpnService;)J

    move-result-wide v0

    sub-long v0, p1, v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getFormattedTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDisconnectedNotificationMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 473
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v0, v0, Lcom/android/server/vpn/VpnService;->mContext:Landroid/content/Context;

    const v1, 0x10403f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFormattedTime(I)Ljava/lang/String;
    .registers 8
    .parameter "duration"

    .prologue
    .line 460
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    div-int/lit16 v0, p1, 0xe10

    .line 461
    .local v0, hours:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v1, sb:Ljava/lang/StringBuilder;
    if-lez v0, :cond_12

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    :cond_12
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    rem-int/lit16 v5, p1, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-int/lit8 v5, p1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getNotificationTitle(Z)Ljava/lang/String;
    .registers 6
    .parameter "connected"

    .prologue
    .line 451
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    if-eqz p1, :cond_21

    iget-object v1, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v1, v1, Lcom/android/server/vpn/VpnService;->mContext:Landroid/content/Context;

    const v2, 0x10403f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 456
    .local v0, formatString:Ljava/lang/String;
    :goto_e
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v3, v3, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v3}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 451
    .end local v0           #formatString:Ljava/lang/String;
    :cond_21
    iget-object v1, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v1, v1, Lcom/android/server/vpn/VpnService;->mContext:Landroid/content/Context;

    const v2, 0x10403f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_e
.end method


# virtual methods
.method disableNotification()V
    .registers 3

    .prologue
    .line 443
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 444
    return-void
.end method

.method showDisconnect()V
    .registers 6

    .prologue
    .line 431
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getNotificationTitle(Z)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, title:Ljava/lang/String;
    new-instance v0, Landroid/app/Notification;

    const v2, 0x10805a0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 434
    .local v0, n:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v2, v2, Lcom/android/server/vpn/VpnService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getDisconnectedNotificationMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 437
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 438
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->disableNotification()V

    .line 439
    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->enableNotification(Landroid/app/Notification;)V

    .line 440
    return-void
.end method

.method update(J)V
    .registers 8
    .parameter "now"

    .prologue
    .line 414
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->mNotification:Landroid/app/Notification;

    .line 415
    .local v0, n:Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->mStartTime:J
    invoke-static {v1}, Lcom/android/server/vpn/VpnService;->access$200(Lcom/android/server/vpn/VpnService;)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_3c

    .line 417
    iget-object v1, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->mStartTime:J
    invoke-static {v1}, Lcom/android/server/vpn/VpnService;->access$200(Lcom/android/server/vpn/VpnService;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 418
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getNotificationTitle(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->mConnectedTitle:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 422
    :goto_1d
    iget-object v1, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v1, v1, Lcom/android/server/vpn/VpnService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->mConnectedTitle:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getConnectedNotificationMessage(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 425
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 426
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 427
    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->enableNotification(Landroid/app/Notification;)V

    .line 428
    return-void

    .line 420
    :cond_3c
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_1d
.end method
