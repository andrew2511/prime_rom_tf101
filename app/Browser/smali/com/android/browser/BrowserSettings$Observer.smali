.class Lcom/android/browser/BrowserSettings$Observer;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Observer"
.end annotation


# instance fields
.field private mSettings:Landroid/webkit/WebSettings;


# direct methods
.method constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0
    .parameter "w"

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/android/browser/BrowserSettings$Observer;->mSettings:Landroid/webkit/WebSettings;

    .line 250
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "langCode"

    .prologue
    .line 327
    if-nez p0, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    .line 330
    :cond_0
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const-string v0, "he"

    goto :goto_0

    .line 333
    :cond_1
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    const-string v0, "id"

    goto :goto_0

    .line 336
    :cond_2
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    const-string v0, "yi"

    goto :goto_0

    :cond_3
    move-object v0, p0

    .line 340
    goto :goto_0
.end method

.method private generateUAString(I)Ljava/lang/String;
    .locals 10
    .parameter "UAType"

    .prologue
    const/4 v9, 0x1

    .line 348
    if-nez p1, :cond_0

    .line 349
    const/4 v7, 0x0

    .line 386
    :goto_0
    return-object v7

    .line 350
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 352
    .local v5, locale:Ljava/util/Locale;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 353
    .local v1, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, language:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 355
    invoke-static {v4}, Lcom/android/browser/BrowserSettings$Observer;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 358
    const-string v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    .end local v2           #country:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    const-string v7, "REL"

    sget-object v8, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 368
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 369
    .local v6, model:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 370
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    .end local v6           #model:Ljava/lang/String;
    :cond_2
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 375
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 376
    const-string v7, " Build/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    :cond_3
    const-string v0, ""

    .line 382
    .local v0, base:Ljava/lang/String;
    if-ne p1, v9, :cond_6

    .line 383
    const-string v0, "Mozilla/5.0 (Linux; U; Linux Ventana; %s) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/8.0 Safari/534.13"

    .line 386
    :cond_4
    :goto_2
    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 363
    .end local v0           #base:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    :cond_5
    const-string v7, "en"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 384
    .restart local v0       #base:Ljava/lang/String;
    .restart local v3       #id:Ljava/lang/String;
    :cond_6
    const/4 v7, 0x2

    if-ne p1, v7, :cond_4

    .line 385
    const-string v0, "Mozilla/5.0 (Linux; U; Android 3.1; %s) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.13"

    goto :goto_2
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6
    .parameter "o"
    .parameter "arg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 253
    move-object v0, p1

    check-cast v0, Lcom/android/browser/BrowserSettings;

    move-object v1, v0

    .line 254
    .local v1, b:Lcom/android/browser/BrowserSettings;
    iget-object v2, p0, Lcom/android/browser/BrowserSettings$Observer;->mSettings:Landroid/webkit/WebSettings;

    .line 256
    .local v2, s:Landroid/webkit/WebSettings;
    iget-object v3, v1, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 258
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/browser/BrowserSettings$Observer;->generateUAString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 271
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$100(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 272
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$200(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 273
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$300(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 274
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$400(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setShowVisualIndicator(Z)V

    .line 275
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$500(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 276
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$600(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 278
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$700(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$800()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 280
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$900()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 281
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1000()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 282
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1100()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 283
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1200(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setNavDump(Z)V

    .line 284
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1300()Landroid/webkit/WebSettings$TextSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 285
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1400()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 286
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1500(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 287
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1600(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 288
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1700(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAutoFillEnabled(Z)V

    .line 289
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1800(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 290
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1900(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 291
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$2000()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPageCacheCapacity(I)V

    .line 294
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 296
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 299
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    .line 301
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 304
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2100(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 305
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2200(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 306
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2300(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 307
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2400(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setWorkersEnabled(Z)V

    .line 308
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2500(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 311
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2600(Lcom/android/browser/BrowserSettings;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 312
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2700(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 313
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2800(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 314
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2900(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 317
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$3000(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;)V

    .line 319
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$3100(Lcom/android/browser/BrowserSettings;)V

    .line 320
    return-void
.end method
