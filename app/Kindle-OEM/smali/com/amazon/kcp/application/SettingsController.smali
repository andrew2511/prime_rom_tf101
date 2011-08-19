.class public Lcom/amazon/kcp/application/SettingsController;
.super Ljava/lang/Object;
.source "SettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;
    }
.end annotation


# static fields
.field private static final APP_PREFS:Ljava/lang/String; = "ApplicationSettings"

.field public static final COLOR_MODE_KEY:Ljava/lang/String; = "colorMode"

.field public static final COPIED_FREE_BOOKS:Ljava/lang/String; = "FreeBooksBit"

.field public static final CRASH_BIT_KEY:Ljava/lang/String; = "CrashBit"

.field public static final FONT_SIZE_KEY:Ljava/lang/String; = "fontSize"

.field public static final LAST_APP_UPGRADE_VERSION_KEY:Ljava/lang/String; = "lastAppUpgradeVersion"

.field public static final LAUNCH_TO_KEY:Ljava/lang/String; = "launchTo"

.field public static final LIBRARY_FILTER:Ljava/lang/String; = "LibraryFilter"

.field public static final LIBRARY_UPGRADE_VERSION_KEY:Ljava/lang/String; = "libraryUpgradeVersion"

.field public static final READER_INSTRUCTION_VIEWS_KEY:Ljava/lang/String; = "readerInstructionViews"

.field public static final READER_ORIENTATION_KEY:Ljava/lang/String; = "readerOrientation"

.field public static final SCREEN_BRIGHTNESS_KEY:Ljava/lang/String; = "screenBrightness"

.field public static final VOLUME_KEYS_PAGE_CONTROLS_KEY:Ljava/lang/String; = "volumeKeysArePageControls"


# instance fields
.field private final context:Landroid/content/Context;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/amazon/kcp/application/SettingsController;->context:Landroid/content/Context;

    .line 110
    const-string v0, "ApplicationSettings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    .line 111
    return-void
.end method

.method private persistValue(Ljava/lang/String;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 530
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 531
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 532
    return-void
.end method

.method private persistValue(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 503
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 504
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 505
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 506
    return-void
.end method

.method private persistValue(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 516
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 517
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 518
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 519
    return-void
.end method

.method private persistValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 542
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 543
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 544
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 545
    return-void
.end method

.method private persistValue(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    return-void
.end method


# virtual methods
.method public applyScreenBrightness(Landroid/view/Window;)Z
    .locals 5
    .parameter "window"

    .prologue
    .line 283
    iget-object v2, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "screenBrightness"

    const/high16 v4, -0x4080

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 284
    .local v1, brightness:F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/application/SettingsController;->isSystemUsingAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    :cond_0
    const/4 v2, 0x0

    .line 292
    :goto_0
    return v2

    .line 289
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 290
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/amazon/kcp/application/SettingsController;->getScreenBrightness()F

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 291
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 292
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public areFreeBooksCopied()Z
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "FreeBooksBit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public areVolumeKeysPageControls()Z
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "volumeKeysArePageControls"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public clearUserSettings()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    const-string v1, "fontSize"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string v1, "colorMode"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v1, "screenBrightness"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v1, "readerInstructionViews"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v1, "readerOrientation"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-string v1, "volumeKeysArePageControls"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v1, "FreeBooksBit"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    const-string v1, "launchTo"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    return-void
.end method

.method public getColorMode()I
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "colorMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCrashBitValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "CrashBit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSizeIndex()I
    .locals 4

    .prologue
    .line 174
    iget-object v1, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "fontSize"

    sget v3, Lcom/mobipocket/android/drawing/AndroidFontFactory;->defaultFontIndex:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 176
    .local v0, fontIndex:I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 178
    :cond_0
    sget v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->defaultFontIndex:I

    .line 181
    :cond_1
    return v0
.end method

.method public getLastAppUpgradeVersion()J
    .locals 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "lastAppUpgradeVersion"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLaunchTo()Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;
    .locals 7

    .prologue
    .line 434
    sget-object v6, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->HOME:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "launchTo"

    sget-object v2, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->HOME:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    const-class v1, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 445
    :goto_0
    return-object v0

    .line 440
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 442
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "BookSettingsController"

    const-string v2, "LanchToSettingException"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0
.end method

.method public getLibraryFilter()Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    .locals 4

    .prologue
    .line 461
    sget-object v0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->LOCAL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "LibraryFilter"

    sget-object v3, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->LOCAL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-static {v1}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLibraryLastUpgradedVersion()J
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "libraryUpgradeVersion"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOrientation()I
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "readerOrientation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getReaderInstructionViewCount()I
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "readerInstructionViews"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenBrightness()F
    .locals 5

    .prologue
    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "screenBrightness"

    iget-object v2, p0, Lcom/amazon/kcp/application/SettingsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public isSystemUsingAutoBrightness()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 248
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 256
    if-nez v0, :cond_0

    move v0, v6

    .line 272
    :goto_0
    return v0

    .line 262
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 268
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "BookSettingsController"

    const-string v2, "BrightnessModeException"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method public registerSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 138
    return-void
.end method

.method public setColorMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 215
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to set color mode to unexpected value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    :goto_0
    return-void

    .line 212
    :pswitch_1
    const-string v0, "colorMode"

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/SettingsController;->persistValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setCrashBitValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 407
    const-string v0, "CrashBit"

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/SettingsController;->persistValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public setFontSizeIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 158
    sget-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    sget-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    aget v0, v0, p1

    sget-object v1, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    invoke-virtual {p0}, Lcom/amazon/kcp/application/SettingsController;->getFontSizeIndex()I

    move-result v2

    aget v1, v1, v2

    if-eq v0, v1, :cond_0

    .line 162
    const-string v0, "fontSize"

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/SettingsController;->persistValue(Ljava/lang/String;I)V

    .line 164
    :cond_0
    return-void
.end method

.method public setFreeBooksCopied(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 425
    const-string v0, "FreeBooksBit"

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/SettingsController;->persistValue(Ljava/lang/String;Z)V

    .line 426
    return-void
.end method

.method public setLastAppUpgradeVersion(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 378
    const-string v0, "lastAppUpgradeVersion"

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/application/SettingsController;->persistValue(Ljava/lang/String;J)V

    .line 379
    return-void
.end method

.method public setLaunchTo(Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 453
    const-string v0, "launchTo"

    invoke-virtual {p1}, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/SettingsController;->persistValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public setLibraryFilter(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 480
    const-string v0, "LibraryFilter"

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/SettingsController;->persistValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public setLibraryLastUpgradedVersion(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 366
    const-string v0, "libraryUpgradeVersion"

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/application/SettingsController;->persistValue(Ljava/lang/String;J)V

    .line 367
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 310
    const-string v0, "readerOrientation"

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/SettingsController;->persistValue(Ljava/lang/String;I)V

    .line 311
    return-void
.end method

.method public setReaderInstructionViewCount(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 348
    const-string v0, "readerInstructionViews"

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/SettingsController;->persistValue(Ljava/lang/String;I)V

    .line 349
    return-void
.end method

.method public setScreenBrightness(F)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 239
    const-string v0, "screenBrightness"

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/SettingsController;->persistValue(Ljava/lang/String;F)V

    .line 240
    return-void
.end method

.method public setVolumeKeysArePageControls(Z)V
    .locals 1
    .parameter "pageControls"

    .prologue
    .line 329
    const-string v0, "volumeKeysArePageControls"

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/application/SettingsController;->persistValue(Ljava/lang/String;Z)V

    .line 330
    return-void
.end method

.method public unregisterSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/application/SettingsController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 147
    return-void
.end method
