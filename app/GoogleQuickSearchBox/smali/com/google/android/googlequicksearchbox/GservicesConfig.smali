.class public Lcom/google/android/googlequicksearchbox/GservicesConfig;
.super Lcom/google/android/googlequicksearchbox/Config;
.source "GservicesConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/GservicesConfig$IllegalGservicesKeyException;,
        Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final mBroadcastReceiver:Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;

.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mGservicesQueryHandler:Landroid/os/Handler;

.field private final mGservicesQueryThread:Landroid/os/HandlerThread;

.field private final mUpdateCacheTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/Config;-><init>(Landroid/content/Context;)V

    .line 256
    new-instance v1, Lcom/google/android/googlequicksearchbox/GservicesConfig$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig$1;-><init>(Lcom/google/android/googlequicksearchbox/GservicesConfig;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mUpdateCacheTask:Ljava/lang/Runnable;

    .line 264
    new-instance v1, Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;-><init>(Lcom/google/android/googlequicksearchbox/GservicesConfig;Lcom/google/android/googlequicksearchbox/GservicesConfig$1;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mBroadcastReceiver:Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;

    .line 265
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mBroadcastReceiver:Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Gservices-thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryThread:Landroid/os/HandlerThread;

    .line 270
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 271
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryHandler:Landroid/os/Handler;

    .line 272
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mUpdateCacheTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/GservicesConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->updateCache()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/GservicesConfig;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mUpdateCacheTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/GservicesConfig;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 345
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCachedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, valString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, p2

    .line 353
    :goto_0
    return v1

    .line 348
    :cond_1
    sget-object v1, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    const/4 v1, 0x1

    goto :goto_0

    .line 350
    :cond_2
    sget-object v1, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 351
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v1, p2

    .line 353
    goto :goto_0
.end method

.method private declared-synchronized getCache()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mCache:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 294
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "QSB.GservicesConfig"

    const-string v2, "Interrupted while waiting for Gservices cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 292
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 299
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mCache:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method private getCachedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 303
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->verifyKey(Ljava/lang/String;)V

    .line 305
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCache()Ljava/util/Map;

    move-result-object v0

    .line 306
    .local v0, cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, value:Ljava/lang/String;
    move-object v2, v1

    .line 312
    .end local v1           #value:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 323
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCachedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, p2

    .line 327
    :goto_0
    return v2

    .line 325
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    .line 327
    goto :goto_0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 332
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCachedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    move-wide v2, p2

    .line 336
    :goto_0
    return-wide v2

    .line 334
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .line 336
    goto :goto_0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCachedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "value"
    .parameter "list"

    .prologue
    const/16 v5, 0x2c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 451
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 453
    .local v1, start:I
    if-gez v1, :cond_0

    move v2, v3

    .line 459
    :goto_0
    return v2

    .line 455
    :cond_0
    if-eqz v1, :cond_1

    sub-int v2, v1, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    .line 456
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 458
    .local v0, end:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    .line 459
    goto :goto_0
.end method

.method private updateCache()V
    .locals 5

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "qsb:"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 285
    .local v0, cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 286
    :try_start_0
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mCache:Ljava/util/Map;

    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 288
    monitor-exit p0

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static verifyKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 317
    const-string v0, "qsb:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lcom/google/android/googlequicksearchbox/GservicesConfig$IllegalGservicesKeyException;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig$IllegalGservicesKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mBroadcastReceiver:Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 279
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->close()V

    .line 280
    return-void
.end method

.method public getCompleteServerClientId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 520
    const-string v0, "qsb:complete_server_client_id"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getCompleteServerClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomainCheckServerUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 572
    const-string v0, "qsb:domain_check_server"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getDomainCheckServerUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentIds()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 558
    .local v3, results:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getCache()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 559
    .local v2, property:Ljava/lang/String;
    const-string v4, "qsb:experiment_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 562
    const-string v4, "qsb:experiment_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, experimentId:Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 567
    .end local v0           #experimentId:Ljava/lang/String;
    .end local v2           #property:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public getHelpUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "activityHelpContext"

    .prologue
    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gqsb_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, fromWhere:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gsf/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getHttpConnectTimeout()I
    .locals 2

    .prologue
    .line 510
    const-string v0, "qsb:suggest_http_connect_timeout"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getHttpConnectTimeout()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHttpReadTimeout()I
    .locals 2

    .prologue
    .line 515
    const-string v0, "qsb:suggest_http_read_timeout"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getHttpReadTimeout()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLatencyLogFrequency()I
    .locals 2

    .prologue
    .line 419
    const-string v0, "qsb:latency_log_frequency"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getLatencyLogFrequency()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getManageSearchHistoryUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 499
    const-string v0, "qsb:manage_history_url"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getManageSearchHistoryUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPromotedSuggestions()I
    .locals 2

    .prologue
    .line 383
    const-string v0, "qsb:max_promoted_suggestions"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMaxPromotedSuggestions()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxPsychicLatency()I
    .locals 2

    .prologue
    .line 546
    const-string v0, "qsb:max_psychic_latency"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMaxPsychicLatency()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxResultsPerSource()I
    .locals 2

    .prologue
    .line 389
    const-string v0, "qsb:max_results_per_source"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMaxResultsPerSource()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxStatAgeMillis()J
    .locals 3

    .prologue
    .line 395
    const-string v0, "qsb:max_stat_age_millis"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMaxStatAgeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumSuggestionsAboveSummons()I
    .locals 2

    .prologue
    .line 371
    const-string v0, "qsb:max_suggestions_above_summons"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMaximumSuggestionsAboveSummons()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinClicksForSourceRanking()I
    .locals 2

    .prologue
    .line 401
    const-string v0, "qsb:min_clicks_for_source_ranking"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMinClicksForSourceRanking()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinimumSuggestionsAboveSummons()I
    .locals 2

    .prologue
    .line 365
    const-string v0, "qsb:min_suggestions_above_summons"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMinimumSuggestionsAboveSummons()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinimumVisibleSummons()I
    .locals 2

    .prologue
    .line 377
    const-string v0, "qsb:min_visible_summons"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getMinimumVisibleSummons()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNumPromotedSources()I
    .locals 2

    .prologue
    .line 359
    const-string v0, "qsb:num_promoted_sources"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getNumPromotedSources()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPsychicPathPattern()Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    const-string v0, "qsb:psychic_path_regex"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getPsychicPathPattern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPsychicSupported()Z
    .locals 2

    .prologue
    .line 494
    const-string v0, "qsb:support_psychic"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getPsychicSupported()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPublishResultDelayMillis()J
    .locals 3

    .prologue
    .line 431
    const-string v0, "qsb:publish_result_delay_millis"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getPublishResultDelayMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getQueryThreadPriority()I
    .locals 2

    .prologue
    .line 407
    const-string v0, "qsb:query_thread_priority"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getQueryThreadPriority()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRefreshSearchHistoryDelay()J
    .locals 3

    .prologue
    .line 577
    const-string v0, "qsb:refresh_search_history_delay"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getRefreshSearchHistoryDelay()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSourceTimeoutMillis()J
    .locals 3

    .prologue
    .line 413
    const-string v0, "qsb:source_timeout_millis"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getSourceTimeoutMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSuggestLatencyHistorySize()I
    .locals 2

    .prologue
    .line 551
    const-string v0, "qsb:suggest_latency_history"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getSuggestLatencyHistorySize()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTargetPsychicLatency()I
    .locals 2

    .prologue
    .line 541
    const-string v0, "qsb:target_psychic_latency"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getTargetPsychicLatency()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTargetSuggestLatencyToLoadPsychic()I
    .locals 2

    .prologue
    .line 535
    const-string v0, "qsb:target_suggest_latency_to_load_psychic"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getTargetSuggestLatencyToLoadPsychic()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTypingUpdateSuggestionsDelayMillis()J
    .locals 3

    .prologue
    .line 424
    const-string v0, "qsb:typing_update_suggestions_delay_millis"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getTypingUpdateSuggestionsDelayMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVoiceSearchInstallUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    const-string v0, "qsb:voice_app_install_uri"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getVoiceSearchInstallUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceSearchPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 437
    const-string v0, "qsb:voice_app_package_name"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->getVoiceSearchPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDropBoxLoggingEnabled()Z
    .locals 2

    .prologue
    .line 525
    const-string v0, "qsb:write_dropbox_logs"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPsuggestAvailable()Z
    .locals 2

    .prologue
    .line 582
    const-string v0, "qsb:offer_psuggest"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->isPsuggestAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSourceEnabledByDefault(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 3
    .parameter "source"

    .prologue
    .line 464
    const-string v1, "qsb:default_sources"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, trusted:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 466
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 468
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/Config;->isSourceEnabledByDefault(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized isSourceIgnored(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 3
    .parameter "source"

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    const-string v1, "qsb:ignored_sources"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, ignored:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 476
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 478
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/Config;->isSourceIgnored(Lcom/google/android/googlequicksearchbox/Source;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 474
    .end local v0           #ignored:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public shouldAllowWebHistoryFromPackage(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 587
    const-string v1, "qsb:web_history_packages"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, webHistoryPackages:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 589
    invoke-direct {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->isInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 591
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/Config;->shouldAllowWebHistoryFromPackage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public showSuggestionsForZeroQuery()Z
    .locals 2

    .prologue
    .line 484
    const-string v0, "qsb:show_zero_query_suggestions"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->showSuggestionsForZeroQuery()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showSummonsForZeroQuery()Z
    .locals 2

    .prologue
    .line 489
    const-string v0, "qsb:show_zero_query_shortcuts"

    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/Config;->showSummonsForZeroQuery()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
