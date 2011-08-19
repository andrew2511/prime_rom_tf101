.class public Lcom/google/android/youtube/app/YouTubeApplication;
.super Lcom/google/android/youtube/core/BaseApplication;
.source "YouTubeApplication.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;


# static fields
.field private static instance:Lcom/google/android/youtube/app/YouTubeApplication;


# instance fields
.field private currentUsername:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private distributionChannel:Ljava/lang/String;

.field private platform:Lcom/google/android/youtube/app/Platform;

.field private recentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private requesters:Lcom/google/android/youtube/app/DefaultRequesters;

.field private searchHistoryDb:Lcom/google/android/youtube/app/suggest/HistoryDb;

.field private termsAccepted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/youtube/core/BaseApplication;-><init>()V

    .line 64
    sput-object p0, Lcom/google/android/youtube/app/YouTubeApplication;->instance:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/app/YouTubeApplication;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->currentUsername:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/YouTubeApplication;)Lcom/google/android/youtube/app/DefaultRequesters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->requesters:Lcom/google/android/youtube/app/DefaultRequesters;

    return-object v0
.end method

.method private createPlatform()V
    .locals 4

    .prologue
    .line 130
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 131
    const-string v2, "com.google.android.youtube.app.froyo.PlatformImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 135
    .local v1, platformClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/Platform;

    iput-object v2, p0, Lcom/google/android/youtube/app/YouTubeApplication;->platform:Lcom/google/android/youtube/app/Platform;

    .line 139
    return-void

    .line 133
    .end local v1           #platformClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const-string v2, "com.google.android.youtube.app.honeycomb.PlatformImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1       #platformClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 136
    .end local v1           #platformClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 137
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Couldn\'t create platform util"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance()Lcom/google/android/youtube/app/YouTubeApplication;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 197
    sget-object v0, Lcom/google/android/youtube/app/YouTubeApplication;->instance:Lcom/google/android/youtube/app/YouTubeApplication;

    return-object v0
.end method

