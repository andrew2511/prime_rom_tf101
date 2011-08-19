.class Lcom/android/providers/downloads/RealSystemFacade;
.super Ljava/lang/Object;
.source "RealSystemFacade.java"

# interfaces
.implements Lcom/android/providers/downloads/SystemFacade;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    .line 24
    return-void
.end method


# virtual methods
.method public cancelAllNotifications()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 102
    return-void
.end method

.method public cancelNotification(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 97
    return-void
.end method

.method public currentTimeMillis()J
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveNetworkType()Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 31
    iget-object v2, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 33
    .local v1, connectivity:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 34
    const-string v2, "DownloadManager"

    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 45
    :goto_0
    return-object v2

    .line 38
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 39
    .local v0, activeInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_2

    .line 40
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_1

    .line 41
    const-string v2, "DownloadManager"

    const-string v3, "network is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v4

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method public getMaxBytesOverMobile()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/DownloadManager;->getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedMaxBytesOverMobile()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/DownloadManager;->getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkRoaming()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 49
    iget-object v4, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 52
    const-string v4, "DownloadManager"

    const-string v5, "couldn\'t get connectivity manager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 62
    :goto_0
    return v4

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 57
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_2

    move v2, v7

    .line 58
    .local v2, isMobile:Z
    :goto_1
    if-eqz v2, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v7

    .line 59
    .local v3, isRoaming:Z
    :goto_2
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 60
    const-string v4, "DownloadManager"

    const-string v5, "network is roaming"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v3

    .line 62
    goto :goto_0

    .end local v2           #isMobile:Z
    .end local v3           #isRoaming:Z
    :cond_2
    move v2, v6

    .line 57
    goto :goto_1

    .restart local v2       #isMobile:Z
    :cond_3
    move v3, v6

    .line 58
    goto :goto_2
.end method

.method public postNotification(JLandroid/app/Notification;)V
    .locals 2
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 92
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public startThread(Ljava/lang/Thread;)V
    .locals 0
    .parameter "thread"

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 107
    return-void
.end method

.method public userOwnsPackage(ILjava/lang/String;)Z
    .locals 2
    .parameter "uid"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
