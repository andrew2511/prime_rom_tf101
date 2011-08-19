.class public Lcom/ecareme/asuswebstorage/ASUSWebstorage;
.super Landroid/app/Application;
.source "ASUSWebstorage.java"


# static fields
.field public static final activateManufacture:[[Ljava/lang/String; = null

.field public static apicfg:Lnet/yostore/aws/api/ApiConfig; = null

.field public static applicationContext:Landroid/content/Context; = null

.field public static final asustest:Z = false

.field public static awsInterface:Lnet/yostore/aws/service/AWSServiceInterface; = null

.field public static browseSort:I = 0x0

.field public static browseSortByDesc:I = 0x0

.field public static cacheRoot:Ljava/io/File; = null

.field public static final cacheSize:J = 0xc800000L

.field public static clientversion:Ljava/lang/String; = null

.field public static closePid:I = 0x0

.field public static defaultList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface; = null

.field private static final exprireTime:J = 0x9a7ec800L

.field public static fbPageEnable:Z = false

.field public static fbPageSize:I = 0x0

.field public static isFirstTimeToUse:Z = false

.field public static isRememberLogin:Z = false

.field public static lastDownloadPath:Ljava/lang/String; = null

.field public static lastUploadPath:Ljava/lang/String; = null

.field public static logoutflg:Z = false

.field public static mPrefs:Landroid/content/SharedPreferences; = null

.field public static macPrefix:Ljava/lang/String; = null

.field public static macaddr:Ljava/lang/String; = null

.field private static final swTime:J = 0x12b1a409d09L


# instance fields
.field private spec1:Landroid/widget/TabHost$TabSpec;

.field private spec2:Landroid/widget/TabHost$TabSpec;

.field private spec3:Landroid/widget/TabHost$TabSpec;

.field private spec4:Landroid/widget/TabHost$TabSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const-string v0, "asusep90test"

    sput-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->macPrefix:Ljava/lang/String;

    .line 55
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "asus"

    aput-object v2, v1, v3

    const-string v2, "ep90"

    aput-object v2, v1, v4

    const-string v2, "asusep90test"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "garmin-asus"

    aput-object v2, v1, v3

    const-string v2, "ASUSMobileHardCode001"

    aput-object v2, v1, v4

    const-string v2, "ASUSMobileHardCode001"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->activateManufacture:[[Ljava/lang/String;

    .line 57
    const/4 v0, -0x1

    sput v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->closePid:I

    .line 63
    sput-boolean v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->logoutflg:Z

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 73
    sput-boolean v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isRememberLogin:Z

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->defaultList:Ljava/util/List;

    .line 80
    sput-boolean v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isFirstTimeToUse:Z

    .line 82
    sput v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    .line 83
    sput v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    .line 84
    sput-boolean v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageEnable:Z

    .line 85
    const/16 v0, 0x32

    sput v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->fbPageSize:I

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 90
    return-void
.end method

.method public static ResizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"
    .parameter "newWidth"

    .prologue
    const/4 v1, 0x0

    .line 372
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 373
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 374
    .local v4, height:I
    int-to-float v0, v4

    int-to-float v2, v3

    div-float v11, v0, v2

    .line 375
    .local v11, temp:F
    int-to-float v0, p1

    mul-float/2addr v0, v11

    float-to-int v7, v0

    .line 376
    .local v7, newHeight:I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v10, v0, v2

    .line 377
    .local v10, scaleWidth:F
    int-to-float v0, v7

    int-to-float v2, v4

    div-float v9, v0, v2

    .line 378
    .local v9, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 380
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v10, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 382
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 383
    .local v8, resizedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 384
    return-object v8
.end method

.method public static clearApiCfgPreferences()V
    .locals 3

    .prologue
    .line 159
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    const-string v1, "AWSPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->mPrefs:Landroid/content/SharedPreferences;

    .line 160
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->clearApiCfg(Landroid/content/SharedPreferences;)V

    .line 161
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method private static closeAllBelowActivities(Landroid/app/Activity;)V
    .locals 7
    .parameter "current"

    .prologue
    .line 353
    const/4 v2, 0x1

    .line 354
    .local v2, flag:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 355
    .local v0, below:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 367
    :cond_0
    return-void

    .line 357
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Below Parent: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    :goto_0
    if-eqz v2, :cond_0

    .line 359
    move-object v3, v0

    .line 361
    .local v3, temp:Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 362
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 364
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static exitAp(Landroid/content/Context;)V
    .locals 6
    .parameter "current"

    .prologue
    .line 311
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lnet/yostore/aws/service/AWSService;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    .local v2, awsIntent:Landroid/content/Intent;
    sget-object v5, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v5, :cond_0

    .line 315
    :try_start_0
    sget-object v5, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    invoke-interface {v5}, Lnet/yostore/aws/service/AWSServiceInterface;->resetService()V

    .line 316
    invoke-virtual {p0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    :cond_0
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lnet/yostore/aws/service/DownloadService;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    .local v3, downloadIntent:Landroid/content/Intent;
    sget-object v5, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    if-eqz v5, :cond_1

    .line 328
    :try_start_1
    sget-object v5, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    invoke-interface {v5}, Lnet/yostore/aws/service/DownloadServiceInterface;->resetService()V

    .line 329
    invoke-virtual {p0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    :cond_1
    :goto_1
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 339
    .local v1, am:Landroid/app/ActivityManager;
    const-string v5, "com.ecareme.asuswebstorage"

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 341
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v4, i:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 346
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 348
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v5, v0

    invoke-static {v5}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->closeAllBelowActivities(Landroid/app/Activity;)V

    .line 349
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 350
    return-void

    .line 331
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v4           #i:Landroid/content/Intent;
    .restart local p0
    :catch_0
    move-exception v5

    goto :goto_1

    .line 318
    .end local v3           #downloadIntent:Landroid/content/Intent;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static getApiCfg()Lnet/yostore/aws/api/ApiConfig;
    .locals 2

    .prologue
    .line 112
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-boolean v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isRememberLogin:Z

    if-eqz v1, :cond_1

    .line 113
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    sput-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 114
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 116
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v0

    .line 117
    .local v0, _acc:Lnet/yostore/aws/sqlite/entity/AccInfo;
    if-eqz v0, :cond_1

    .line 118
    iget v1, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browsesort:I

    sput v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    .line 119
    iget v1, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browseSortByDesc:I

    sput v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    .line 127
    .end local v0           #_acc:Lnet/yostore/aws/sqlite/entity/AccInfo;
    :cond_1
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v1
.end method

.method public static getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->macaddr:Ljava/lang/String;

    return-object v0
.end method

.method public static getMachineid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreferenceApiCfg()Lnet/yostore/aws/api/ApiConfig;
    .locals 5

    .prologue
    .line 131
    sget-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    const-string v3, "AWSPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->mPrefs:Landroid/content/SharedPreferences;

    .line 132
    sget-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    .line 133
    .local v1, _apicfg:Lnet/yostore/aws/api/ApiConfig;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 135
    sget-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v0

    .line 136
    .local v0, _acc:Lnet/yostore/aws/sqlite/entity/AccInfo;
    if-eqz v0, :cond_0

    .line 137
    iget v2, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browsesort:I

    sput v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    .line 138
    iget v2, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browseSortByDesc:I

    sput v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    .line 145
    .end local v0           #_acc:Lnet/yostore/aws/sqlite/entity/AccInfo;
    :cond_0
    sget-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 146
    sput-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 148
    :cond_1
    return-object v1
.end method

.method public static getProcessStatus(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "ctx"
    .parameter "status"

    .prologue
    const v1, 0x7f06010d

    .line 474
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, rtn:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 528
    :goto_0
    return-object v0

    .line 477
    :sswitch_0
    const v1, 0x7f060100

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 478
    goto :goto_0

    .line 480
    :sswitch_1
    const-string v0, ""

    .line 481
    goto :goto_0

    .line 483
    :sswitch_2
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    goto :goto_0

    .line 486
    :sswitch_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    goto :goto_0

    .line 489
    :sswitch_4
    const v1, 0x7f060101

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    goto :goto_0

    .line 492
    :sswitch_5
    const v1, 0x7f060102

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    goto :goto_0

    .line 495
    :sswitch_6
    const v1, 0x7f060103

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    goto :goto_0

    .line 498
    :sswitch_7
    const v1, 0x7f060104

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    goto :goto_0

    .line 501
    :sswitch_8
    const v1, 0x7f060105

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    goto :goto_0

    .line 504
    :sswitch_9
    const v1, 0x7f060106

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 505
    goto :goto_0

    .line 507
    :sswitch_a
    const v1, 0x7f060107

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    goto :goto_0

    .line 510
    :sswitch_b
    const v1, 0x7f060108

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    goto :goto_0

    .line 513
    :sswitch_c
    const v1, 0x7f060109

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    goto :goto_0

    .line 516
    :sswitch_d
    const v1, 0x7f06010a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 517
    goto :goto_0

    .line 519
    :sswitch_e
    const v1, 0x7f06010b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 520
    goto :goto_0

    .line 522
    :sswitch_f
    const v1, 0x7f06010c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 523
    goto :goto_0

    .line 475
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
        0x2 -> :sswitch_4
        0xd3 -> :sswitch_5
        0xd5 -> :sswitch_6
        0xd6 -> :sswitch_7
        0xda -> :sswitch_8
        0xdb -> :sswitch_9
        0xdc -> :sswitch_a
        0xdd -> :sswitch_b
        0xe0 -> :sswitch_c
        0xe2 -> :sswitch_d
        0xfa -> :sswitch_e
        0xfd -> :sswitch_f
        0x3e7 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getProductname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getUuid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->macPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->macaddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static goHome(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 260
    const-class v0, Lnet/yostore/aws/view/common/HomeActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 261
    return-void
.end method

.method public static goLogin(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 251
    const-class v0, Lnet/yostore/aws/view/common/LoginActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 252
    return-void
.end method

.method private static goPage(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 2
    .parameter "ctx"
    .parameter
    .parameter "clearTop"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 215
    if-eqz p2, :cond_0

    .line 216
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 219
    if-eqz p2, :cond_1

    .line 220
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 222
    :cond_1
    return-void
.end method

.method public static goRegister(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 239
    const-class v0, Lnet/yostore/aws/view/common/RegisterActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 240
    return-void
.end method

.method public static goSearch(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 282
    const-class v0, Lnet/yostore/aws/view/search/SearchActivity;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 283
    return-void
.end method

.method public static goSetting(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 276
    const-class v0, Lnet/yostore/aws/view/common/SettingActivity;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 277
    return-void
.end method

.method public static goSplash(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 230
    const-class v0, Lnet/yostore/aws/view/common/SplashActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 231
    return-void
.end method

.method public static haveInternet()Z
    .locals 5

    .prologue
    .line 450
    const/4 v2, 0x0

    .line 451
    .local v2, result:Z
    sget-object v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 452
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 453
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 455
    :cond_0
    const/4 v2, 0x0

    .line 469
    :goto_0
    return v2

    .line 459
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 461
    const/4 v2, 0x0

    goto :goto_0

    .line 465
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isActivateUser()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 390
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 391
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->activateManufacture:[[Ljava/lang/String;

    aget-object v1, v1, v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->activateManufacture:[[Ljava/lang/String;

    aget-object v1, v1, v2

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    :cond_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->activateManufacture:[[Ljava/lang/String;

    aget-object v1, v1, v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    :cond_1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->activateManufacture:[[Ljava/lang/String;

    aget-object v1, v1, v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->activateManufacture:[[Ljava/lang/String;

    aget-object v0, v0, v3

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sput-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->macPrefix:Ljava/lang/String;

    :cond_2
    move v0, v3

    .line 402
    :goto_0
    return v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static isExpire(J)Z
    .locals 1
    .parameter "now"

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public static logout(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 287
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->logoutflg:Z

    .line 291
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 292
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 293
    const-string v1, "AWSPrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 294
    .local v0, mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->clearApiCfg(Landroid/content/SharedPreferences;)V

    .line 295
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v1, :cond_0

    .line 296
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/AWSServiceInterface;->logout()Z

    .line 300
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-static {p0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->exitAp(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v0           #mPrefs:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V
    .locals 1
    .parameter "apicfg"

    .prologue
    .line 153
    sget-boolean v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->isRememberLogin:Z

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v0}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 155
    :cond_0
    sput-object p0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 156
    return-void
.end method


# virtual methods
.method public getSpec(I)Landroid/widget/TabHost$TabSpec;
    .locals 1
    .parameter "i"

    .prologue
    .line 168
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->spec1:Landroid/widget/TabHost$TabSpec;

    .line 186
    :goto_0
    return-object v0

    .line 172
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->spec2:Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->spec3:Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 180
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->spec4:Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 186
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 96
    invoke-virtual {p0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->cacheRoot:Ljava/io/File;

    .line 97
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->defaultList:Ljava/util/List;

    new-instance v2, Lnet/yostore/aws/handler/entity/FsInfo;

    sget-object v3, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->NUll:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    const v4, 0x7f06002f

    invoke-virtual {p0, v4}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/handler/entity/FsInfo$EntryType;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v1, "10012"

    sput-object v1, Lnet/yostore/aws/api/entity/ApiCookies;->sid:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    .line 100
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    const-string v2, "AWSPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->mPrefs:Landroid/content/SharedPreferences;

    .line 101
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 102
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/yostore/aws/api/entity/ApiCookies;->macaddr:Ljava/lang/String;

    .line 103
    sget-object v1, Lnet/yostore/aws/api/entity/ApiCookies;->macaddr:Ljava/lang/String;

    sput-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->macaddr:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_MANU_Maunfactory:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getProductname()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_PROD_ProductModal:Ljava/lang/String;

    .line 106
    invoke-static {}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getSdRoot()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->lastUploadPath:Ljava/lang/String;

    .line 107
    invoke-static {}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getSdRoot()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->lastDownloadPath:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setSpec(ILandroid/widget/TabHost$TabSpec;)V
    .locals 1
    .parameter "i"
    .parameter "spec"

    .prologue
    .line 193
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->spec1:Landroid/widget/TabHost$TabSpec;

    iput-object v0, p0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->spec1:Landroid/widget/TabHost$TabSpec;

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->spec2:Landroid/widget/TabHost$TabSpec;

    iput-object v0, p0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->spec2:Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 201
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->spec3:Landroid/widget/TabHost$TabSpec;

    iput-object v0, p0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->spec3:Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 205
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->spec4:Landroid/widget/TabHost$TabSpec;

    iput-object v0, p0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->spec4:Landroid/widget/TabHost$TabSpec;

    goto :goto_0
.end method
