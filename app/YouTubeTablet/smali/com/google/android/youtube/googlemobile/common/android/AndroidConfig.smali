.class public Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;
.super Lcom/google/android/youtube/googlemobile/common/Config;


# static fields
.field private static uiThread:Ljava/lang/Thread;


# instance fields
.field private final clock:Lcom/google/android/youtube/googlemobile/common/Clock;

.field protected connectionFactory:Lcom/google/android/youtube/googlemobile/common/io/android/AndroidHttpConnectionFactory;

.field protected final context:Landroid/content/Context;

.field protected fontFactory:Lcom/google/android/youtube/googlemobile/common/graphics/FontFactory;

.field protected imageFactory:Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidImageFactory;

.field protected persistentStore:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

.field private final pixelsPerInch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/Config;-><init>()V

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/android/AndroidClock;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/common/android/AndroidClock;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->clock:Lcom/google/android/youtube/googlemobile/common/Clock;

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->uiThread:Ljava/lang/Thread;

    invoke-static {p0}, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->setConfig(Lcom/google/android/youtube/googlemobile/common/Config;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->init()V

    sput-boolean v1, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->USE_NATIVE_COMMANDS:Z

    sput-boolean v1, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->USE_NATIVE_MENUS:Z

    const/4 v0, 0x4

    sput v0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->KEY_BACK:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->pixelsPerInch:I

    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->initPortabilityFields(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->initLocale(Ljava/util/Locale;)V

    return-void

    :cond_0
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->pixelsPerInch:I

    goto :goto_0
.end method

.method private getSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method private initLocale(Ljava/util/Locale;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->getI18n()Lcom/google/android/youtube/googlemobile/common/I18n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/googlemobile/common/I18n;->setSystemLocale(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->getI18n()Lcom/google/android/youtube/googlemobile/common/I18n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/googlemobile/common/I18n;->setUiLocale(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClock()Lcom/google/android/youtube/googlemobile/common/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->clock:Lcom/google/android/youtube/googlemobile/common/Clock;

    return-object v0
.end method

.method public bridge synthetic getConnectionFactory()Lcom/google/android/youtube/googlemobile/common/io/HttpConnectionFactory;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->getConnectionFactory()Lcom/google/android/youtube/googlemobile/common/io/android/AndroidHttpConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionFactory()Lcom/google/android/youtube/googlemobile/common/io/android/AndroidHttpConnectionFactory;
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->connectionFactory:Lcom/google/android/youtube/googlemobile/common/io/android/AndroidHttpConnectionFactory;

    return-object v0
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .locals 3

    const-string v0, "maps_client_id"

    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "client_id"

    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Web"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gmm-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPersistentStore()Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->persistentStore:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    return-object v0
.end method

.method protected initPortabilityFields(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/InMemoryPersistentStore;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/common/io/InMemoryPersistentStore;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->persistentStore:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    :goto_0
    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/android/AndroidHttpConnectionFactory;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/android/AndroidHttpConnectionFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->connectionFactory:Lcom/google/android/youtube/googlemobile/common/io/android/AndroidHttpConnectionFactory;

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidFontFactory;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidFontFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->fontFactory:Lcom/google/android/youtube/googlemobile/common/graphics/FontFactory;

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidAshmemImageFactory;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidAshmemImageFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->imageFactory:Lcom/google/android/youtube/googlemobile/common/graphics/android/AndroidImageFactory;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/android/AndroidFixedPersistentStore;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/googlemobile/common/io/android/AndroidFixedPersistentStore;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->persistentStore:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/android/AndroidPersistentStore;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/android/AndroidPersistentStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;->persistentStore:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    goto :goto_0
.end method

.method protected setupGzipper()V
    .locals 1

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig$1;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig$1;-><init>(Lcom/google/android/youtube/googlemobile/common/android/AndroidConfig;)V

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/Gunzipper;->setImplementation(Lcom/google/android/youtube/googlemobile/common/io/Gunzipper$GunzipInterface;)V

    return-void
.end method
