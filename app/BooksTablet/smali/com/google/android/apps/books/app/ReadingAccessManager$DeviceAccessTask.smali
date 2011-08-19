.class final Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;
.super Landroid/os/AsyncTask;
.source "ReadingAccessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReadingAccessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceAccessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/apps/books/net/DeviceAccess;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_DELAY_MILLIS:J = 0xea60L

.field private static final OVERHEAD_MILLIS:J = 0x3a98L


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/ReadingAccessManager;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/ReadingAccessManager;Lcom/google/android/apps/books/app/ReadingAccessManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;-><init>(Lcom/google/android/apps/books/app/ReadingAccessManager;)V

    return-void
.end method

.method private requestDeviceAccess(Lorg/apache/http/client/methods/HttpPost;)Lcom/google/android/apps/books/net/DeviceAccess;
    .locals 13
    .parameter "post"

    .prologue
    .line 238
    new-instance v3, Lcom/google/android/apps/books/net/ListKeyValueHandler;

    invoke-direct {v3}, Lcom/google/android/apps/books/net/ListKeyValueHandler;-><init>()V

    .line 240
    .local v3, keyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;,"Lcom/google/android/apps/books/net/KeyValueHandler<Ljava/util/List<Landroid/content/ContentValues;>;>;"
    new-instance v1, Lcom/google/android/apps/books/net/VolumesContentHandler;

    const/4 v8, 0x0

    invoke-direct {v1, v8, v3}, Lcom/google/android/apps/books/net/VolumesContentHandler;-><init>(ZLcom/google/android/apps/books/net/KeyValueHandler;)V

    .line 243
    .local v1, contentHandler:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v4, 0x0

    .line 245
    .local v4, resp:Lorg/apache/http/HttpResponse;
    :try_start_0
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$400(Lcom/google/android/apps/books/app/ReadingAccessManager;)Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v9}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$600(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/accounts/Account;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/16 v12, 0xc9

    aput v12, v10, v11

    invoke-virtual {v8, p1, v9, v10}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 246
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/apps/books/net/HttpUtils;->parseXml(Lorg/apache/http/HttpEntity;Lorg/xml/sax/ContentHandler;)V

    .line 247
    invoke-virtual {v1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->getContent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 248
    .local v7, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 249
    const-string v8, "ReadingAccessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad device-access valuesList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v8, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 267
    if-eqz v4, :cond_0

    .line 268
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 269
    .local v5, respEntity:Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_0

    .line 271
    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    .end local v5           #respEntity:Lorg/apache/http/HttpEntity;
    .end local v7           #valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    return-object v8

    .line 272
    .restart local v5       #respEntity:Lorg/apache/http/HttpEntity;
    .restart local v7       #valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 273
    .local v2, e:Ljava/io/IOException;
    const-string v9, "ReadingAccessManager"

    const-string v10, "Error consuming content"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 252
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #respEntity:Lorg/apache/http/HttpEntity;
    :cond_1
    const/4 v8, 0x0

    :try_start_2
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 253
    .local v6, values:Landroid/content/ContentValues;
    invoke-static {v6}, Lcom/google/android/apps/books/net/DeviceAccess;->newInstance(Landroid/content/ContentValues;)Lcom/google/android/apps/books/net/DeviceAccess;

    move-result-object v0

    .line 254
    .local v0, access:Lcom/google/android/apps/books/net/DeviceAccess;
    const-string v8, "ReadingAccessManager"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 255
    const-string v8, "ReadingAccessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Normal access retrieval: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/apps/books/net/DeviceAccess;->isUnrestricted()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v0}, Lcom/google/android/apps/books/net/DeviceAccess;->isAllowed()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 260
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    iget-object v9, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v9}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$300(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/books/util/GservicesHelper;->shouldReleaseAccessLock(Landroid/content/ContentResolver;)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$702(Lcom/google/android/apps/books/app/ReadingAccessManager;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 267
    :cond_3
    if-eqz v4, :cond_4

    .line 268
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 269
    .restart local v5       #respEntity:Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_4

    .line 271
    :try_start_3
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v5           #respEntity:Lorg/apache/http/HttpEntity;
    :cond_4
    :goto_1
    move-object v8, v0

    .line 276
    goto :goto_0

    .line 272
    .restart local v5       #respEntity:Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v2

    .line 273
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "ReadingAccessManager"

    const-string v9, "Error consuming content"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 263
    .end local v0           #access:Lcom/google/android/apps/books/net/DeviceAccess;
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #respEntity:Lorg/apache/http/HttpEntity;
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_2
    move-exception v8

    move-object v2, v8

    .line 264
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_4
    const-string v8, "ReadingAccessManager"

    const-string v9, "Error requesting or processing device access"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    sget-object v8, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 267
    if-eqz v4, :cond_0

    .line 268
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 269
    .restart local v5       #respEntity:Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_0

    .line 271
    :try_start_5
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 272
    :catch_3
    move-exception v2

    .line 273
    const-string v9, "ReadingAccessManager"

    const-string v10, "Error consuming content"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 267
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #respEntity:Lorg/apache/http/HttpEntity;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_5

    .line 268
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 269
    .restart local v5       #respEntity:Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_5

    .line 271
    :try_start_6
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 276
    .end local v5           #respEntity:Lorg/apache/http/HttpEntity;
    :cond_5
    :goto_2
    throw v8

    .line 272
    .restart local v5       #respEntity:Lorg/apache/http/HttpEntity;
    :catch_4
    move-exception v2

    .line 273
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "ReadingAccessManager"

    const-string v10, "Error consuming content"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/books/net/DeviceAccess;
    .locals 12
    .parameter "voids"

    .prologue
    const/4 v11, 0x4

    const-string v10, "ReadingAccessManager"

    .line 176
    const-string v8, "ReadingAccessManager"

    const/4 v8, 0x3

    invoke-static {v10, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 177
    const-string v8, "ReadingAccessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking device access for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v9}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$200(Lcom/google/android/apps/books/app/ReadingAccessManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$300(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/books/util/GservicesHelper;->shouldGetAccessLock(Landroid/content/ContentResolver;)Z

    move-result v6

    .line 183
    .local v6, shouldGetAccessLock:Z
    if-nez v6, :cond_2

    .line 184
    const-string v8, "ReadingAccessManager"

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 185
    const-string v8, "ReadingAccessManager"

    const-string v8, "Skipping concurrent access check due to Gservices"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    sget-object v8, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;

    .line 230
    :goto_0
    return-object v8

    .line 190
    :cond_2
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$400(Lcom/google/android/apps/books/app/ReadingAccessManager;)Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/books/net/ResponseGetter;->isConnected()Z

    move-result v8

    if-nez v8, :cond_4

    .line 191
    const-string v8, "ReadingAccessManager"

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 192
    const-string v8, "ReadingAccessManager"

    const-string v8, "Device offline, using default access"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_3
    sget-object v8, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;

    goto :goto_0

    .line 197
    :cond_4
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$500(Lcom/google/android/apps/books/app/ReadingAccessManager;)Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;->getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v3

    .line 199
    .local v3, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    if-nez v3, :cond_5

    .line 200
    const-string v8, "ReadingAccessManager"

    const-string v8, "No fetch service yet, using default access"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v8, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;

    goto :goto_0

    .line 206
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/apps/books/service/ContentFetchService;->getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v4

    .line 209
    .local v4, keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    :try_start_0
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$600(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/accounts/Account;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v9}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$200(Lcom/google/android/apps/books/app/ReadingAccessManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 215
    .local v1, data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    invoke-static {}, Lcom/google/android/apps/books/util/OceanUris;->getMyVolumesUrl()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 216
    .local v7, uriBuilder:Landroid/net/Uri$Builder;
    const-string v8, "access"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 217
    const-string v8, "cp-ksver"

    iget-object v9, v1, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 221
    :try_start_1
    invoke-static {}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->newInstance()Lcom/google/android/apps/books/util/OceanXmlBuilder;

    move-result-object v0

    .line 222
    .local v0, builder:Lcom/google/android/apps/books/util/OceanXmlBuilder;
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$200(Lcom/google/android/apps/books/app/ReadingAccessManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->startVolumeEntry(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->endEntry()V

    .line 224
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$600(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/accounts/Account;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->buildPost(Landroid/accounts/Account;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 230
    .local v5, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0, v5}, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->requestDeviceAccess(Lorg/apache/http/client/methods/HttpPost;)Lcom/google/android/apps/books/net/DeviceAccess;

    move-result-object v8

    goto/16 :goto_0

    .line 210
    .end local v0           #builder:Lcom/google/android/apps/books/util/OceanXmlBuilder;
    .end local v1           #data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    .end local v5           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v7           #uriBuilder:Landroid/net/Uri$Builder;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 211
    .local v2, e:Ljava/io/IOException;
    const-string v8, "ReadingAccessManager"

    const-string v8, "Error finding session key"

    invoke-static {v10, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    sget-object v8, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;

    goto/16 :goto_0

    .line 225
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    .restart local v7       #uriBuilder:Landroid/net/Uri$Builder;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 226
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "ReadingAccessManager"

    const-string v8, "Error building device-access XML"

    invoke-static {v10, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    sget-object v8, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/books/net/DeviceAccess;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/apps/books/net/DeviceAccess;)V
    .locals 8
    .parameter "access"

    .prologue
    const-string v6, "ReadingAccessManager"

    .line 282
    const-string v4, "ReadingAccessManager"

    const/4 v4, 0x3

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    const-string v4, "ReadingAccessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got device access "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/apps/books/net/DeviceAccess;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$800(Lcom/google/android/apps/books/app/ReadingAccessManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/google/android/apps/books/net/DeviceAccess;->isUnrestricted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/DeviceAccess;->isAllowed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 293
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/DeviceAccess;->getSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    .line 294
    .local v0, millis:J
    const-wide/16 v4, 0x3a98

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 295
    .local v2, safeMillis:J
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$900(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 297
    .end local v0           #millis:J
    .end local v2           #safeMillis:J
    :cond_3
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$500(Lcom/google/android/apps/books/app/ReadingAccessManager;)Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/apps/books/net/DeviceAccess;->getMaxDevices()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-interface {v4, v5}, Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;->accessDenied(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    check-cast p1, Lcom/google/android/apps/books/net/DeviceAccess;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->onPostExecute(Lcom/google/android/apps/books/net/DeviceAccess;)V

    return-void
.end method
