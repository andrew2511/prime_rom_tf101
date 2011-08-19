.class public abstract Landroid_maps_conflict_avoidance/com/google/common/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static ADS_CLIENT:Ljava/lang/String;

.field protected static ALT_ARROWS_ENABLED:Z

.field protected static ALT_DOWN:I

.field protected static ALT_LEFT:I

.field private static ALT_NUMBER_KEYS:[I

.field protected static ALT_RIGHT:I

.field protected static ALT_UP:I

.field private static CARRIER:Ljava/lang/String;

.field private static DISTRIBUTION_CHANNEL:Ljava/lang/String;

.field public static KEY_BACK:I

.field public static KEY_CLEAR:I

.field public static KEY_MENU:I

.field public static KEY_OK:I

.field public static KEY_POUND:I

.field public static KEY_SIDE_DOWN:I

.field public static KEY_SIDE_SELECT:I

.field public static KEY_SIDE_UP:I

.field public static KEY_SOFT_LEFT:I

.field public static KEY_SOFT_MIDDLE:I

.field public static KEY_SOFT_RIGHT:I

.field public static KEY_STAR:I

.field public static KEY_TALK:I

.field public static KEY_VOICE_SEARCH:I

.field public static QWERTY_KEYBOARD:Z

.field public static REVERSE_SOFTKEYS:Z

.field public static SOFTKEYS_ON_SIDE_IN_LANDSCAPE:Z

.field public static SOFTKEY_HEIGHT:I

.field public static USE_NATIVE_COMMANDS:Z

.field public static USE_NATIVE_MENUS:Z

.field private static instance:Landroid_maps_conflict_avoidance/com/google/common/Config;


# instance fields
.field private final applicationStartTime:J

.field private final clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field private countryCode:Ljava/lang/String;

.field private i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, -0x270f

    .line 50
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_BACK:I

    .line 59
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    .line 65
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_MIDDLE:I

    .line 72
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    .line 73
    const/16 v0, 0x2a

    sput v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_STAR:I

    .line 74
    const/16 v0, 0x23

    sput v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_POUND:I

    .line 75
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_MENU:I

    .line 76
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_OK:I

    .line 77
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_TALK:I

    .line 78
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_VOICE_SEARCH:I

    .line 87
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_CLEAR:I

    .line 95
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_UP:I

    .line 96
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_DOWN:I

    .line 97
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_SELECT:I

    .line 100
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_UP:I

    .line 101
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_DOWN:I

    .line 102
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_LEFT:I

    .line 103
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_RIGHT:I

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_ARROWS_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const-string v0, ""

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->countryCode:Ljava/lang/String;

    .line 249
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/GenericClock;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/GenericClock;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    .line 256
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->applicationStartTime:J

    return-void
.end method

.method public static getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;
    .registers 1

    .prologue
    .line 236
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->instance:Landroid_maps_conflict_avoidance/com/google/common/Config;

    return-object v0
.end method

.method public static declared-synchronized getLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 638
    const-class v0, Landroid_maps_conflict_avoidance/com/google/common/Config;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->instance:Landroid_maps_conflict_avoidance/com/google/common/Config;

    iget-object v1, v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->getUiLocale()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isChinaVersion()Z
    .registers 1

    .prologue
    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method private static parseAltArrowKeys(Ljava/lang/String;)V
    .registers 4
    .parameter "altArrowKeys"

    .prologue
    const/4 v2, 0x1

    .line 412
    const/4 v1, 0x4

    invoke-static {v1, p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->parseAltKeys(ILjava/lang/String;)[I

    move-result-object v0

    .line 413
    .local v0, altKeys:[I
    if-eqz v0, :cond_1d

    .line 414
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_ARROWS_ENABLED:Z

    .line 415
    const/4 v1, 0x0

    aget v1, v0, v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_UP:I

    .line 416
    aget v1, v0, v2

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_LEFT:I

    .line 417
    const/4 v1, 0x2

    aget v1, v0, v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_DOWN:I

    .line 418
    const/4 v1, 0x3

    aget v1, v0, v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_RIGHT:I

    .line 420
    :cond_1d
    return-void
.end method

.method private static parseAltKeys(ILjava/lang/String;)[I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 438
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    move-object v0, v5

    .line 470
    :cond_b
    :goto_b
    return-object v0

    .line 443
    :cond_c
    :try_start_c
    new-array v0, p0, [I

    move v2, v1

    .line 447
    :goto_f
    const-string v3, ","

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    .line 448
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 449
    add-int/lit8 v4, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 450
    add-int/lit8 v1, v3, 0x1

    move v2, v1

    move v1, v4

    .line 451
    goto :goto_f

    .line 454
    :cond_29
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_35} :catch_39
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_35} :catch_41

    .line 457
    if-eq v3, p0, :cond_b

    move-object v0, v5

    .line 460
    goto :goto_b

    .line 464
    :catch_39
    move-exception v0

    .line 465
    const-string v1, "CONFIG"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3f
    move-object v0, v5

    .line 470
    goto :goto_b

    .line 466
    :catch_41
    move-exception v0

    .line 467
    const-string v1, "CONFIG"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f
.end method

.method private static parseAltNumberKeys(Ljava/lang/String;)V
    .registers 2
    .parameter "altNumberKeys"

    .prologue
    .line 427
    const/16 v0, 0xc

    invoke-static {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->parseAltKeys(ILjava/lang/String;)[I

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_NUMBER_KEYS:[I

    .line 428
    return-void
.end method

.method public static setConfig(Landroid_maps_conflict_avoidance/com/google/common/Config;)V
    .registers 1
    .parameter "config"

    .prologue
    .line 228
    sput-object p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->instance:Landroid_maps_conflict_avoidance/com/google/common/Config;

    .line 229
    return-void
.end method


# virtual methods
.method protected getAdsClientInternal()Ljava/lang/String;
    .registers 2

    .prologue
    .line 380
    const-string v0, "AdsClient"

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAppProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 839
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_1a

    .line 841
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 842
    const/4 v0, 0x1

    .line 854
    :goto_f
    return v0

    .line 843
    :cond_10
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 844
    const/4 v0, 0x0

    goto :goto_f

    :cond_1a
    move v0, p2

    .line 854
    goto :goto_f
.end method

.method public getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .registers 2

    .prologue
    .line 995
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    return-object v0
.end method

.method public abstract getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .registers 2

    .prologue
    .line 371
    const-string v0, "DistributionChannel"

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getI18n()Landroid_maps_conflict_avoidance/com/google/common/I18n;
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    return-object v0
.end method

.method public abstract getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;
.end method

.method public abstract getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getIntProperty(Ljava/lang/String;I)I
    .registers 5
    .parameter "property"
    .parameter "defaultValue"

    .prologue
    .line 819
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 822
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v1

    .line 831
    :goto_a
    return v1

    .line 823
    :catch_b
    move-exception v1

    :cond_c
    move v1, p2

    .line 831
    goto :goto_a
.end method

.method public abstract getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
.end method

.method public abstract getPixelsPerInch()I
.end method

.method protected init()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 264
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    if-nez v0, :cond_12

    .line 268
    const-string v0, "DownloadLocale"

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->init(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/I18n;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    .line 271
    :cond_12
    const-string v0, "microedition.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    if-nez v0, :cond_133

    const-string v0, ""

    .line 273
    :goto_1c
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getDistributionChannelInternal()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    .line 274
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    if-nez v1, :cond_2a

    .line 275
    const-string v1, "unknown"

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    .line 277
    :cond_2a
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAdsClientInternal()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    .line 278
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    if-nez v1, :cond_38

    .line 279
    const-string v1, "unknown"

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    .line 281
    :cond_38
    const-string v1, "Carrier"

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->CARRIER:Ljava/lang/String;

    .line 282
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->CARRIER:Ljava/lang/String;

    if-nez v1, :cond_48

    .line 283
    const-string v1, "unknown"

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->CARRIER:Ljava/lang/String;

    .line 285
    :cond_48
    const-string v1, "BackKey"

    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_BACK:I

    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_BACK:I

    .line 286
    const-string v1, "LeftSoftKey"

    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    .line 287
    const-string v1, "MiddleSoftKey"

    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_MIDDLE:I

    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_MIDDLE:I

    .line 288
    const-string v1, "RightSoftKey"

    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    .line 289
    const-string v1, "ReverseSoftkeys"

    const-string v2, "nokia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->REVERSE_SOFTKEYS:Z

    .line 291
    const-string v1, "SoftkeysOnSideInLandscape"

    invoke-virtual {p0, v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->SOFTKEYS_ON_SIDE_IN_LANDSCAPE:Z

    .line 293
    const-string v1, "SideUpKey"

    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_UP:I

    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_UP:I

    .line 294
    const-string v1, "SideDownKey"

    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_DOWN:I

    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_DOWN:I

    .line 295
    const-string v1, "SideSelectKey"

    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_SELECT:I

    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_SELECT:I

    .line 296
    const-string v1, "QwertyKeyboard"

    invoke-virtual {p0, v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->QWERTY_KEYBOARD:Z

    .line 300
    sget-boolean v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->REVERSE_SOFTKEYS:Z

    if-eqz v1, :cond_b8

    .line 301
    sget v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    .line 302
    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    .line 303
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    .line 306
    :cond_b8
    const-string v1, "MenuKey"

    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_MENU:I

    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_MENU:I

    .line 307
    const-string v1, "SelectKey"

    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_OK:I

    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_OK:I

    .line 308
    const-string v1, "TalkKey"

    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_TALK:I

    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_TALK:I

    .line 312
    const-string v1, "VoiceSearchKey"

    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_VOICE_SEARCH:I

    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_VOICE_SEARCH:I

    .line 313
    const-string v1, "ClearKey"

    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_CLEAR:I

    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_CLEAR:I

    .line 317
    const-string v1, "UseNativeCommands"

    const-string v2, "nokia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_139

    const-string v2, "sony"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_139

    move v0, v4

    :goto_fd
    invoke-virtual {p0, v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_COMMANDS:Z

    .line 319
    const-string v0, "UseNativeMenus"

    invoke-virtual {p0, v0, v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_MENUS:Z

    .line 320
    const-string v0, "SoftkeyHeight"

    invoke-virtual {p0, v0, v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->SOFTKEY_HEIGHT:I

    .line 322
    const-string v0, "AltNumberKeys"

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->parseAltNumberKeys(Ljava/lang/String;)V

    .line 323
    const-string v0, "AltArrowKeys"

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->parseAltArrowKeys(Ljava/lang/String;)V

    .line 325
    sget-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_MENUS:Z

    if-eqz v0, :cond_12f

    sget-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_COMMANDS:Z

    if-nez v0, :cond_12f

    .line 331
    sput-boolean v4, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_COMMANDS:Z

    .line 333
    :cond_12f
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->setupGzipper()V

    .line 334
    return-void

    .line 272
    :cond_133
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :cond_139
    move v0, v3

    .line 317
    goto :goto_fd
.end method

.method protected abstract setupGzipper()V
.end method
