.class public Lcom/google/android/common/ParentalControl;
.super Ljava/lang/Object;
.source "ParentalControl.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastCheckState(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 151
    const-string v0, "ParentalControl"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "app"

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 94
    const-string v2, "ParentalControl"

    const-string v3, "Network request on main thread"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 99
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v2, "parental_control_check_enabled"

    invoke-static {v1, v2, v4}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    .line 112
    :goto_0
    return v2

    .line 103
    :cond_1
    if-eqz p1, :cond_2

    .line 104
    const-string v2, "parental_control_apps_list"

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, apps:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    .line 106
    goto :goto_0

    .line 110
    .end local v0           #apps:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/google/android/common/ParentalControl;->maybeCheckState(Landroid/content/Context;)V

    .line 112
    invoke-static {p0}, Lcom/google/android/common/ParentalControl;->getLastCheckState(Landroid/content/Context;)Z

    move-result v2

    goto :goto_0
.end method

.method private static isHipriActive(Landroid/net/ConnectivityManager;)Z
    .locals 1
    .parameter "cm"

    .prologue
    .line 155
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0
.end method

.method private static maybeCheckState(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 197
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v0, "ParentalControl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 198
    .local v4, prefs:Landroid/content/SharedPreferences;
    new-instance v5, Lcom/android/common/OperationScheduler;

    invoke-direct {v5, v4}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    .line 199
    .local v5, scheduler:Lcom/android/common/OperationScheduler;
    new-instance v0, Lcom/android/common/OperationScheduler$Options;

    invoke-direct {v0}, Lcom/android/common/OperationScheduler$Options;-><init>()V

    .line 200
    .local v0, options:Lcom/android/common/OperationScheduler$Options;
    const-string v1, "parental_control_timeout_in_ms"

    const-wide/32 v6, 0x2932e00

    invoke-static {v2, v1, v6, v7}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    .line 203
    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/1"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/android/common/OperationScheduler;->getLastSuccessTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 204
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 207
    :cond_0
    invoke-virtual {v5, v0}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v0

    .end local v0           #options:Lcom/android/common/OperationScheduler$Options;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    .line 289
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    .end local p0
    :goto_0
    return-void

    .line 211
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    .restart local p0
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 213
    .local v1, cm:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_2

    .line 214
    const-string p0, "ParentalControl"

    .end local p0
    const-string v0, "Parental control unchanged: No ConnectivityManager"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    .restart local p0
    :cond_2
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    const-string v3, "Android-PC"

    const/4 v6, 0x0

    invoke-direct {v0, p0, v3, v6}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 222
    .local v0, client:Lcom/google/android/common/http/GoogleHttpClient;
    :try_start_0
    invoke-static {v1}, Lcom/google/android/common/ParentalControl;->waitForHipri(Landroid/net/ConnectivityManager;)Z

    move-result p0

    .end local p0
    if-nez p0, :cond_3

    .line 223
    invoke-virtual {v5}, Lcom/android/common/OperationScheduler;->onTransientError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const/4 p0, 0x0

    const-string v0, "enableHIPRI"

    .end local v0           #client:Lcom/google/android/common/http/GoogleHttpClient;
    invoke-virtual {v1, p0, v0}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_0

    .line 227
    .restart local v0       #client:Lcom/google/android/common/http/GoogleHttpClient;
    :cond_3
    :try_start_1
    const-string p0, "http://android.clients.google.com/content/default"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 228
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 229
    .local p0, addr:Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 230
    .local v3, octets:[B
    const/4 v7, 0x5

    const/4 v8, 0x3

    aget-byte v8, v3, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    const/4 v9, 0x2

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/4 v9, 0x1

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget-byte v3, v3, v9

    .end local v3           #octets:[B
    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v8

    invoke-virtual {v1, v7, v3}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 233
    const-string v2, "ParentalControl"

    .end local v2           #cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parental control unchanged: Error rerouting "

    .end local v4           #prefs:Landroid/content/SharedPreferences;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #addr:Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v5}, Lcom/android/common/OperationScheduler;->onTransientError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const/4 p0, 0x0

    const-string v0, "enableHIPRI"

    .end local v0           #client:Lcom/google/android/common/http/GoogleHttpClient;
    invoke-virtual {v1, p0, v0}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 238
    .restart local v0       #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    .restart local p0       #addr:Ljava/net/InetAddress;
    :cond_4
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #addr:Ljava/net/InetAddress;
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v6}, Landroid/net/Uri;->getPort()I

    move-result v3

    if-lez v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/net/Uri;->getPort()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 239
    .local p0, hostport:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .end local p0           #hostport:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 241
    .end local v6           #uri:Landroid/net/Uri;
    .local v3, uri:Landroid/net/Uri;
    const-string p0, "ParentalControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting litmus URL fetch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance p0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3           #uri:Landroid/net/Uri;
    invoke-direct {p0, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 243
    .local p0, request:Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "Connection"

    const-string v6, "close"

    invoke-virtual {p0, v3, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, p0}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 245
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    .end local p0           #request:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p0

    .line 247
    .local p0, status:I
    const/16 v6, 0xc8

    if-ne p0, v6, :cond_9

    .line 248
    const-string p0, "parental_control_expected_response"

    .end local p0           #status:I
    invoke-static {v2, p0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 250
    .local p0, expected:Ljava/lang/String;
    if-eqz p0, :cond_5

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .end local v2           #cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #expected:Ljava/lang/String;
    if-eqz p0, :cond_8

    .line 253
    :cond_5
    const-string p0, "ParentalControl"

    const-string v2, "Parental control is OFF: Litmus fetch succeeded"

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v5}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 255
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 286
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const/4 p0, 0x0

    const-string v0, "enableHIPRI"

    .end local v0           #client:Lcom/google/android/common/http/GoogleHttpClient;
    invoke-virtual {v1, p0, v0}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 238
    .restart local v0       #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_7
    :try_start_3
    const-string v3, ""

    goto/16 :goto_1

    .line 258
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v6           #uri:Landroid/net/Uri;
    .restart local v3       #response:Lorg/apache/http/HttpResponse;
    :cond_8
    const-string p0, "ParentalControl"

    const-string v2, "Parental control is ON: Litmus content was modified"

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v5}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 260
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "enabled"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .end local v3           #response:Lorg/apache/http/HttpResponse;
    move-result-object p0

    const-string v2, "landingUrl"

    const-string v3, ""

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 282
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception p0

    .line 283
    .local p0, e:Ljava/io/IOException;
    :try_start_4
    const-string v2, "ParentalControl"

    const-string v3, "Parental control unchanged: Litmus fetch failed"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    invoke-virtual {v5}, Lcom/android/common/OperationScheduler;->onTransientError()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 286
    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const/4 p0, 0x0

    const-string v0, "enableHIPRI"

    .end local v0           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .end local p0           #e:Ljava/io/IOException;
    invoke-virtual {v1, p0, v0}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 264
    .restart local v0       #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #response:Lorg/apache/http/HttpResponse;
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    .local p0, status:I
    :cond_9
    const/16 v6, 0x12e

    if-ne p0, v6, :cond_6

    .line 265
    :try_start_5
    const-string p0, "parental_control_redirect_regex"

    .end local p0           #status:I
    invoke-static {v2, p0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, whitelist:Ljava/lang/String;
    const-string p0, "location"

    invoke-interface {v3, p0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    .line 268
    .local p0, redirect:Lorg/apache/http/Header;
    if-nez p0, :cond_a

    const/4 p0, 0x0

    .line 269
    .local p0, url:Ljava/lang/String;
    :goto_3
    if-eqz v2, :cond_b

    if-eqz p0, :cond_b

    invoke-static {v2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    .end local v2           #whitelist:Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 271
    const-string v2, "ParentalControl"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #response:Lorg/apache/http/HttpResponse;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parental control is ON: Litmus redirects to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v5}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 273
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .end local v4           #prefs:Landroid/content/SharedPreferences;
    move-result-object v2

    const-string v3, "landingUrl"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .end local p0           #url:Ljava/lang/String;
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 286
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const/4 v0, 0x0

    const-string v2, "enableHIPRI"

    .end local v0           #client:Lcom/google/android/common/http/GoogleHttpClient;
    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    throw p0

    .line 268
    .restart local v0       #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v2       #whitelist:Ljava/lang/String;
    .restart local v3       #response:Lorg/apache/http/HttpResponse;
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    .local p0, redirect:Lorg/apache/http/Header;
    :cond_a
    :try_start_6
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 277
    .end local v2           #whitelist:Ljava/lang/String;
    .local p0, url:Ljava/lang/String;
    :cond_b
    invoke-virtual {v5}, Lcom/android/common/OperationScheduler;->onTransientError()V

    .line 278
    const-string v2, "ParentalControl"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #response:Lorg/apache/http/HttpResponse;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parental control unchanged: Unknown litmus redirect "

    .end local v4           #prefs:Landroid/content/SharedPreferences;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p0, :cond_c

    const-string p0, "(none)"

    .end local p0           #url:Ljava/lang/String;
    :cond_c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2
.end method

.method private static waitForHipri(Landroid/net/ConnectivityManager;)Z
    .locals 7
    .parameter "cm"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 167
    invoke-static {p0}, Lcom/google/android/common/ParentalControl;->isHipriActive(Landroid/net/ConnectivityManager;)Z

    move-result v0

    .line 170
    .local v0, alreadyActive:Z
    const-string v3, "enableHIPRI"

    invoke-virtual {p0, v6, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v2

    .line 174
    .local v2, result:I
    if-eqz v0, :cond_0

    move v3, v5

    .line 192
    :goto_0
    return v3

    .line 178
    :cond_0
    if-eqz v2, :cond_1

    if-eq v2, v5, :cond_1

    .line 179
    const-string v3, "ParentalControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parental control unchanged: Mobile network error, code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 180
    goto :goto_0

    .line 183
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v3, 0x14

    if-ge v1, v3, :cond_3

    .line 184
    const-string v3, "ParentalControl"

    const-string v4, "Waiting 1000ms for mobile network"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 186
    invoke-static {p0}, Lcom/google/android/common/ParentalControl;->isHipriActive(Landroid/net/ConnectivityManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    .line 187
    goto :goto_0

    .line 183
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :cond_3
    const-string v3, "ParentalControl"

    const-string v4, "Parental control unchanged: Timed out waiting for mobile network"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 192
    goto :goto_0
.end method
