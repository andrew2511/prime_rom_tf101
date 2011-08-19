.class public abstract Lcom/google/mobile/common/Config;
.super Ljava/lang/Object;


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

.field private static instance:Lcom/google/mobile/common/Config;


# instance fields
.field private final applicationStartTime:J

.field private final clock:Lcom/google/mobile/common/Clock;

.field private countryCode:Ljava/lang/String;

.field private i18n:Lcom/google/mobile/common/I18n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, -0x270f

    sput v1, Lcom/google/mobile/common/Config;->KEY_BACK:I

    sput v1, Lcom/google/mobile/common/Config;->KEY_SOFT_LEFT:I

    sput v1, Lcom/google/mobile/common/Config;->KEY_SOFT_MIDDLE:I

    sput v1, Lcom/google/mobile/common/Config;->KEY_SOFT_RIGHT:I

    const/16 v0, 0x2a

    sput v0, Lcom/google/mobile/common/Config;->KEY_STAR:I

    const/16 v0, 0x23

    sput v0, Lcom/google/mobile/common/Config;->KEY_POUND:I

    sput v1, Lcom/google/mobile/common/Config;->KEY_MENU:I

    sput v1, Lcom/google/mobile/common/Config;->KEY_OK:I

    sput v1, Lcom/google/mobile/common/Config;->KEY_TALK:I

    sput v1, Lcom/google/mobile/common/Config;->KEY_VOICE_SEARCH:I

    sput v1, Lcom/google/mobile/common/Config;->KEY_CLEAR:I

    sput v1, Lcom/google/mobile/common/Config;->KEY_SIDE_UP:I

    sput v1, Lcom/google/mobile/common/Config;->KEY_SIDE_DOWN:I

    sput v1, Lcom/google/mobile/common/Config;->KEY_SIDE_SELECT:I

    sput v1, Lcom/google/mobile/common/Config;->ALT_UP:I

    sput v1, Lcom/google/mobile/common/Config;->ALT_DOWN:I

    sput v1, Lcom/google/mobile/common/Config;->ALT_LEFT:I

    sput v1, Lcom/google/mobile/common/Config;->ALT_RIGHT:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/mobile/common/Config;->ALT_ARROWS_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mobile/common/Config;->countryCode:Ljava/lang/String;

    new-instance v0, Lcom/google/mobile/common/GenericClock;

    invoke-direct {v0}, Lcom/google/mobile/common/GenericClock;-><init>()V

    iput-object v0, p0, Lcom/google/mobile/common/Config;->clock:Lcom/google/mobile/common/Clock;

    iget-object v0, p0, Lcom/google/mobile/common/Config;->clock:Lcom/google/mobile/common/Clock;

    invoke-interface {v0}, Lcom/google/mobile/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mobile/common/Config;->applicationStartTime:J

    return-void
.end method

.method public static getDistributionChannel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/mobile/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/google/mobile/common/Config;
    .locals 1

    sget-object v0, Lcom/google/mobile/common/Config;->instance:Lcom/google/mobile/common/Config;

    return-object v0
.end method

