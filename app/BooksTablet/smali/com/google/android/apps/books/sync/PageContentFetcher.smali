.class public Lcom/google/android/apps/books/sync/PageContentFetcher;
.super Ljava/lang/Object;
.source "PageContentFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "PageContentFetcher"


# instance fields
.field private final mConfig:Lcom/google/android/apps/books/util/Config;

.field private final mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

.field private final mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;)V
    .locals 1
    .parameter "responseGetter"
    .parameter "resolver"
    .parameter "keyFactory"
    .parameter "fsm"
    .parameter "config"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "missing responseGetter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 63
    const-string v0, "missing resolver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 64
    const-string v0, "missing keyFactory"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/SessionKeyFactory;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    .line 65
    const-string v0, "missing fileStorageManager"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/FileStorageManager;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 66
    const-string v0, "missing config"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Config;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 67
    return-void
.end method

.method private static buildPageUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "pageContentUri"

    .prologue
    .line 285
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, volumeId:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, pageId:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static fetchPageContent(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/Config;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/util/SessionKeyFactory;)Lorg/apache/http/HttpEntity;
    .locals 1
    .parameter "pageContentUri"
    .parameter "account"
    .parameter "volumeId"
    .parameter "query"
    .parameter "k_sData"
    .parameter "resolver"
    .parameter "config"
    .parameter "responseGetter"
    .parameter "keyFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const-string v0, "missing responseGetter"

    invoke-static {p7, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "missing resolver"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "missing keyFactory"

    invoke-static {p8, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "missing config"

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {p0}, Lcom/google/android/apps/books/sync/PageContentFetcher;->buildPageUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .end local p0
    const-string v0, "remote_url"

    invoke-static {p5, p0, v0}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 143
    .local p0, remoteUrl:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/apps/books/net/GoogleContentHandler;->resolveRelativeBooksUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-static {p0, p6}, Lcom/google/android/apps/books/net/GoogleContentHandler;->setSourceParameter(Ljava/lang/String;Lcom/google/android/apps/books/util/Config;)Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .end local p0           #remoteUrl:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 149
    .local p0, remoteBuilder:Landroid/net/Uri$Builder;
    const-string p5, "cp_ksver"

    .end local p5
    iget-object p6, p4, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    .end local p6
    invoke-virtual {p0, p5, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 155
    const-string p5, "w"

    const-string p6, "720"

    invoke-virtual {p0, p5, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 158
    if-eqz p3, :cond_0

    .line 159
    const-string p5, "q"

    invoke-virtual {p0, p5, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .end local p0           #remoteBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 165
    .local p0, remoteTarget:Ljava/lang/String;
    const/4 p3, 0x0

    :try_start_0
    new-array p3, p3, [I

    .end local p3
    invoke-virtual {p7, p0, p1, p3}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 166
    .local p0, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .end local p0           #resp:Lorg/apache/http/HttpResponse;
    return-object p0

    .line 167
    :catch_0
    move-exception p0

    .line 171
    .local p0, e:Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;
    iget-object p1, p4, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    .end local p1
    invoke-virtual {p8, p1, p2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->removeSessionKeyAndWipeContents(Landroid/net/Uri;Ljava/lang/String;)V

    .line 172
    new-instance p1, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsuported session key version: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p4, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private fetchPageMetadata(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 19
    .parameter "volumeId"
    .parameter "pageId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v16

    const-string v17, "books"

    invoke-virtual/range {v16 .. v17}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    const-string v17, "volumes"

    invoke-virtual/range {v16 .. v17}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    const-string v17, "content"

    invoke-virtual/range {v16 .. v17}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    const-string v17, "image"

    invoke-virtual/range {v16 .. v17}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    const-string v17, "start"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    const-string v17, "num"

    const-string v18, "1"

    invoke-virtual/range {v16 .. v18}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 231
    .local v13, remoteUrl:Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/apps/books/net/GoogleContentHandler;->resolveRelativeBooksUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    move-object/from16 v16, v0

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/GoogleContentHandler;->setSourceParameter(Ljava/lang/String;Lcom/google/android/apps/books/util/Config;)Ljava/lang/String;

    move-result-object v13

    .line 234
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 239
    .local v11, remoteBuilder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v5

    .line 240
    .local v5, data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    const-string v16, "cp_ksver"

    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 242
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 244
    .local v12, remoteTarget:Ljava/lang/String;
    const/4 v7, 0x0

    .line 246
    .local v7, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object v1, v12

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 247
    .local v14, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 248
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 249
    .local v15, status:I
    const/16 v16, 0xc8

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 250
    new-instance v16, Lorg/apache/http/client/HttpResponseException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unexpected server response "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move v1, v15

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 264
    .end local v14           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_0
    move-exception v16

    move-object/from16 v6, v16

    .line 268
    .local v6, e:Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v16, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->removeSessionKeyAndWipeContents(Landroid/net/Uri;Ljava/lang/String;)V

    .line 269
    new-instance v16, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unsuported session key version: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    .end local v6           #e:Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;
    :catchall_0
    move-exception v16

    if-eqz v7, :cond_0

    .line 279
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_0
    throw v16

    .line 254
    .restart local v14       #resp:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_1
    :try_start_2
    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v10

    .line 255
    .local v10, payloadRaw:Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 257
    .local v9, payload:Lorg/json/JSONObject;
    invoke-static {v9}, Lcom/google/android/apps/books/util/BlockedContentReason;->assertNotBlocked(Lorg/json/JSONObject;)V

    .line 259
    const-string v16, "page"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 260
    .local v8, pages:Lorg/json/JSONArray;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 261
    .local v4, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->parsePages(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "com.google.android.apps.books"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_3

    .line 278
    if-eqz v7, :cond_2

    .line 279
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 282
    :cond_2
    return-void

    .line 271
    .end local v4           #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v8           #pages:Lorg/json/JSONArray;
    .end local v9           #payload:Lorg/json/JSONObject;
    .end local v10           #payloadRaw:Ljava/lang/String;
    .end local v14           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_1
    move-exception v16

    move-object/from16 v6, v16

    .line 272
    .local v6, e:Lorg/json/JSONException;
    :try_start_3
    new-instance v16, Lorg/apache/http/client/ClientProtocolException;

    const-string v17, "problem reading json pages"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 273
    .end local v6           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v16

    move-object/from16 v6, v16

    .line 274
    .local v6, e:Landroid/os/RemoteException;
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "Problem inserting update"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 275
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v16

    move-object/from16 v6, v16

    .line 276
    .local v6, e:Landroid/content/OperationApplicationException;
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "Problem inserting update"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private parsePageContent(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;)V
    .locals 11
    .parameter "volumeId"
    .parameter "pageId"
    .parameter "entity"
    .parameter "k_sData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v8, "session_key_id"

    .line 186
    iget-object v8, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    invoke-virtual {v8}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 187
    .local v2, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 189
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 190
    .local v0, contentUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "wt"

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 191
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 193
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-interface {p3, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 199
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "content_status"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    if-eqz p4, :cond_0

    .line 204
    iget-object v8, p4, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    invoke-static {v8}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->getSessionKeyId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 205
    .local v5, sessionKeyId:J
    const-string v8, "session_key_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    .end local v5           #sessionKeyId:J
    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 211
    .local v4, pageUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v4, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 215
    return-void

    .line 195
    .end local v4           #pageUri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v8

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v3           #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8

    .line 207
    .restart local v0       #contentUri:Landroid/net/Uri;
    .restart local v1       #fd:Landroid/content/res/AssetFileDescriptor;
    .restart local v3       #out:Ljava/io/OutputStream;
    .restart local v7       #values:Landroid/content/ContentValues;
    :cond_0
    :try_start_4
    const-string v8, "session_key_id"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .locals 12
    .parameter "pageContentUri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "PageContentFetcher"

    .line 88
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, volumeId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v11, pageId:Ljava/lang/String;
    const-string v0, "missing volumeId"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "missing pageId"

    invoke-static {v11, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "missing account"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "PageContentFetcher"

    const/4 v0, 0x3

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "PageContentFetcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetching vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    invoke-direct {p0, v2, v11, p2}, Lcom/google/android/apps/books/sync/PageContentFetcher;->fetchPageMetadata(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    invoke-virtual {v0, p2, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v4

    .line 105
    .local v4, k_sData:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    const/4 v10, 0x0

    .line 107
    .local v10, entity:Lorg/apache/http/HttpEntity;
    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    iget-object v7, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    iget-object v8, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/books/sync/PageContentFetcher;->fetchPageContent(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/Config;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/util/SessionKeyFactory;)Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 112
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, contentType:Ljava/lang/String;
    const-string v0, "image/gif"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "PageContentFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested encrypted content, but response was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v4, 0x0

    .line 117
    :cond_1
    invoke-direct {p0, v2, v11, v10, v4}, Lcom/google/android/apps/books/sync/PageContentFetcher;->parsePageContent(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz v10, :cond_2

    .line 120
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 122
    :cond_2
    return-void

    .line 119
    .end local v9           #contentType:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    .line 120
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_3
    throw v0
.end method

.method public isAlreadyFetched(Landroid/net/Uri;)Z
    .locals 5
    .parameter "pageContentUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 73
    iget-object v1, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/apps/books/sync/PageContentFetcher;->buildPageUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "content_status"

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    .local v0, status:I
    packed-switch v0, :pswitch_data_0

    .line 82
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_1
    move v1, v4

    .line 77
    goto :goto_0

    .line 79
    :pswitch_2
    const-string v1, "PageContentFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content status unavailable for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 80
    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
