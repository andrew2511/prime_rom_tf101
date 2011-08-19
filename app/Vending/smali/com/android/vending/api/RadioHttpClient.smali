.class public Lcom/android/vending/api/RadioHttpClient;
.super Ljava/lang/Object;
.source "RadioHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/api/RadioHttpClient$1;,
        Lcom/android/vending/api/RadioHttpClient$RetryAfterIOException;,
        Lcom/android/vending/api/RadioHttpClient$HipriWaiter;
    }
.end annotation


# static fields
.field private static final USE_RADIO:Lcom/android/vending/util/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/vending/util/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mNetworkInterfaceLock:Ljava/lang/Object;

.field private final mPerformOverRadio:Z

.field private mWaitingClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "vending.use_radio"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vending/util/GservicesValue;->value(Ljava/lang/String;Z)Lcom/android/vending/util/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/android/vending/api/RadioHttpClient;->USE_RADIO:Lcom/android/vending/util/GservicesValue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/apache/http/client/HttpClient;)V
    .locals 3
    .parameter "context"
    .parameter "httpClient"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/vending/api/RadioHttpClient;->mNetworkInterfaceLock:Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/android/vending/api/RadioHttpClient;->USE_RADIO:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v1}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vending/api/RadioHttpClient;->mPerformOverRadio:Z

    .line 89
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/vending/api/RadioHttpClient;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 90
    iput-object p2, p0, Lcom/android/vending/api/RadioHttpClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 91
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/api/RadioHttpClient;->mWaitingClients:Ljava/util/List;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    new-instance v1, Lcom/android/vending/api/RadioHttpClient$HipriWaiter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/vending/api/RadioHttpClient$HipriWaiter;-><init>(Lcom/android/vending/api/RadioHttpClient;Lcom/android/vending/api/RadioHttpClient$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/api/RadioHttpClient;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vending/api/RadioHttpClient;->mNetworkInterfaceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/api/RadioHttpClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/vending/api/RadioHttpClient;->wakeUpClients()V

    return-void
.end method

.method private declared-synchronized addAwaitingClient(Ljava/util/concurrent/Semaphore;)V
    .locals 1
    .parameter "semaphore"

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/api/RadioHttpClient;->mWaitingClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ensureRouteToHost(Ljava/lang/String;)V
    .locals 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    iget-boolean v6, p0, Lcom/android/vending/api/RadioHttpClient;->mPerformOverRadio:Z

    if-nez v6, :cond_1

    .line 303
    :cond_0
    return-void

    .line 279
    :cond_1
    const-string v6, "http://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "https://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 283
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 287
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 292
    .local v3, inetAddr:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 293
    .local v1, addrBytes:[B
    const/4 v6, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x0

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 298
    .local v0, addrAsInt:I
    iget-object v6, p0, Lcom/android/vending/api/RadioHttpClient;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v4

    .line 300
    .local v4, routeToHost:Z
    if-nez v4, :cond_0

    .line 301
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot establish route to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 288
    .end local v0           #addrAsInt:I
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddr:Ljava/net/InetAddress;
    .end local v4           #routeToHost:Z
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 289
    .local v2, e:Ljava/net/UnknownHostException;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot establish route for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Unknown host"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private isRadioActive()Z
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/vending/api/RadioHttpClient;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 251
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1
.end method

.method private isRadioActiveElseWait()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 193
    iget-boolean v3, p0, Lcom/android/vending/api/RadioHttpClient;->mPerformOverRadio:Z

    if-nez v3, :cond_0

    .line 195
    const-string v3, "not using radio"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :goto_0
    return-void

    .line 199
    :cond_0
    const/4 v1, 0x0

    .line 200
    .local v1, semaphore:Ljava/util/concurrent/Semaphore;
    iget-object v3, p0, Lcom/android/vending/api/RadioHttpClient;->mNetworkInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/android/vending/api/RadioHttpClient;->isRadioActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    iget-object v4, p0, Lcom/android/vending/api/RadioHttpClient;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    const-string v6, "enableHIPRI"

    invoke-virtual {v4, v5, v6}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    .line 208
    monitor-exit v3

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 211
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/vending/api/RadioHttpClient;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    const-string v6, "enableHIPRI"

    invoke-virtual {v4, v5, v6}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 214
    .local v0, result:I
    packed-switch v0, :pswitch_data_0

    .line 223
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start network failed - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    :pswitch_0
    monitor-exit v3

    goto :goto_0

    .line 219
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APN request started: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 226
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .end local v1           #semaphore:Ljava/util/concurrent/Semaphore;
    .local v2, semaphore:Ljava/util/concurrent/Semaphore;
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/vending/api/RadioHttpClient;->addAwaitingClient(Ljava/util/concurrent/Semaphore;)V

    .line 228
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    goto :goto_0

    .line 228
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #semaphore:Ljava/util/concurrent/Semaphore;
    .restart local v1       #semaphore:Ljava/util/concurrent/Semaphore;
    goto :goto_1

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"
    .parameter "postBody"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/vending/api/RadioHttpClient;->ensureRouteToHost(Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, request:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_1

    .line 149
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, entity:Lorg/apache/http/entity/StringEntity;
    if-eqz p3, :cond_0

    .line 151
    invoke-virtual {v0, p3}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 156
    .end local v0           #entity:Lorg/apache/http/entity/StringEntity;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/vending/api/RadioHttpClient;->setProxyForRequest(Lorg/apache/http/client/methods/HttpPost;)V

    .line 160
    :try_start_0
    iget-object v4, p0, Lcom/android/vending/api/RadioHttpClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 163
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v3}, Lcom/android/vending/api/RadioHttpClient;->throwExceptionIfError(Lorg/apache/http/HttpResponse;)V

    .line 164
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 165
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    const/high16 v5, 0x8

    const-string v6, "UTF-8"

    invoke-static {v4, v5, v6}, Lcom/android/vending/util/Util;->streamToString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 169
    if-eqz v1, :cond_2

    .line 170
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    return-object v4

    .line 169
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    .line 170
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_3
    throw v4
.end method

.method private declared-synchronized perhapsStopUsingRadio()V
    .locals 3

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/vending/api/RadioHttpClient;->mPerformOverRadio:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 262
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/vending/api/RadioHttpClient;->mWaitingClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/vending/api/RadioHttpClient;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableHIPRI"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setProxyForRequest(Lorg/apache/http/client/methods/HttpPost;)V
    .locals 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, host:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    .line 240
    .local v1, port:I
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    .line 241
    invoke-direct {p0, v0}, Lcom/android/vending/api/RadioHttpClient;->ensureRouteToHost(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 244
    :cond_0
    return-void
.end method

.method private throwExceptionIfError(Lorg/apache/http/HttpResponse;)V
    .locals 10
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 310
    .local v6, responseCode:I
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 329
    :cond_0
    return-void

    .line 312
    :cond_1
    const/16 v7, 0x1f7

    if-ne v6, v7, :cond_3

    .line 313
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .line 314
    .local v3, headers:[Lorg/apache/http/Header;
    move-object v0, v3

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 315
    .local v2, header:Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "retry-after"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 317
    :try_start_0
    new-instance v7, Lcom/android/vending/api/RadioHttpClient$RetryAfterIOException;

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/android/vending/api/RadioHttpClient$RetryAfterIOException;-><init>(I)V

    throw v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 319
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid retry after: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 320
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 314
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 326
    .end local v0           #arr$:[Lorg/apache/http/Header;
    .end local v2           #header:Lorg/apache/http/Header;
    .end local v3           #headers:[Lorg/apache/http/Header;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected HTTP status code from carrier: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private declared-synchronized wakeUpClients()V
    .locals 3

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/vending/api/RadioHttpClient;->mWaitingClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    .line 180
    .local v1, semaphore:Ljava/util/concurrent/Semaphore;
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #semaphore:Ljava/util/concurrent/Semaphore;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 182
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/vending/api/RadioHttpClient;->mWaitingClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter "postBody"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/android/vending/api/RadioHttpClient;->isRadioActiveElseWait()V

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vending/api/RadioHttpClient;->performRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 128
    invoke-direct {p0}, Lcom/android/vending/api/RadioHttpClient;->perhapsStopUsingRadio()V

    return-object v1

    .line 124
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 125
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while waiting for network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/vending/api/RadioHttpClient;->perhapsStopUsingRadio()V

    throw v1
.end method
