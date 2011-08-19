.class public Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;
.super Landroid_maps_conflict_avoidance/com/google/common/Config;
.source "AndroidConfig.java"


# static fields
.field private static uiThread:Ljava/lang/Thread;


# instance fields
.field private final clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field protected connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

.field protected final context:Landroid/content/Context;

.field protected fontFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/FontFactory;

.field protected imageFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

.field protected persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

.field private final pixelsPerInch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "basePath"

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;-><init>()V

    .line 75
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidClock;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidClock;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    .line 95
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->uiThread:Ljava/lang/Thread;

    .line 98
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->setConfig(Landroid_maps_conflict_avoidance/com/google/common/Config;)V

    .line 100
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->init()V

    .line 103
    sput-boolean v1, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->USE_NATIVE_COMMANDS:Z

    .line 104
    sput-boolean v1, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->USE_NATIVE_MENUS:Z

    .line 105
    const/4 v0, 0x4

    sput v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->KEY_BACK:I

    .line 107
    if-eqz p1, :cond_39

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->pixelsPerInch:I

    .line 116
    :goto_2e
    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->initPortabilityFields(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->initLocale(Ljava/util/Locale;)V

    .line 118
    return-void

    .line 111
    :cond_39
    const/16 v0, 0xa0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->pixelsPerInch:I

    goto :goto_2e
.end method

.method private getSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "key"

    .prologue
    .line 205
    const/4 v7, 0x0

    .line 216
    .local v7, value:Ljava/lang/String;
    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

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

    move-result-object v6

    .line 219
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_46

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 220
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_45} :catch_47

    move-result-object v7

    .line 229
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_46
    :goto_46
    return-object v7

    .line 222
    :catch_47
    move-exception v0

    goto :goto_46
.end method

.method private initLocale(Ljava/util/Locale;)V
    .registers 4
    .parameter "locale"

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, localeString:Ljava/lang/String;
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getI18n()Landroid_maps_conflict_avoidance/com/google/common/I18n;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->setSystemLocale(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getI18n()Landroid_maps_conflict_avoidance/com/google/common/I18n;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->setUiLocale(Ljava/lang/String;)V

    .line 144
    return-void
.end method


# virtual methods
.method public getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    return-object v0
.end method

.method public bridge synthetic getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    return-object v0
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .registers 6

    .prologue
    .line 194
    const-string v1, "Web"

    .line 195
    .local v1, defaultValue:Ljava/lang/String;
    const-string v3, "maps_client_id"

    invoke-direct {p0, v3}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, donutValue:Ljava/lang/String;
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 197
    const-string v3, "client_id"

    invoke-direct {p0, v3}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, cupcakeValue:Ljava/lang/String;
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "Web"

    .line 200
    .end local v0           #cupcakeValue:Ljava/lang/String;
    :goto_1c
    return-object v3

    .line 198
    .restart local v0       #cupcakeValue:Ljava/lang/String;
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gmm-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    .end local v0           #cupcakeValue:Ljava/lang/String;
    :cond_31
    move-object v3, v2

    .line 200
    goto :goto_1c
.end method

.method public bridge synthetic getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

    move-result-object v0

    return-object v0
.end method

.method public getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->imageFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

    return-object v0
.end method

.method public getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, p1, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object v0
.end method

.method public getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    return-object v0
.end method

.method public getPixelsPerInch()I
    .registers 2

    .prologue
    .line 343
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->pixelsPerInch:I

    return v0
.end method

.method protected initPortabilityFields(Ljava/lang/String;)V
    .registers 4
    .parameter "basePath"

    .prologue
    .line 127
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    if-nez v0, :cond_25

    .line 128
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    .line 134
    :goto_b
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    .line 135
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidFontFactory;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidFontFactory;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->fontFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/FontFactory;

    .line 136
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->imageFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

    .line 137
    return-void

    .line 129
    :cond_25
    if-eqz p1, :cond_2f

    .line 130
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;

    invoke-direct {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    goto :goto_b

    .line 132
    :cond_2f
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    goto :goto_b
.end method

.method protected setupGzipper()V
    .registers 2

    .prologue
    .line 331
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig$1;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig$1;-><init>(Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;)V

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->setImplementation(Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;)V

    .line 336
    return-void
.end method
