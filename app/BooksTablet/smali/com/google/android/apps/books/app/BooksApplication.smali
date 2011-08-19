.class public Lcom/google/android/apps/books/app/BooksApplication;
.super Landroid/app/Application;
.source "BooksApplication.java"

# interfaces
.implements Lcom/google/android/apps/books/common/BooksContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/BooksApplication$AccountParams;
    }
.end annotation


# static fields
.field public static final ACTION_READ:Ljava/lang/String; = "com.google.android.apps.books.intent.action.READ"

.field private static final LOG_TAG:Ljava/lang/String; = "BooksApp"


# instance fields
.field private mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private mConfig:Lcom/google/android/apps/books/util/Config;

.field private mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

.field private mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mImageManager:Lcom/google/android/apps/books/app/BooksImageManager;

.field private mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

.field private mVolumeCoverFetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 243
    new-instance v0, Lcom/google/android/apps/books/service/SyncService$StubSyncUi;

    invoke-direct {v0}, Lcom/google/android/apps/books/service/SyncService$StubSyncUi;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

    return-void
.end method

.method public static getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;
    .locals 1
    .parameter "context"

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/books/app/BooksApplication;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig()Lcom/google/android/apps/books/util/Config;

    move-result-object v0

    return-object v0
.end method

.method public static getResponseGetter(Landroid/content/Context;)Lcom/google/android/apps/books/net/ResponseGetter;
    .locals 1
    .parameter "context"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/books/app/BooksApplication;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v0

    return-object v0
.end method

.method public static onSearchClick(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/google/android/apps/books/util/Config;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mConfig:Lcom/google/android/apps/books/util/Config;

    return-object v0
.end method

.method public declared-synchronized getFileStorageManager()Lcom/google/android/apps/books/common/FileStorageManager;
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 7

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    monitor-exit p0

    return-object v3

    .line 123
    :cond_0
    :try_start_1
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 125
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/16 v3, 0x4e20

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 126
    const/16 v3, 0x4e20

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 127
    const/16 v3, 0x2000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 129
    const/4 v3, 0x5

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 131
    invoke-static {p0}, Lcom/google/android/apps/books/util/HttpHeaderUtils;->buildUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, agent:Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 134
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 135
    .local v2, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 137
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 140
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 143
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksApplication;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {v3, v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 146
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/google/android/apps/books/net/CurlInterceptor;

    invoke-direct {v4}, Lcom/google/android/apps/books/net/CurlInterceptor;-><init>()V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 147
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/google/android/apps/books/net/GoogleRedirectHandler;

    invoke-direct {v4}, Lcom/google/android/apps/books/net/GoogleRedirectHandler;-><init>()V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 149
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    .end local v0           #agent:Ljava/lang/String;
    .end local v1           #params:Lorg/apache/http/params/HttpParams;
    .end local v2           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getImageManager()Lcom/google/android/apps/books/common/ImageManager;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mImageManager:Lcom/google/android/apps/books/app/BooksImageManager;

    return-object v0
.end method

.method public declared-synchronized getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;
    .locals 4

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_0
    monitor-exit p0

    return-object v3

    .line 155
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 156
    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 157
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/app/BooksApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 159
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    new-instance v3, Lcom/google/android/apps/books/net/ResponseGetter;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/apps/books/net/ResponseGetter;-><init>(Lorg/apache/http/client/HttpClient;Landroid/net/ConnectivityManager;Landroid/accounts/AccountManager;)V

    iput-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 160
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksApplication;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #httpClient:Lorg/apache/http/client/HttpClient;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getSyncUi()Lcom/google/android/apps/books/service/SyncService$SyncUi;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

    return-object v0
.end method

.method public getVolumeCoverFetchDispatcher()Lcom/google/android/apps/books/sync/FetchDispatcher;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mVolumeCoverFetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 76
    new-instance v0, Lcom/google/android/apps/books/common/FileStorageManager;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/common/FileStorageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 82
    move-object v6, p0

    .line 83
    .local v6, context:Landroid/content/Context;
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/google/android/apps/books/service/SetSyncableService;

    invoke-direct {v7, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v7, service:Landroid/content/Intent;
    invoke-virtual {v6, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 86
    invoke-static {p0}, Lcom/google/android/apps/books/net/BooksCache;->install(Landroid/content/Context;)V

    .line 88
    new-instance v0, Lcom/google/android/apps/books/app/BooksImageManager;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/BooksImageManager;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mImageManager:Lcom/google/android/apps/books/app/BooksImageManager;

    .line 90
    invoke-static {p0}, Lcom/google/android/apps/books/util/Config;->buildFrom(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 92
    new-instance v8, Lcom/google/android/apps/books/sync/FetchDispatcher;

    new-instance v0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getFileStorageManager()Lcom/google/android/apps/books/common/FileStorageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig()Lcom/google/android/apps/books/util/Config;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;-><init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;)V

    invoke-direct {v8, v0}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;)V

    iput-object v8, p0, Lcom/google/android/apps/books/app/BooksApplication;->mVolumeCoverFetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 95
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mImageManager:Lcom/google/android/apps/books/app/BooksImageManager;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksImageManager;->onLowMemory()V

    .line 113
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 105
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 106
    return-void
.end method
