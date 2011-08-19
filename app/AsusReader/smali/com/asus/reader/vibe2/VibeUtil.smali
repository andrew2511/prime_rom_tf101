.class public Lcom/asus/reader/vibe2/VibeUtil;
.super Landroid/app/Activity;
.source "VibeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static checkErrorCode(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 31
    packed-switch p0, :pswitch_data_0

    .line 43
    const-string v0, "0"

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    const-string v0, "Cannot found data in Asus server"

    goto :goto_0

    .line 37
    :pswitch_1
    const-string v0, "Asus server connection timeout"

    goto :goto_0

    .line 40
    :pswitch_2
    const-string v0, "Incorrect header information"

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getUsername(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "mcontext"

    .prologue
    .line 359
    const-string v1, "ASUSREADER"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 360
    .local v0, settings:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 361
    const/4 v1, 0x0

    .line 363
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "VIBENAME"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static resetVibeAccount(Lcom/asus/reader/vibe2/ApplicationInfo;Landroid/content/Context;)V
    .locals 3
    .parameter "app"
    .parameter "mcontext"

    .prologue
    .line 517
    const-string v1, "ASUSREADER"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 519
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 521
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/asus/reader/vibe2/ApplicationInfo;->setECaremeToken(Ljava/lang/String;)V

    .line 522
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/asus/reader/vibe2/ApplicationInfo;->setPassword(Ljava/lang/String;)V

    .line 523
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/asus/reader/vibe2/ApplicationInfo;->setUserName(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public static setPadLocaleRegion(Lcom/asus/reader/vibe2/ApplicationInfo;)V
    .locals 4
    .parameter "ai"

    .prologue
    .line 315
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 316
    .local v0, lc:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/asus/reader/vibe2/ApplicationInfo;->setLocale(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/asus/reader/vibe2/ApplicationInfo;->setRegion(Ljava/lang/String;)V

    .line 318
    const-string v1, "ASUSREADER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pad Default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method public static showFlashWarning(Landroid/content/Context;)Z
    .locals 8
    .parameter "mcontext"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 342
    const-string v4, "ASUSREADER"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 343
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v4, "FIRSTTIME"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 344
    .local v1, isfirst:Z
    if-nez v1, :cond_0

    move v4, v6

    .line 355
    :goto_0
    return v4

    .line 347
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "FIRSTTIME"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 351
    new-instance v0, Lcom/asus/reader/vibe2/VibeUtils_CheckFlash;

    invoke-direct {v0, p0}, Lcom/asus/reader/vibe2/VibeUtils_CheckFlash;-><init>(Landroid/content/Context;)V

    .line 352
    .local v0, flashChecker:Lcom/asus/reader/vibe2/VibeUtils_CheckFlash;
    invoke-virtual {v0}, Lcom/asus/reader/vibe2/VibeUtils_CheckFlash;->isFlashSupport()Z

    move-result v3

    .line 353
    .local v3, support:Z
    if-eqz v3, :cond_1

    move v4, v6

    .line 354
    goto :goto_0

    :cond_1
    move v4, v7

    .line 355
    goto :goto_0
.end method