.method private maybeCleanCacheDir()V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 171
    .local v0, files:[Ljava/io/File;
    new-instance v1, Lcom/google/android/youtube/app/YouTubeApplication$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/app/YouTubeApplication$1;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;[Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication$1;->start()V

    .line 181
    .end local v0           #files:[Ljava/io/File;
    :cond_0
    return-void
.end method


# virtual methods
.method public areTermsAccepted()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->termsAccepted:Z

    return v0
.end method

.method public clearSearchHistory()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->searchHistoryDb:Lcom/google/android/youtube/app/suggest/HistoryDb;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->searchHistoryDb:Lcom/google/android/youtube/app/suggest/HistoryDb;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/suggest/HistoryDb;->clearHistory()V

    .line 257
    :cond_0
    return-void
.end method

.method protected getAnalyticsPropertyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->platform:Lcom/google/android/youtube/app/Platform;

    invoke-interface {v0}, Lcom/google/android/youtube/app/Platform;->getAnalyticsPropertyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistributionChannel()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->distributionChannel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->distributionChannel:Ljava/lang/String;

    .line 231
    :goto_0
    return-object v0

    .line 208
    :cond_0
    const-string v0, "mvapp-android-google"

    iput-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->distributionChannel:Ljava/lang/String;

    .line 209
    move-object v6, p0

    .line 214
    .local v6, context:Landroid/content/Context;
    invoke-virtual {v6}, Lcom/google/android/youtube/app/YouTubeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "value"

    aput-object v5, v2, v3

    const-string v3, "name=\'youtube_client_id\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 217
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->distributionChannel:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->distributionChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "mvapp-android-google"

    iput-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->distributionChannel:Ljava/lang/String;

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->distributionChannel:Ljava/lang/String;

    const-string v1, "mvapp-android-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mvapp-android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/YouTubeApplication;->distributionChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->distributionChannel:Ljava/lang/String;

    .line 230
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Distribution channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/YouTubeApplication;->distributionChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->distributionChannel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlatform()Lcom/google/android/youtube/app/Platform;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->platform:Lcom/google/android/youtube/app/Platform;

    return-object v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 242
    const-string v0, "[%s][%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "YouTube"

    return-object v0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->recentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getRequesters()Lcom/google/android/youtube/app/Requesters;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->requesters:Lcom/google/android/youtube/app/DefaultRequesters;

    return-object v0
.end method

.method public getRevShareClientId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "youtube_client_id"

    const-string v2, "android-google"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "Android-YouTube/2"

    return-object v0
.end method

.method public onCreate()V
    .locals 25

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->createPlatform()V

    .line 70
    invoke-super/range {p0 .. p0}, Lcom/google/android/youtube/core/BaseApplication;->onCreate()V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    .line 73
    .local v10, preferences:Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->isUpdate()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "terms_accepted"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/app/YouTubeApplication;->termsAccepted:Z

    .line 80
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getDistributionChannel()Ljava/lang/String;

    move-result-object v19

    .line 81
    .local v19, distributionChannel:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "distributionChannel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getPlatformId()Ljava/lang/String;

    move-result-object v22

    .line 83
    .local v22, platformId:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "platformId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 84
    new-instance v6, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;-><init>(Landroid/content/Context;)V

    invoke-static {v6}, Lcom/google/android/youtube/googlemobile/common/Config;->setConfig(Lcom/google/android/youtube/googlemobile/common/Config;)V

    .line 85
    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/Config;->getInstance()Lcom/google/android/youtube/googlemobile/common/Config;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/youtube/googlemobile/common/Config;->getConnectionFactory()Lcom/google/android/youtube/googlemobile/common/io/HttpConnectionFactory;

    move-result-object v20

    check-cast v20, Lcom/google/android/youtube/googlemobile/common/io/android/AndroidHttpConnectionFactory;

    .line 87
    .local v20, factory:Lcom/google/android/youtube/googlemobile/common/io/android/AndroidHttpConnectionFactory;
    const-string v6, "Android-YouTube/2"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/android/AndroidHttpConnectionFactory;->setUserAgent(Ljava/lang/String;)V

    .line 88
    const-string v21, "http://www.google.com/m/appreq/mobilevideo"

    .line 89
    .local v21, masfServerAddress:Ljava/lang/String;
    const-string v6, "youtube"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getApplicationVersion()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v22

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/googlemobile/masf/MobileServiceMux;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getApplicationVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/youtube/core/utils/Util;->getAndUpdateStartupType(Ljava/lang/String;Landroid/content/SharedPreferences;)Lcom/google/android/youtube/core/utils/Util$StartupType;

    move-result-object v23

    .line 98
    .local v23, startupType:Lcom/google/android/youtube/core/utils/Util$StartupType;
    const-string v6, "Startup"

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/youtube/core/utils/Util$StartupType;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/YouTubeApplication;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->maybeCleanCacheDir()V

    .line 102
    new-instance v5, Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/YouTubeApplication;->platform:Lcom/google/android/youtube/app/Platform;

    move-object v7, v0

    invoke-interface {v7}, Lcom/google/android/youtube/app/Platform;->getDeveloperKey()[B

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/YouTubeApplication;->platform:Lcom/google/android/youtube/app/Platform;

    move-object v8, v0

    invoke-interface {v8}, Lcom/google/android/youtube/app/Platform;->getDeveloperSecret()[B

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "android_id"

    invoke-static {v9, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v5 .. v10}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;-><init>(Lorg/apache/http/client/HttpClient;[B[BLjava/lang/String;Landroid/content/SharedPreferences;)V

    .line 108
    .local v5, deviceAuthorizer:Lcom/google/android/youtube/core/async/DeviceAuthorizer;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v24

    .line 109
    .local v24, userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v7, "username"

    const/4 v8, 0x0

    invoke-interface {v10, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/YouTubeApplication;->currentUsername:Ljava/util/concurrent/atomic/AtomicReference;

    .line 111
    new-instance v11, Lcom/google/android/youtube/app/DefaultRequesters;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getCpuIntensiveExecutor()Ljava/util/concurrent/Executor;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getClock()Lcom/google/android/youtube/core/utils/SystemClock;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getXmlParser()Lcom/google/android/youtube/core/converter/XmlParser;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/YouTubeApplication;->platform:Lcom/google/android/youtube/app/Platform;

    move-object/from16 v18, v0

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v18}, Lcom/google/android/youtube/app/DefaultRequesters;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/Clock;Lcom/google/android/youtube/core/converter/XmlParser;Lcom/google/android/youtube/app/Platform;)V

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/YouTubeApplication;->requesters:Lcom/google/android/youtube/app/DefaultRequesters;

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/YouTubeApplication;->requesters:Lcom/google/android/youtube/app/DefaultRequesters;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/YouTubeApplication;->currentUsername:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getRevShareClientId()Ljava/lang/String;

    move-result-object v8

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, v24

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->init(Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {v24 .. v25}, Lcom/google/android/youtube/core/async/UserAuthorizer;->setOnSignedInChangedListener(Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;)V

    .line 122
    new-instance v6, Landroid/provider/SearchRecentSuggestions;

    const-string v7, "com.google.android.youtube.SuggestionProvider"

    const/4 v8, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/YouTubeApplication;->recentSuggestions:Landroid/provider/SearchRecentSuggestions;

    .line 125
    return-void

    .line 77
    .end local v5           #deviceAuthorizer:Lcom/google/android/youtube/core/async/DeviceAuthorizer;
    .end local v19           #distributionChannel:Ljava/lang/String;
    .end local v20           #factory:Lcom/google/android/youtube/googlemobile/common/io/android/AndroidHttpConnectionFactory;
    .end local v21           #masfServerAddress:Ljava/lang/String;
    .end local v22           #platformId:Ljava/lang/String;
    .end local v23           #startupType:Lcom/google/android/youtube/core/utils/Util$StartupType;
    .end local v24           #userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;
    :cond_0
    const-string v6, "terms_accepted"

    const/4 v7, 0x0

    invoke-interface {v10, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/app/YouTubeApplication;->termsAccepted:Z

    goto/16 :goto_0
.end method

.method public onSignIn(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 3
    .parameter "userAuth"

    .prologue
    .line 271
    iget-object v0, p1, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->requesters:Lcom/google/android/youtube/app/DefaultRequesters;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/DefaultRequesters;->getMyProfileRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyProfileRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/app/YouTubeApplication$2;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/YouTubeApplication$2;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 283
    return-void
.end method

.method public onSignOut()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->currentUsername:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication;->currentUsername:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 288
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "username"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    invoke-virtual {p0}, Lcom/google/android/youtube/app/YouTubeApplication;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/app/YouTubeApplication$3;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/YouTubeApplication$3;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 185
    invoke-static {}, Lcom/google/android/youtube/googlemobile/masf/MobileServiceMux;->deInitialize()V

    .line 188
    invoke-super {p0}, Lcom/google/android/youtube/core/BaseApplication;->onTerminate()V

    .line 189
    return-void
.end method

.method public setSearchHistoryDb(Lcom/google/android/youtube/app/suggest/HistoryDb;)V
    .locals 0
    .parameter "historyDb"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/youtube/app/YouTubeApplication;->searchHistoryDb:Lcom/google/android/youtube/app/suggest/HistoryDb;

    .line 251
    return-void
.end method
