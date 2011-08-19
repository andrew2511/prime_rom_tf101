.class public Lcom/google/android/gsf/checkin/CheckinTask;
.super Landroid/os/AsyncTask;
.source "CheckinTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/checkin/CheckinTask$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/gsf/checkin/CheckinTask$Params;",
        "Ljava/lang/Void;",
        "Lcom/google/common/io/protocol/ProtoBuf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 94
    return-void
.end method

.method private static combineResponses(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 11
    .parameter "older"
    .parameter "newer"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 383
    invoke-virtual {p0, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v8

    .line 384
    .local v8, oldNum:I
    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 385
    .local v5, newNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_2

    .line 386
    invoke-virtual {p0, v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 387
    .local v7, oldIntent:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v7, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, oldAction:Ljava/lang/String;
    const/4 v1, 0x0

    .line 392
    .local v1, is_dupe:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v5, :cond_0

    if-nez v1, :cond_0

    .line 393
    invoke-virtual {p1, v9, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 394
    .local v4, newIntent:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v4, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, newAction:Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 398
    .end local v3           #newAction:Ljava/lang/String;
    .end local v4           #newIntent:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p1, v9, v7}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 385
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v1           #is_dupe:Z
    .end local v2           #j:I
    .end local v6           #oldAction:Ljava/lang/String;
    .end local v7           #oldIntent:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_2
    return-object p1
.end method

.method private static makeRequest(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lcom/google/common/io/protocol/ProtoBuf;JLjava/lang/String;)J
    .locals 7
    .parameter "params"
    .parameter "request"
    .parameter "bookmark"
    .parameter "market"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, cm:Ljava/lang/Object;
    check-cast v0, Landroid/net/ConnectivityManager;

    .end local v0           #cm:Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 225
    .local v0, ni:Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 228
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 231
    .local v2, wm:Landroid/net/wifi/WifiManager;
    invoke-static {p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addBuildProperties(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 232
    iget-object v3, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addPackageProperties(Landroid/content/Context;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 233
    invoke-static {v1, v2, v0, p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addNetworkProperties(Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/net/NetworkInfo;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 234
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .end local v0           #ni:Landroid/net/NetworkInfo;
    invoke-static {v0, p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addLocaleProperty(Ljava/util/Locale;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 235
    const-wide/16 v0, 0x0

    .line 236
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    .local v0, securityToken:J
    iget-object v2, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    .end local v2           #wm:Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_3

    .line 237
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    .end local v0           #securityToken:J
    const-string v1, "CheckinTask_securityToken"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .restart local v0       #securityToken:J
    move-wide v1, v0

    .line 239
    .end local v0           #securityToken:J
    .local v1, securityToken:J
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    .line 241
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v4, "security_token"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 243
    .local v0, dis:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 244
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v1

    .line 251
    .end local v1           #securityToken:J
    .local v0, securityToken:J
    :goto_1
    iget-object v2, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1, p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addIdProperties(Landroid/content/Context;JLcom/google/common/io/protocol/ProtoBuf;)V

    .line 252
    if-eqz p4, :cond_0

    invoke-static {p4, p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addMarketProperty(Ljava/lang/String;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 253
    :cond_0
    iget-object p4, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    .end local p4
    invoke-static {p4, p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addAccountInfo(Landroid/content/Context;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 254
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p4

    invoke-static {p4, p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addTimeZone(Ljava/util/TimeZone;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 255
    iget-object p4, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    invoke-static {p4, p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addDeviceConfiguration(Landroid/content/Context;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 257
    iget-object p4, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->dropbox:Landroid/os/DropBoxManager;

    if-eqz p4, :cond_1

    .line 258
    iget-object p4, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    .line 259
    .local p4, cr:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->dropbox:Landroid/os/DropBoxManager;

    .end local v0           #securityToken:J
    iget v1, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxRequestBytes:I

    iget v2, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxEventBytes:I

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    .end local p0
    const/4 v3, 0x0

    const-string v4, "checkin_dropbox_upload"

    aput-object v4, p0, v3

    invoke-static {p4, p0}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-wide v4, p2

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addEvents(Landroid/os/DropBoxManager;IILjava/util/Map;JLcom/google/common/io/protocol/ProtoBuf;)J

    move-result-wide p2

    .line 265
    .end local p4           #cr:Landroid/content/ContentResolver;
    :cond_1
    return-wide p2

    .line 247
    .restart local v1       #securityToken:J
    .restart local p0
    .local p4, market:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CheckinTask"

    const-string v4, "Error reading backup security token file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    move-wide v0, v1

    .end local v1           #securityToken:J
    .local v0, securityToken:J
    goto :goto_1

    .line 245
    .end local v0           #securityToken:J
    .restart local v1       #securityToken:J
    :catch_1
    move-exception v0

    move-wide v0, v1

    .end local v1           #securityToken:J
    .restart local v0       #securityToken:J
    goto :goto_1

    :cond_3
    move-wide v1, v0

    .end local v0           #securityToken:J
    .restart local v1       #securityToken:J
    goto :goto_0
.end method

.method private static maybeSetTime(Lorg/apache/http/client/HttpClient;Lcom/google/android/gsf/checkin/CheckinTask$Params;)Z
    .locals 12
    .parameter "client"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 301
    iget-object v7, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    const-string v8, "https:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v11

    .line 327
    :goto_0
    return v7

    .line 302
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 303
    .local v1, request:Lorg/apache/http/client/methods/HttpPost;
    const-string v7, "Content-type"

    const-string v8, "application/x-protobuffer"

    invoke-virtual {v1, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v7, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-static {}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->newRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 306
    invoke-interface {p0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/google/android/gsf/checkin/CheckinTask;->parseResponse(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/HttpResponse;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 307
    .local v2, response:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v2, v10}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 308
    const-string v7, "CheckinTask"

    const-string v8, "No time of day in checkin server response"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v11

    .line 309
    goto :goto_0

    .line 312
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 313
    .local v5, systemTime:J
    invoke-virtual {v2, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    .line 317
    .local v3, serverTime:J
    sub-long v7, v3, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    iget-wide v9, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->minTimeAdjustmentMillis:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 318
    const-string v7, "CheckinTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Server time agrees: delta "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v3, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " msec"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v11

    .line 319
    goto/16 :goto_0

    .line 320
    :cond_2
    iget-wide v7, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->minTimeSettingMillis:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    .line 321
    const-string v7, "CheckinTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Server time is curiously old: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v11

    .line 322
    goto/16 :goto_0

    .line 324
    :cond_3
    const-string v7, "CheckinTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting time from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v7, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 326
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v3, v4}, Landroid/app/AlarmManager;->setTime(J)V

    .line 327
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private static parseResponse(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/HttpResponse;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 13
    .parameter "params"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 332
    const-string v9, "Retry-After"

    invoke-interface {p1, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 333
    .local v7, retryAfter:Lorg/apache/http/Header;
    if-eqz v7, :cond_0

    iget-object v9, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    if-eqz v9, :cond_0

    .line 334
    iget-object v9, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeHttp(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 335
    const-string v9, "CheckinTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got Retry-After: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 342
    .local v8, status:Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 343
    .local v2, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_3

    .line 344
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 345
    :cond_1
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rejected response from server: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 337
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v8           #status:Lorg/apache/http/StatusLine;
    :cond_2
    const-string v9, "CheckinTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t parse Retry-After: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v8       #status:Lorg/apache/http/StatusLine;
    :cond_3
    if-nez v2, :cond_4

    .line 348
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Empty response from server: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 351
    :cond_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 352
    .local v3, input:Ljava/io/InputStream;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 353
    .local v1, encoding:Lorg/apache/http/Header;
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "gzip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 354
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v3           #input:Ljava/io/InputStream;
    .local v4, input:Ljava/io/InputStream;
    move-object v3, v4

    .line 359
    .end local v4           #input:Ljava/io/InputStream;
    .restart local v3       #input:Ljava/io/InputStream;
    :cond_5
    :try_start_0
    new-instance v6, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v9, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v6, v9}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 360
    .local v6, parsed:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v6, v3}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 369
    invoke-virtual {v6, v12}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v6, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v9

    if-nez v9, :cond_7

    .line 371
    :cond_6
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Server refused checkin"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 361
    .end local v6           #parsed:Lcom/google/common/io/protocol/ProtoBuf;
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 362
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v5, Ljava/io/IOException;

    const-string v9, "Can\'t parse checkin response"

    invoke-direct {v5, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 363
    .local v5, ioe:Ljava/io/IOException;
    invoke-virtual {v5, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 364
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v5           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v9

    .line 374
    .restart local v6       #parsed:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_7
    return-object v6
.end method

.method private static sendRequest(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/client/HttpClient;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 10
    .parameter "params"
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v6, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 271
    .local v4, httpRequest:Lorg/apache/http/client/methods/HttpPost;
    const-string v6, "Content-type"

    const-string v7, "application/x-protobuffer"

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 274
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 275
    .local v3, gzipos:Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 276
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 278
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 279
    .local v2, entity:Lorg/apache/http/entity/ByteArrayEntity;
    const-string v6, "gzip"

    invoke-virtual {v2, v6}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 281
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :try_start_0
    const-string v6, "CheckinTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending checkin request ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/http/entity/ByteArrayEntity;->getContentLength()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-interface {p1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 293
    .local v5, httpResponse:Lorg/apache/http/HttpResponse;
    :goto_0
    invoke-static {p0, v5}, Lcom/google/android/gsf/checkin/CheckinTask;->parseResponse(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/HttpResponse;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    return-object v6

    .line 287
    .end local v5           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 288
    .local v1, e:Ljavax/net/ssl/SSLException;
    const-string v6, "CheckinTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSL error, attempting time correction: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {p1, p0}, Lcom/google/android/gsf/checkin/CheckinTask;->maybeSetTime(Lorg/apache/http/client/HttpClient;Lcom/google/android/gsf/checkin/CheckinTask$Params;)Z

    move-result v6

    if-nez v6, :cond_0

    throw v1

    .line 290
    :cond_0
    invoke-interface {p1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .restart local v5       #httpResponse:Lorg/apache/http/HttpResponse;
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/gsf/checkin/CheckinTask$Params;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 30
    .parameter "args"

    .prologue
    .line 130
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    new-instance v26, Ljava/lang/IllegalArgumentException;

    const-string v27, "Must be one Params object"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 131
    :cond_0
    const/16 v26, 0x0

    aget-object v20, p1, v26

    .line 133
    .local v20, params:Lcom/google/android/gsf/checkin/CheckinTask$Params;
    const/4 v7, 0x0

    .line 134
    .local v7, client:Lcom/google/android/common/http/GoogleHttpClient;
    const/4 v9, 0x0

    .line 135
    .local v9, combined:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v10, 0x0

    .line 138
    .local v10, count:I
    const-wide/16 v5, 0x0

    .line 139
    .local v5, bookmark:J
    :try_start_0
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "CheckinTask_bookmark"

    const-wide/16 v28, 0x0

    invoke-interface/range {v26 .. v29}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 141
    :cond_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->marketData:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 142
    .local v17, marketData:Ljava/lang/String;
    if-eqz v17, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 143
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "CheckinTask_marketData"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 144
    .local v16, lastMarketData:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    const/16 v17, 0x0

    .line 147
    .end local v16           #lastMarketData:Ljava/lang/String;
    :cond_2
    new-instance v8, Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "Android-Checkin/2.0"

    const/16 v28, 0x1

    move-object v0, v8

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v7           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .local v8, client:Lcom/google/android/common/http/GoogleHttpClient;
    :goto_0
    :try_start_1
    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxRequests:I

    move/from16 v26, v0

    move v0, v10

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 150
    move-wide/from16 v18, v5

    .line 151
    .local v18, oldBookmark:J
    invoke-static {}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->newRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v21

    .line 152
    .local v21, request:Lcom/google/common/io/protocol/ProtoBuf;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-wide v2, v5

    move-object/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/checkin/CheckinTask;->makeRequest(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lcom/google/common/io/protocol/ProtoBuf;JLjava/lang/String;)J

    move-result-wide v5

    .line 153
    cmp-long v26, v18, v5

    if-nez v26, :cond_6

    if-lez v10, :cond_6

    .line 210
    .end local v18           #oldBookmark:J
    .end local v21           #request:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_3
    const-string v26, "CheckinTask"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Checkin success: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " requests sent)"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/common/OperationScheduler;->onSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :cond_4
    if-eqz v8, :cond_11

    invoke-virtual {v8}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    move-object v7, v8

    .line 219
    .end local v8           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .end local v17           #marketData:Ljava/lang/String;
    .restart local v7       #client:Lcom/google/android/common/http/GoogleHttpClient;
    :cond_5
    :goto_1
    return-object v9

    .line 155
    .end local v7           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v8       #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v17       #marketData:Ljava/lang/String;
    .restart local v18       #oldBookmark:J
    .restart local v21       #request:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_6
    :try_start_2
    move-object/from16 v0, v20

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/checkin/CheckinTask;->sendRequest(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/client/HttpClient;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v22

    .line 156
    .local v22, response:Lcom/google/common/io/protocol/ProtoBuf;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 157
    :cond_7
    if-nez v9, :cond_e

    move-object/from16 v9, v22

    .line 159
    :goto_2
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 160
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 162
    .local v14, edit:Landroid/content/SharedPreferences$Editor;
    const-string v26, "CheckinTask_bookmark"

    move-object v0, v14

    move-object/from16 v1, v26

    move-wide v2, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 164
    if-eqz v22, :cond_9

    const/16 v26, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 167
    const/16 v26, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v24

    .line 168
    .local v24, value:J
    const-wide/16 v26, 0x0

    cmp-long v26, v24, v26

    if-eqz v26, :cond_9

    .line 170
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "CheckinTask_securityToken"

    const-wide/16 v28, 0x0

    invoke-interface/range {v26 .. v29}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v26

    cmp-long v26, v24, v26

    if-eqz v26, :cond_8

    .line 171
    const-string v26, "CheckinTask_securityToken"

    move-object v0, v14

    move-object/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 175
    :cond_8
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    .line 176
    .local v11, dir:Ljava/io/File;
    new-instance v23, Ljava/io/File;

    const-string v26, "security_token"

    move-object/from16 v0, v23

    move-object v1, v11

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .local v23, tokenFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_9

    .line 178
    new-instance v12, Ljava/io/DataOutputStream;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "security_token"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v26

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 182
    .local v12, dos:Ljava/io/DataOutputStream;
    move-object v0, v12

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 183
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    .line 188
    .end local v11           #dir:Ljava/io/File;
    .end local v12           #dos:Ljava/io/DataOutputStream;
    .end local v23           #tokenFile:Ljava/io/File;
    .end local v24           #value:J
    :cond_9
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    .end local v14           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_a
    if-eqz v22, :cond_b

    .line 192
    invoke-static/range {v22 .. v22}, Lcom/google/android/gsf/checkin/CheckinResponseProcessor;->getGservices(Lcom/google/common/io/protocol/ProtoBuf;)Landroid/content/ContentValues;

    move-result-object v15

    .line 193
    .local v15, gs:Landroid/content/ContentValues;
    if-eqz v15, :cond_b

    .line 194
    const-string v26, "CheckinTask"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "From server: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v15}, Landroid/content/ContentValues;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " gservices"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    sget-object v27, Lcom/google/android/gsf/gservices/GservicesProvider;->UPDATE_MAIN_URI:Landroid/net/Uri;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v15

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 200
    .end local v15           #gs:Landroid/content/ContentValues;
    :cond_b
    if-eqz v17, :cond_d

    const/16 v26, 0x6

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v26

    if-eqz v26, :cond_d

    const/16 v26, 0x6

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 203
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 204
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    const-string v27, "CheckinTask_marketData"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    :cond_c
    const/16 v17, 0x0

    .line 149
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 157
    :cond_e
    move-object v0, v9

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gsf/checkin/CheckinTask;->combineResponses(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v26

    move-object/from16 v9, v26

    goto/16 :goto_2

    .line 212
    .end local v8           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .end local v17           #marketData:Ljava/lang/String;
    .end local v18           #oldBookmark:J
    .end local v21           #request:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v22           #response:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v7       #client:Lcom/google/android/common/http/GoogleHttpClient;
    :catch_0
    move-exception v26

    move-object/from16 v13, v26

    .line 213
    .local v13, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v26, "CheckinTask"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Checkin failed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " (request #"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_f

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/common/OperationScheduler;->onTransientError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    :cond_f
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    goto/16 :goto_1

    .end local v13           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v26

    :goto_4
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    :cond_10
    throw v26

    .end local v7           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v8       #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v17       #marketData:Ljava/lang/String;
    :catchall_1
    move-exception v26

    move-object v7, v8

    .end local v8           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v7       #client:Lcom/google/android/common/http/GoogleHttpClient;
    goto :goto_4

    .line 212
    .end local v7           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v8       #client:Lcom/google/android/common/http/GoogleHttpClient;
    :catch_1
    move-exception v26

    move-object/from16 v13, v26

    move-object v7, v8

    .end local v8           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v7       #client:Lcom/google/android/common/http/GoogleHttpClient;
    goto :goto_3

    .end local v7           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v8       #client:Lcom/google/android/common/http/GoogleHttpClient;
    :cond_11
    move-object v7, v8

    .end local v8           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v7       #client:Lcom/google/android/common/http/GoogleHttpClient;
    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    check-cast p1, [Lcom/google/android/gsf/checkin/CheckinTask$Params;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/CheckinTask;->doInBackground([Lcom/google/android/gsf/checkin/CheckinTask$Params;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method
