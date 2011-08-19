.class Landroid/webkit/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/Network$1;,
        Landroid/webkit/Network$RoamingMonitor;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "network"

.field private static sNetwork:Landroid/webkit/Network;

.field private static sPlatformNotificationEnableRefCount:I

.field private static sPlatformNotifications:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandlerImpl;

.field private mProxyPassword:Ljava/lang/String;

.field private mProxyUsername:Ljava/lang/String;

.field private mRequestQueue:Landroid/net/http/RequestQueue;

.field private mRoaming:Z

.field private mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

.field private mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Landroid/webkit/Network;->mContext:Landroid/content/Context;

    .line 160
    new-instance v0, Landroid/webkit/SslErrorHandlerImpl;

    invoke-direct {v0}, Landroid/webkit/SslErrorHandlerImpl;-><init>()V

    iput-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    .line 161
    new-instance v0, Landroid/webkit/HttpAuthHandlerImpl;

    invoke-direct {v0, p0}, Landroid/webkit/HttpAuthHandlerImpl;-><init>(Landroid/webkit/Network;)V

    iput-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandlerImpl;

    .line 163
    new-instance v0, Landroid/net/http/RequestQueue;

    invoke-direct {v0, p1}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 164
    return-void
.end method

.method static synthetic access$002(Landroid/webkit/Network;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Landroid/webkit/Network;->mRoaming:Z

    return p1
.end method

.method public static disablePlatformNotifications()V
    .registers 2

    .prologue
    .line 140
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-nez v0, :cond_18

    .line 141
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_19

    .line 142
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->disablePlatformNotifications()V

    .line 143
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    invoke-direct {v0}, Landroid/webkit/Network;->stopMonitoringRoaming()V

    .line 148
    :cond_18
    :goto_18
    return-void

    .line 145
    :cond_19
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_18
.end method

.method public static enablePlatformNotifications()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 125
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-ne v0, v1, :cond_19

    .line 126
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_1a

    .line 127
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->enablePlatformNotifications()V

    .line 128
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    invoke-direct {v0}, Landroid/webkit/Network;->monitorRoaming()V

    .line 133
    :cond_19
    :goto_19
    return-void

    .line 130
    :cond_1a
    sput-boolean v1, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_19
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/Network;
    .registers 4
    .parameter "context"

    .prologue
    .line 101
    const-class v0, Landroid/webkit/Network;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-nez v1, :cond_1f

    .line 108
    new-instance v1, Landroid/webkit/Network;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/Network;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    .line 109
    sget-boolean v1, Landroid/webkit/Network;->sPlatformNotifications:Z

    if-eqz v1, :cond_1f

    .line 113
    sget v1, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    .line 114
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 117
    :cond_1f
    sget-object v1, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    monitor-exit v0

    return-object v1

    .line 101
    :catchall_23
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private monitorRoaming()V
    .registers 4

    .prologue
    .line 179
    new-instance v1, Landroid/webkit/Network$RoamingMonitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/Network$RoamingMonitor;-><init>(Landroid/webkit/Network;Landroid/webkit/Network$1;)V

    iput-object v1, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    .line 180
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 181
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Landroid/webkit/Network;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v2, v2, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    return-void
.end method

.method private stopMonitoringRoaming()V
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    if-eqz v0, :cond_e

    .line 187
    iget-object v0, p0, Landroid/webkit/Network;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/Network;->mRoamingMonitor:Landroid/webkit/Network$RoamingMonitor;

    .line 190
    :cond_e
    return-void
.end method


# virtual methods
.method checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z
    .registers 4
    .parameter "loader"
    .parameter "error"

    .prologue
    .line 365
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 366
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/SslErrorHandlerImpl;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v0

    .line 368
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public clearUserSslPrefTable()V
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandlerImpl;->clear()V

    .line 349
    return-void
.end method

.method public getProxyHostname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProxyPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleAuthRequest(Landroid/webkit/LoadListener;)V
    .registers 3
    .parameter "loader"

    .prologue
    .line 379
    if-eqz p1, :cond_7

    .line 380
    iget-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/HttpAuthHandlerImpl;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    .line 382
    :cond_7
    return-void
.end method

.method public handleSslErrorRequest(Landroid/webkit/LoadListener;)V
    .registers 3
    .parameter "loader"

    .prologue
    .line 358
    if-eqz p1, :cond_7

    .line 359
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandlerImpl;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    .line 361
    :cond_7
    return-void
.end method

.method public isValidProxySet()Z
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    monitor-enter v0

    .line 263
    :try_start_3
    iget-object v1, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v1}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_c
    monitor-exit v0

    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_c

    .line 264
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z
    .registers 14
    .parameter "method"
    .parameter
    .parameter "postData"
    .parameter "loader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Landroid/webkit/LoadListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 206
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v4

    .line 253
    :goto_c
    return v2

    .line 215
    :cond_d
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {v1}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {v1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_25
    move v2, v4

    .line 217
    goto :goto_c

    .line 221
    :cond_27
    iget-boolean v2, p0, Landroid/webkit/Network;->mRoaming:Z

    if-eqz v2, :cond_44

    const-string v2, "X-Moz"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string/jumbo v2, "prefetch"

    const-string v3, "X-Moz"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    move v2, v4

    .line 222
    goto :goto_c

    .line 227
    :cond_44
    const/4 v6, 0x0

    .line 228
    .local v6, bodyProvider:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 229
    .local v7, bodyLength:I
    if-eqz p3, :cond_4e

    .line 230
    array-length v7, p3

    .line 231
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .end local v6           #bodyProvider:Ljava/io/InputStream;
    invoke-direct {v6, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 234
    .restart local v6       #bodyProvider:Ljava/io/InputStream;
    :cond_4e
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 235
    .local v0, q:Landroid/net/http/RequestQueue;
    const/4 v8, 0x0

    .line 236
    .local v8, handle:Landroid/net/http/RequestHandle;
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 237
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    .line 239
    invoke-virtual {p4, v8}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    .line 240
    invoke-virtual {v8}, Landroid/net/http/RequestHandle;->processRequest()V

    .line 241
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->loadSynchronousMessages()V

    .line 253
    :goto_6b
    const/4 v2, 0x1

    goto :goto_c

    .line 243
    :cond_6d
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    .line 250
    invoke-virtual {p4, v8}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    goto :goto_6b
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .registers 3
    .parameter "inState"

    .prologue
    .line 341
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandlerImpl;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .registers 3
    .parameter "outState"

    .prologue
    .line 327
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandlerImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandlerImpl;->saveState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setProxyPassword(Ljava/lang/String;)V
    .registers 3
    .parameter "proxyPassword"

    .prologue
    .line 313
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 314
    monitor-exit p0

    return-void

    .line 313
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyUsername(Ljava/lang/String;)V
    .registers 3
    .parameter "proxyUsername"

    .prologue
    .line 293
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 294
    monitor-exit p0

    return-void

    .line 293
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTiming()V
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->startTiming()V

    .line 387
    return-void
.end method

.method public stopTiming()V
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->stopTiming()V

    .line 391
    return-void
.end method