.method public static declared-synchronized getLocale()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/google/mobile/common/Config;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/mobile/common/Config;->instance:Lcom/google/mobile/common/Config;

    iget-object v1, v1, Lcom/google/mobile/common/Config;->i18n:Lcom/google/mobile/common/I18n;

    invoke-virtual {v1}, Lcom/google/mobile/common/I18n;->getUiLocale()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static parseAltArrowKeys(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/google/mobile/common/Config;->parseAltKeys(ILjava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    sput-boolean v2, Lcom/google/mobile/common/Config;->ALT_ARROWS_ENABLED:Z

    const/4 v1, 0x0

    aget v1, v0, v1

    sput v1, Lcom/google/mobile/common/Config;->ALT_UP:I

    aget v1, v0, v2

    sput v1, Lcom/google/mobile/common/Config;->ALT_LEFT:I

    const/4 v1, 0x2

    aget v1, v0, v1

    sput v1, Lcom/google/mobile/common/Config;->ALT_DOWN:I

    const/4 v1, 0x3

    aget v0, v0, v1

    sput v0, Lcom/google/mobile/common/Config;->ALT_RIGHT:I

    :cond_0
    return-void
.end method

.method private static parseAltKeys(ILjava/lang/String;)[I
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v5

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    new-array v0, p0, [I

    move v2, v1

    :goto_1
    const-string v3, ","

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v3, 0x1

    move v2, v1

    move v1, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v3, p0, :cond_1

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CONFIG"

    invoke-static {v1, v0}, Lcom/google/mobile/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-object v0, v5

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CONFIG"

    invoke-static {v1, v0}, Lcom/google/mobile/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static parseAltNumberKeys(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0, p0}, Lcom/google/mobile/common/Config;->parseAltKeys(ILjava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/google/mobile/common/Config;->ALT_NUMBER_KEYS:[I

    return-void
.end method

.method public static setConfig(Lcom/google/mobile/common/Config;)V
    .locals 0

    sput-object p0, Lcom/google/mobile/common/Config;->instance:Lcom/google/mobile/common/Config;

    return-void
.end method


# virtual methods
.method protected getAdsClientInternal()Ljava/lang/String;
    .locals 1

    const-string v0, "AdsClient"

    invoke-virtual {p0, v0}, Lcom/google/mobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAppProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/mobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method public getClock()Lcom/google/mobile/common/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/mobile/common/Config;->clock:Lcom/google/mobile/common/Clock;

    return-object v0
.end method

.method public abstract getConnectionFactory()Lcom/google/mobile/common/io/HttpConnectionFactory;
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .locals 1

    const-string v0, "DistributionChannel"

    invoke-virtual {p0, v0}, Lcom/google/mobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getI18n()Lcom/google/mobile/common/I18n;
    .locals 1

    iget-object v0, p0, Lcom/google/mobile/common/Config;->i18n:Lcom/google/mobile/common/I18n;

    return-object v0
.end method

.method public getIntProperty(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/mobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public abstract getPersistentStore()Lcom/google/mobile/common/io/PersistentStore;
.end method

.method protected init()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/mobile/common/Config;->i18n:Lcom/google/mobile/common/I18n;

    if-nez v0, :cond_0

    const-string v0, "DownloadLocale"

    invoke-virtual {p0, v0}, Lcom/google/mobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mobile/common/I18n;->init(Ljava/lang/String;)Lcom/google/mobile/common/I18n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mobile/common/Config;->i18n:Lcom/google/mobile/common/I18n;

    :cond_0
    const-string v0, "microedition.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Lcom/google/mobile/common/Config;->getDistributionChannelInternal()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/mobile/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    sget-object v1, Lcom/google/mobile/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "unknown"

    sput-object v1, Lcom/google/mobile/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/google/mobile/common/Config;->getAdsClientInternal()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/mobile/common/Config;->ADS_CLIENT:Ljava/lang/String;

    sget-object v1, Lcom/google/mobile/common/Config;->ADS_CLIENT:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "unknown"

    sput-object v1, Lcom/google/mobile/common/Config;->ADS_CLIENT:Ljava/lang/String;

    :cond_2
    const-string v1, "Carrier"

    invoke-virtual {p0, v1}, Lcom/google/mobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/mobile/common/Config;->CARRIER:Ljava/lang/String;

    sget-object v1, Lcom/google/mobile/common/Config;->CARRIER:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "unknown"

    sput-object v1, Lcom/google/mobile/common/Config;->CARRIER:Ljava/lang/String;

    :cond_3
    const-string v1, "BackKey"

    sget v2, Lcom/google/mobile/common/Config;->KEY_BACK:I

    invoke-virtual {p0, v1, v2}, Lcom/google/mobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/mobile/common/Config;->KEY_BACK:I

    const-string v1, "LeftSoftKey"

    sget v2, Lcom/google/mobile/common/Config;->KEY_SOFT_LEFT:I

    invoke-virtual {p0, v1, v2}, Lcom/google/mobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/mobile/common/Config;->KEY_SOFT_LEFT:I

    const-string v1, "MiddleSoftKey"

    sget v2, Lcom/google/mobile/common/Config;->KEY_SOFT_MIDDLE:I

    invoke-virtual {p0, v1, v2}, Lcom/google/mobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/mobile/common/Config;->KEY_SOFT_MIDDLE:I

    const-string v1, "RightSoftKey"

    sget v2, Lcom/google/mobile/common/Config;->KEY_SOFT_RIGHT:I

    invoke-virtual {p0, v1, v2}, Lcom/google/mobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/mobile/common/Config;->KEY_SOFT_RIGHT:I

    const-string v1, "ReverseSoftkeys"

    const-string v2, "nokia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/mobile/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/google/mobile/common/Config;->REVERSE_SOFTKEYS:Z

    const-string v1, "SoftkeysOnSideInLandscape"

    invoke-virtual {p0, v1, v3}, Lcom/google/mobile/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/google/mobile/common/Config;->SOFTKEYS_ON_SIDE_IN_LANDSCAPE:Z

    const-string v1, "SideUpKey"

    sget v2, Lcom/google/mobile/common/Config;->KEY_SIDE_UP:I

    invoke-virtual {p0, v1, v2}, Lcom/google/mobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/mobile/common/Config;->KEY_SIDE_UP:I

    const-string v1, "SideDownKey"

    sget v2, Lcom/google/mobile/common/Config;->KEY_SIDE_DOWN:I

    invoke-virtual {p0, v1, v2}, Lcom/google/mobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/mobile/common/Config;->KEY_SIDE_DOWN:I

    const-string v1, "SideSelectKey"

    sget v2, Lcom/google/mobile/common/Config;->KEY_SIDE_SELECT:I

    invoke-virtual {p0, v1, v2}, Lcom/google/mobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/mobile/common/Config;->KEY_SIDE_SELECT:I

    const-string v1, "QwertyKeyboard"

    invoke-virtual {p0, v1, v3}, Lcom/google/mobile/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/google/mobile/common/Config;->QWERTY_KEYBOARD:Z

    sget-boolean v1, Lcom/google/mobile/common/Config;->REVERSE_SOFTKEYS:Z

    if-eqz v1, :cond_4

    sget v1, Lcom/google/mobile/common/Config;->KEY_SOFT_LEFT:I

    sget v2, Lcom/google/mobile/common/Config;->KEY_SOFT_RIGHT:I

    sput v2, Lcom/google/mobile/common/Config;->KEY_SOFT_LEFT:I

    sput v1, Lcom/google/mobile/common/Config;->KEY_SOFT_RIGHT:I

    :cond_4
    const-string v1, "MenuKey"

    sget v2, Lcom/google/mobile/common/Config;->KEY_MENU:I

    invoke-virtual {p0, v1, v2}, Lcom/google/mobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/mobile/common/Config;->KEY_MENU:I

    const-string v1, "SelectKey"

    sget v2, Lcom/google/mobile/common/Config;->KEY_OK:I

    invoke-virtual {p0, v1, v2}, Lcom/google/mobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/mobile/common/Config;->KEY_OK:I

    const-string v1, "TalkKey"

    sget v2, Lcom/google/mobile/common/Config;->KEY_TALK:I

    invoke-virtual {p0, v1, v2}, Lcom/google/mobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/mobile/common/Config;->KEY_TALK:I

    const-string v1, "VoiceSearchKey"

    sget v2, Lcom/google/mobile/common/Config;->KEY_VOICE_SEARCH:I

    invoke-virtual {p0, v1, v2}, Lcom/google/mobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/mobile/common/Config;->KEY_VOICE_SEARCH:I

    const-string v1, "ClearKey"

    sget v2, Lcom/google/mobile/common/Config;->KEY_CLEAR:I

    invoke-virtual {p0, v1, v2}, Lcom/google/mobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/google/mobile/common/Config;->KEY_CLEAR:I

    const-string v1, "UseNativeCommands"

    const-string v2, "nokia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "sony"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v4

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/mobile/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/mobile/common/Config;->USE_NATIVE_COMMANDS:Z

    const-string v0, "UseNativeMenus"

    invoke-virtual {p0, v0, v3}, Lcom/google/mobile/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/mobile/common/Config;->USE_NATIVE_MENUS:Z

    const-string v0, "SoftkeyHeight"

    invoke-virtual {p0, v0, v3}, Lcom/google/mobile/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/google/mobile/common/Config;->SOFTKEY_HEIGHT:I

    const-string v0, "AltNumberKeys"

    invoke-virtual {p0, v0}, Lcom/google/mobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mobile/common/Config;->parseAltNumberKeys(Ljava/lang/String;)V

    const-string v0, "AltArrowKeys"

    invoke-virtual {p0, v0}, Lcom/google/mobile/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mobile/common/Config;->parseAltArrowKeys(Ljava/lang/String;)V

    sget-boolean v0, Lcom/google/mobile/common/Config;->USE_NATIVE_MENUS:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/google/mobile/common/Config;->USE_NATIVE_COMMANDS:Z

    if-nez v0, :cond_5

    sput-boolean v4, Lcom/google/mobile/common/Config;->USE_NATIVE_COMMANDS:Z

    :cond_5
    invoke-virtual {p0}, Lcom/google/mobile/common/Config;->setupGzipper()V

    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto :goto_1
.end method

.method protected abstract setupGzipper()V
.end method
