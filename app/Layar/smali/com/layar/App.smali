.class public Lcom/layar/App;
.super Landroid/app/Application;
.source "App.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/App$RestoreTask;
    }
.end annotation


# static fields
.field public static DENSITY:F

.field public static IS_HIGH_DENSITY:Z

.field public static SCALED_DENSITY:F

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/layar/App;


# instance fields
.field private mCategoryManager:Lcom/layar/data/category/CategoryManager;

.field private mFriendsManager:Lcom/layar/data/user/FriendsManager;

.field private mIsInitialized:Z

.field private mPaymentManager:Lcom/layar/data/user/PaymentsManager;

.field private mProfiler:Lcom/layar/util/Profiler;

.field private mRequestsCounter:Lcom/layar/util/HttpRequestsCounter;

.field private mSocialManager:Lcom/layar/data/social/SocialManager;

.field private mUserManager:Lcom/layar/data/user/UserManager;

.field private mVariantsManager:Lcom/layar/data/variants/VariantsManager;

.field public final uiThreadHandler:Landroid/os/Handler;

.field public uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 38
    const-class v0, Lcom/layar/App;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/App;->TAG:Ljava/lang/String;

    .line 41
    sput v1, Lcom/layar/App;->DENSITY:F

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/layar/App;->IS_HIGH_DENSITY:Z

    .line 43
    sput v1, Lcom/layar/App;->SCALED_DENSITY:F

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/layar/App;->uiThreadHandler:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/App;->mIsInitialized:Z

    .line 61
    sput-object p0, Lcom/layar/App;->sInstance:Lcom/layar/App;

    .line 62
    return-void
.end method

