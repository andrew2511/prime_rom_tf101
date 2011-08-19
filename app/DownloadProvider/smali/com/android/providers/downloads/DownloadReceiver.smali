.class public Lcom/android/providers/downloads/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# instance fields
.field mSystemFacade:Lcom/android/providers/downloads/SystemFacade;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    return-void
.end method

.method private handleNotificationBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, action:Ljava/lang/String;
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "android.intent.action.DOWNLOAD_OPEN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver open for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 95
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_3

    .line 114
    :goto_1
    return-void

    .line 87
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v0, "android.intent.action.DOWNLOAD_LIST"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    const-string v0, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver list for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver hide for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 112
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 103
    :cond_4
    :try_start_1
    const-string v0, "android.intent.action.DOWNLOAD_OPEN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    invoke-direct {p0, p1, v7}, Lcom/android/providers/downloads/DownloadReceiver;->openDownload(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 105
    invoke-direct {p0, p1, v1, v7}, Lcom/android/providers/downloads/DownloadReceiver;->hideNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 106
    :cond_5
    :try_start_2
    const-string v0, "android.intent.action.DOWNLOAD_LIST"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    invoke-direct {p0, p2, v7}, Lcom/android/providers/downloads/DownloadReceiver;->sendNotificationClickedIntent(Landroid/content/Intent;Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 112
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 109
    :cond_6
    :try_start_3
    invoke-direct {p0, p1, v1, v7}, Lcom/android/providers/downloads/DownloadReceiver;->hideNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private hideNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 122
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/android/providers/downloads/SystemFacade;->cancelNotification(J)V

    .line 124
    const-string v5, "status"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 125
    .local v1, statusColumn:I
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 126
    .local v0, status:I
    const-string v5, "visibility"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 128
    .local v4, visibilityColumn:I
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 129
    .local v3, visibility:I
    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 131
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "visibility"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p2, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private openDownload(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 143
    const-string v5, "_data"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, filename:Ljava/lang/String;
    const-string v5, "mimetype"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, mimetype:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 148
    .local v4, path:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 149
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 152
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, activityIntent:Landroid/content/Intent;
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no activity for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendNotificationClickedIntent(Landroid/content/Intent;Landroid/database/Cursor;)V
    .locals 11
    .parameter "intent"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 168
    const-string v6, "notificationpackage"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, pckg:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string v6, "notificationclass"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, clazz:Ljava/lang/String;
    const-string v6, "is_public_api"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    move v4, v7

    .line 179
    .local v4, isPublicApi:Z
    :goto_1
    const/4 v0, 0x0

    .line 180
    .local v0, appIntent:Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 181
    new-instance v0, Landroid/content/Intent;

    .end local v0           #appIntent:Landroid/content/Intent;
    const-string v6, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v0       #appIntent:Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v6, "multiple"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 208
    :goto_2
    iget-object v6, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v6, v0}, Lcom/android/providers/downloads/SystemFacade;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #appIntent:Landroid/content/Intent;
    .end local v4           #isPublicApi:Z
    :cond_2
    move v4, v10

    .line 176
    goto :goto_1

    .line 189
    .restart local v0       #appIntent:Landroid/content/Intent;
    .restart local v4       #isPublicApi:Z
    :cond_3
    const-string v6, "extra_click_download_ids"

    new-array v7, v7, [J

    const-string v8, "_id"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v7, v10

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_2

    .line 194
    :cond_4
    if-eqz v1, :cond_0

    .line 197
    new-instance v0, Landroid/content/Intent;

    .end local v0           #appIntent:Landroid/content/Intent;
    const-string v6, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .restart local v0       #appIntent:Landroid/content/Intent;
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v6, "multiple"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 200
    sget-object v6, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 202
    :cond_5
    const-string v6, "_id"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 203
    .local v2, downloadId:J
    sget-object v6, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private startService(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/downloads/DownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 213
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    if-nez v2, :cond_0

    .line 47
    new-instance v2, Lcom/android/providers/downloads/RealSystemFacade;

    invoke-direct {v2, p1}, Lcom/android/providers/downloads/RealSystemFacade;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_1

    .line 53
    const-string v2, "DownloadManager"

    const-string v3, "Received broadcast intent for android.intent.action.BOOT_COMPLETED"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadReceiver;->startService(Landroid/content/Context;)V

    .line 76
    :cond_2
    :goto_0
    return-void

    .line 57
    :cond_3
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 58
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_4

    .line 59
    const-string v2, "DownloadManager"

    const-string v3, "Received broadcast intent for android.intent.action.MEDIA_MOUNTED"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_0

    .line 63
    :cond_5
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 64
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 66
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_6
    const-string v2, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 70
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_0

    .line 71
    :cond_7
    const-string v2, "android.intent.action.DOWNLOAD_OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "android.intent.action.DOWNLOAD_LIST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "android.intent.action.DOWNLOAD_HIDE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadReceiver;->handleNotificationBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
