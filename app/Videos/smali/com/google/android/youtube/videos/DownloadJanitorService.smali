.class public Lcom/google/android/youtube/videos/DownloadJanitorService;
.super Landroid/app/Service;
.source "DownloadJanitorService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/youtube/core/transfer/TransferService$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/DownloadJanitorService$AlarmReceiver;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final AUTH_TOKEN_TYPE:Ljava/lang/String; = "youtube"

.field private static final MININUM_FILE_SIZE_BYTES:I = 0x40000


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

.field private downloadServiceBound:Z

.field private drmManager:Lcom/google/android/youtube/videos/DrmManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/DownloadJanitorService;->scanFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/DownloadJanitorService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->doUnbindService()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/DownloadJanitorService;)Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    return-object v0
.end method

.method private cancelRestart()V
    .locals 2

    .prologue
    .line 130
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/DownloadJanitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 131
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService$AlarmReceiver;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 132
    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/DownloadJanitorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private doBindService()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 201
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadServiceBound:Z

    if-nez v0, :cond_0

    .line 202
    invoke-static {p0}, Lcom/google/android/youtube/core/transfer/DownloadService;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p0, v1}, Lcom/google/android/youtube/videos/DownloadJanitorService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 203
    iput-boolean v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadServiceBound:Z

    .line 205
    :cond_0
    return-void
.end method

.method private doUnbindService()V
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadServiceBound:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 210
    invoke-virtual {p0, p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadServiceBound:Z

    .line 213
    :cond_0
    return-void
.end method

.method private getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 7
    .parameter "username"

    .prologue
    .line 191
    iget-object v5, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->accountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 192
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 193
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 197
    .end local v0           #account:Landroid/accounts/Account;
    :goto_1
    return-object v5

    .line 192
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private scanFile(Ljava/lang/String;)V
    .locals 11
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 136
    invoke-static {p1}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getUserFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, username:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/DownloadJanitorService;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 139
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " removed, removing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 141
    iget-object v8, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v8, p1}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransfer(Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v8, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->accountManager:Landroid/accounts/AccountManager;

    const-string v9, "youtube"

    invoke-virtual {v8, v0, v9, v10}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, authToken:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to fetch authToken for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    new-instance v5, Lcom/google/android/youtube/core/model/UserAuth;

    invoke-direct {v5, v6, v1}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v5, userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    invoke-static {p1}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, videoId:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 156
    .local v4, uri:Landroid/net/Uri;
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 157
    .local v3, requestComplete:Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Lcom/google/android/youtube/core/model/Stream;

    invoke-direct {v8, v4}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;)V

    invoke-static {v8, v7, v5, v10}, Lcom/google/android/youtube/videos/DrmRequest;->createOfflineRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Z)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v2

    .line 159
    .local v2, drmRequest:Lcom/google/android/youtube/videos/DrmRequest;
    iget-object v8, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    new-instance v9, Lcom/google/android/youtube/videos/DownloadJanitorService$2;

    invoke-direct {v9, p0, p1, v3}, Lcom/google/android/youtube/videos/DownloadJanitorService$2;-><init>(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v8, v2, v9}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 187
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_0
.end method

.method private scheduleRestart()V
    .locals 6

    .prologue
    .line 124
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/DownloadJanitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 125
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x55d4a80

    add-long/2addr v2, v4

    invoke-static {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService$AlarmReceiver;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosApplication;

    .line 66
    .local v0, application:Lcom/google/android/youtube/videos/VideosApplication;
    invoke-virtual {v0}, Lcom/google/android/youtube/videos/VideosApplication;->getDrmManager()Lcom/google/android/youtube/videos/DrmManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    .line 67
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->accountManager:Landroid/accounts/AccountManager;

    .line 68
    const-string v1, "Janitor starting"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->scheduleRestart()V

    .line 70
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->doBindService()V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->getSnapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->cancelRestart()V

    .line 120
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 121
    return-void
.end method

.method public onProgress(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 0
    .parameter "download"

    .prologue
    .line 231
    return-void
.end method

.method public onRemoved(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 1
    .parameter "download"

    .prologue
    .line 234
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->deleteFile(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onRestored()V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->getSnapshot()Ljava/util/Map;

    move-result-object v0

    .line 86
    .local v0, snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer;>;"
    new-instance v1, Lcom/google/android/youtube/videos/DownloadJanitorService$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/videos/DownloadJanitorService$1;-><init>(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->start()V

    .line 112
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "serviceBinder"

    .prologue
    .line 216
    check-cast p2, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .end local p2
    iput-object p2, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->addTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 218
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .line 222
    return-void
.end method

.method public onSize(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 0
    .parameter "download"

    .prologue
    .line 225
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 75
    const/4 v0, 0x2

    return v0
.end method

.method public onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 0
    .parameter "download"

    .prologue
    .line 228
    return-void
.end method
