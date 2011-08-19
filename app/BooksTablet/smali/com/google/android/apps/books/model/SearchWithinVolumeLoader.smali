.class public Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;
.super Landroid/content/CursorLoader;
.source "SearchWithinVolumeLoader.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mQuery:Ljava/lang/String;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "projection"
    .parameter "account"
    .parameter "volumeId"
    .parameter "query"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->setProjection([Ljava/lang/String;)V

    .line 41
    const-string v0, "missing account"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->mAccount:Landroid/accounts/Account;

    .line 42
    const-string v0, "missing volumeId"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->mVolumeId:Ljava/lang/String;

    .line 43
    const-string v0, "query"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->mQuery:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 13

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 49
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksApplication;->getResponseGetter(Landroid/content/Context;)Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v9

    .line 51
    .local v9, responseGetter:Lcom/google/android/apps/books/net/ResponseGetter;
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v0

    .line 52
    .local v0, config:Lcom/google/android/apps/books/util/Config;
    iget-object v11, p0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->mVolumeId:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->mQuery:Ljava/lang/String;

    invoke-static {v0, v11, v12}, Lcom/google/android/apps/books/util/OceanUris;->buildSearchWithinVolumeUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 54
    .local v4, remoteUrl:Landroid/net/Uri;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 55
    .local v5, req:Lorg/apache/http/client/methods/HttpGet;
    iget-object v11, p0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->mAccount:Landroid/accounts/Account;

    invoke-static {v5, v11}, Lcom/google/android/apps/books/app/BooksApplication$AccountParams;->setAccount(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;)V

    .line 58
    :try_start_0
    iget-object v11, p0, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->mAccount:Landroid/accounts/Account;

    const/4 v12, 0x0

    new-array v12, v12, [I

    invoke-virtual {v9, v5, v11, v12}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 59
    .local v6, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 62
    .local v3, entity:Lorg/apache/http/HttpEntity;
    :try_start_1
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, respString:Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    .local v7, respJson:Lorg/json/JSONObject;
    const-string v11, "search_results"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 66
    .local v10, searchResults:Lorg/json/JSONArray;
    new-instance v11, Lcom/google/android/apps/books/util/JSONCursor;

    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->getProjection()[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v10}, Lcom/google/android/apps/books/util/JSONCursor;-><init>([Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    if-eqz v3, :cond_0

    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 73
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #resp:Lorg/apache/http/HttpResponse;
    .end local v7           #respJson:Lorg/json/JSONObject;
    .end local v8           #respString:Ljava/lang/String;
    .end local v10           #searchResults:Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-object v11

    .line 68
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    .restart local v6       #resp:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v11

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_1
    throw v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #resp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v11

    move-object v2, v11

    .line 71
    .local v2, e:Ljava/io/IOException;
    new-instance v11, Lcom/google/android/apps/books/util/ExceptionCursor;

    invoke-direct {v11, v2}, Lcom/google/android/apps/books/util/ExceptionCursor;-><init>(Ljava/lang/Exception;)V

    goto :goto_0

    .line 72
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v11

    move-object v2, v11

    .line 73
    .local v2, e:Lorg/json/JSONException;
    new-instance v11, Lcom/google/android/apps/books/util/ExceptionCursor;

    invoke-direct {v11, v2}, Lcom/google/android/apps/books/util/ExceptionCursor;-><init>(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SearchWithinVolumeLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