.method public static clearRestorePoints(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 159
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 160
    .local v0, prefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "restorepoint.layarname"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    return-void
.end method

.method public static declared-synchronized getCategoryManager()Lcom/layar/data/category/CategoryManager;
    .locals 4

    .prologue
    .line 189
    const-class v0, Lcom/layar/App;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mCategoryManager:Lcom/layar/data/category/CategoryManager;

    if-nez v1, :cond_0

    .line 190
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    new-instance v2, Lcom/layar/data/category/CategoryManager;

    sget-object v3, Lcom/layar/App;->sInstance:Lcom/layar/App;

    invoke-direct {v2, v3}, Lcom/layar/data/category/CategoryManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/layar/App;->mCategoryManager:Lcom/layar/data/category/CategoryManager;

    .line 191
    :cond_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mCategoryManager:Lcom/layar/data/category/CategoryManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 3

    .prologue
    .line 201
    const-class v1, Lcom/layar/App;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/layar/App;->sInstance:Lcom/layar/App;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Lcom/layar/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getFriendsManager()Lcom/layar/data/user/FriendsManager;
    .locals 3

    .prologue
    .line 177
    const-class v0, Lcom/layar/App;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mFriendsManager:Lcom/layar/data/user/FriendsManager;

    if-nez v1, :cond_0

    .line 178
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    new-instance v2, Lcom/layar/data/user/FriendsManager;

    invoke-direct {v2}, Lcom/layar/data/user/FriendsManager;-><init>()V

    iput-object v2, v1, Lcom/layar/App;->mFriendsManager:Lcom/layar/data/user/FriendsManager;

    .line 179
    :cond_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mFriendsManager:Lcom/layar/data/user/FriendsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getImageCache()Lcom/layar/data/ImageCache;
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/layar/data/ImageCache;->getInstance()Lcom/layar/data/ImageCache;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/layar/App;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/layar/App;->sInstance:Lcom/layar/App;

    return-object v0
.end method

.method public static getLayerManager()Lcom/layar/data/layer/LayerManager;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/layar/App;->sInstance:Lcom/layar/App;

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getPaymentManager()Lcom/layar/data/user/PaymentsManager;
    .locals 4

    .prologue
    .line 183
    const-class v0, Lcom/layar/App;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mPaymentManager:Lcom/layar/data/user/PaymentsManager;

    if-nez v1, :cond_0

    .line 184
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    new-instance v2, Lcom/layar/data/user/PaymentsManager;

    sget-object v3, Lcom/layar/App;->sInstance:Lcom/layar/App;

    invoke-direct {v2, v3}, Lcom/layar/data/user/PaymentsManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/layar/App;->mPaymentManager:Lcom/layar/data/user/PaymentsManager;

    .line 185
    :cond_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mPaymentManager:Lcom/layar/data/user/PaymentsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getProfiler()Lcom/layar/util/Profiler;
    .locals 3

    .prologue
    .line 248
    const-class v0, Lcom/layar/App;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mProfiler:Lcom/layar/util/Profiler;

    if-nez v1, :cond_0

    .line 249
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    new-instance v2, Lcom/layar/util/Profiler;

    invoke-direct {v2}, Lcom/layar/util/Profiler;-><init>()V

    iput-object v2, v1, Lcom/layar/App;->mProfiler:Lcom/layar/util/Profiler;

    .line 250
    :cond_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mProfiler:Lcom/layar/util/Profiler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getRequestsCounter()Lcom/layar/util/HttpRequestsCounter;
    .locals 3

    .prologue
    .line 254
    const-class v0, Lcom/layar/App;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mRequestsCounter:Lcom/layar/util/HttpRequestsCounter;

    if-nez v1, :cond_0

    .line 255
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    new-instance v2, Lcom/layar/util/HttpRequestsCounter;

    invoke-direct {v2}, Lcom/layar/util/HttpRequestsCounter;-><init>()V

    iput-object v2, v1, Lcom/layar/App;->mRequestsCounter:Lcom/layar/util/HttpRequestsCounter;

    .line 256
    :cond_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mRequestsCounter:Lcom/layar/util/HttpRequestsCounter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSensorHelper()Lcom/layar/util/SensorHelper;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/layar/App;->sInstance:Lcom/layar/App;

    invoke-static {v0}, Lcom/layar/util/SensorHelper;->getInstance(Landroid/content/Context;)Lcom/layar/util/SensorHelper;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getSocialManager()Lcom/layar/data/social/SocialManager;
    .locals 4

    .prologue
    .line 171
    const-class v0, Lcom/layar/App;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mSocialManager:Lcom/layar/data/social/SocialManager;

    if-nez v1, :cond_0

    .line 172
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    new-instance v2, Lcom/layar/data/social/SocialManager;

    sget-object v3, Lcom/layar/App;->sInstance:Lcom/layar/App;

    invoke-direct {v2, v3}, Lcom/layar/data/social/SocialManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/layar/App;->mSocialManager:Lcom/layar/data/social/SocialManager;

    .line 173
    :cond_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mSocialManager:Lcom/layar/data/social/SocialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUserManager()Lcom/layar/data/user/UserManager;
    .locals 4

    .prologue
    .line 195
    const-class v0, Lcom/layar/App;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mUserManager:Lcom/layar/data/user/UserManager;

    if-nez v1, :cond_0

    .line 196
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    new-instance v2, Lcom/layar/data/user/UserManager;

    sget-object v3, Lcom/layar/App;->sInstance:Lcom/layar/App;

    invoke-direct {v2, v3}, Lcom/layar/data/user/UserManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/layar/App;->mUserManager:Lcom/layar/data/user/UserManager;

    .line 197
    :cond_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mUserManager:Lcom/layar/data/user/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getVariantsManager()Lcom/layar/data/variants/VariantsManager;
    .locals 3

    .prologue
    .line 165
    const-class v0, Lcom/layar/App;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mVariantsManager:Lcom/layar/data/variants/VariantsManager;

    if-nez v1, :cond_0

    .line 166
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    new-instance v2, Lcom/layar/data/variants/VariantsManager;

    invoke-direct {v2}, Lcom/layar/data/variants/VariantsManager;-><init>()V

    iput-object v2, v1, Lcom/layar/App;->mVariantsManager:Lcom/layar/data/variants/VariantsManager;

    .line 167
    :cond_0
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v1, v1, Lcom/layar/App;->mVariantsManager:Lcom/layar/data/variants/VariantsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 129
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v2

    .line 132
    .local v2, userManager:Lcom/layar/data/user/UserManager;
    sget-object v3, Lcom/layar/App;->sInstance:Lcom/layar/App;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 134
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "prefs.distance.units"

    const-string v4, "METRIC"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v3}, Lcom/layar/util/Util$Units;->valueOf(Ljava/lang/String;)Lcom/layar/util/Util$Units;

    move-result-object v3

    sput-object v3, Lcom/layar/util/Util;->distanceUnit:Lcom/layar/util/Util$Units;

    .line 136
    invoke-virtual {v2}, Lcom/layar/data/user/UserManager;->isDeveloper()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    const-string v3, "prefs.location.fixed"

    .line 137
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 139
    .local v0, fixedLocation:Z
    invoke-static {}, Lcom/layar/data/event/EventsManager;->getInstance()Lcom/layar/data/event/EventsManager;

    move-result-object v3

    if-eqz v0, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Lcom/layar/data/event/EventsManager;->setActive(Z)V

    .line 140
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layar/data/layer/LayerManager;->resetCache()V

    .line 142
    .end local v0           #fixedLocation:Z
    :cond_0
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layar/util/UriHelper;->updateLocationValues()V

    .line 144
    invoke-static {}, Lcom/layar/App;->refreshArSettings()V

    .line 145
    invoke-static {}, Lcom/layar/App;->getSensorHelper()Lcom/layar/util/SensorHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layar/util/SensorHelper;->loadPreferences()V

    .line 146
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layar/data/layer/LayerManager;->updateRecentLayers()V

    .line 147
    return-void

    .line 139
    .restart local v0       #fixedLocation:Z
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isOnline()Z
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Lcom/layar/App;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 206
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 207
    .local v1, ni:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 208
    const/4 v2, 0x0

    .line 209
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method

.method public static onLanguageChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "lang"

    .prologue
    .line 226
    if-nez p0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-boolean v1, v1, Lcom/layar/App;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 231
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 232
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "prefs.location.language"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    invoke-static {}, Lcom/layar/App;->getCategoryManager()Lcom/layar/data/category/CategoryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/data/category/CategoryManager;->refresh()V

    .line 236
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/util/UriHelper;->updateLocationValues()V

    goto :goto_0
.end method

.method public static refreshArSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    sget-object v1, Lcom/layar/App;->sInstance:Lcom/layar/App;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "prefs.grid.show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/layar/core/ARRenderer;->SHOW_GRID:Z

    .line 153
    const-string v1, "prefs.ar.birdeye"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/layar/core/ARRenderer;->BIRD_EYE:Z

    .line 154
    return-void
.end method

.method private restore()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 115
    sget-object v3, Lcom/layar/App;->sInstance:Lcom/layar/App;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 116
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "prefs.grid.hide"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 117
    .local v0, hasHideGrid:Z
    if-eqz v0, :cond_0

    .line 120
    const-string v3, "prefs.grid.hide"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 121
    .local v1, hideGrid:Z
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "prefs.grid.show"

    if-eqz v1, :cond_1

    move v5, v6

    :goto_0
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 122
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    .end local v1           #hideGrid:Z
    :cond_0
    new-instance v3, Lcom/layar/App$RestoreTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/layar/App$RestoreTask;-><init>(Lcom/layar/App;Lcom/layar/App$RestoreTask;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/layar/App$RestoreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    return-void

    .line 121
    .restart local v1       #hideGrid:Z
    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 240
    sget-object v0, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v0, v0, Lcom/layar/App;->uiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method public static runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "runnable"
    .parameter "delay"

    .prologue
    .line 244
    sget-object v0, Lcom/layar/App;->sInstance:Lcom/layar/App;

    iget-object v0, v0, Lcom/layar/App;->uiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 73
    invoke-virtual {p0}, Lcom/layar/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/layar/App;->DENSITY:F

    .line 74
    sget v0, Lcom/layar/App;->DENSITY:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    move v0, v4

    :goto_0
    sput-boolean v0, Lcom/layar/App;->IS_HIGH_DENSITY:Z

    .line 75
    invoke-virtual {p0}, Lcom/layar/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/layar/App;->SCALED_DENSITY:F

    .line 77
    sget v0, Lcom/layar/App;->DENSITY:F

    invoke-static {v0}, Lcom/layar/data/ImageCache;->setIconSize(F)V

    .line 81
    invoke-static {}, Lcom/layar/data/event/EventsManager;->getInstance()Lcom/layar/data/event/EventsManager;

    .line 83
    invoke-static {p0}, Lcom/layar/util/CookieStore;->initialize(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lcom/layar/util/UriHelper;->initialize(Landroid/content/Context;)Lcom/layar/util/UriHelper;

    .line 87
    iput-boolean v4, p0, Lcom/layar/App;->mIsInitialized:Z

    .line 89
    invoke-direct {p0}, Lcom/layar/App;->restore()V

    .line 93
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/App;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 94
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 95
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/layar/App;->getImageCache()Lcom/layar/data/ImageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/ImageCache;->clearMemoryCache()V

    .line 107
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 108
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 101
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 273
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/database/sqlite/SQLiteException;

    if-eqz v1, :cond_0

    .line 277
    sget-object v1, Lcom/layar/App;->TAG:Ljava/lang/String;

    const-string v2, "Bad database state detected, clearing database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v0, Lcom/layar/provider/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/layar/provider/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, dbHelper:Lcom/layar/provider/DatabaseHelper;
    invoke-virtual {v0}, Lcom/layar/provider/DatabaseHelper;->wipeDatabase()V

    .line 282
    .end local v0           #dbHelper:Lcom/layar/provider/DatabaseHelper;
    :cond_0
    iget-object v1, p0, Lcom/layar/App;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 283
    return-void
.end method
