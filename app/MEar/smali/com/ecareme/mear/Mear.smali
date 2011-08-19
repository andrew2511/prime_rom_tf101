.class public Lcom/ecareme/mear/Mear;
.super Landroid/app/Application;
.source "Mear.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mear"

.field public static apicfg:Lnet/yostore/aws/api/ApiConfig; = null

.field public static applicationContext:Landroid/content/Context; = null

.field public static bufferPercent:I = 0x0

.field public static final c_ClientType:Ljava/lang/String; = "0"

.field public static clientversion:Ljava/lang/String; = null

.field public static currentList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static currentSong:Lnet/yostore/aws/handler/entity/Mp3Item; = null

.field public static final filenameSparate:Ljava/lang/String; = ":"

.field public static import_info_id:J = 0x0L

.field public static ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean; = null

.field public static isLogout:Z = false

.field public static lib_folder_id:J = 0x0L

.field public static mPrefs:Landroid/content/SharedPreferences; = null

.field public static macaddr:Ljava/lang/String; = null

.field public static mearBlockFreeAccAfterFGate:I = 0x0

.field public static mearBlockFreeAccFirstGate:I = 0x0

.field public static mear_folder_id:J = 0x0L

.field public static meta_folder_id:J = 0x0L

.field public static mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface; = null

.field public static myBackupFolderId:J = 0x0L

.field public static myCollectionFolderId:J = 0x0L

.field public static mySyncFolderId:J = 0x0L

.field public static now_playing_info_id:J = 0x0L

.field public static npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean; = null

.field public static onlinemode:Z = false

.field public static pageSize:I = 0x0

.field public static plInterface:Lnet/yostore/aws/service/PlayListServiceInterface; = null

.field public static playingShutcutList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static playingStatus:I = 0x0

.field public static pt:J = 0x0L

.field public static repeatMode:I = 0x0

.field public static shuffleMode:I = 0x0

.field public static updatePlayerStatusFlg:Z = false

.field public static userId:Ljava/lang/String; = null

.field public static final v_ClientVersion:Ljava/lang/String; = "2.0."


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-wide/16 v3, -0x3e7

    const/4 v2, 0x0

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/ecareme/mear/Mear;->clientversion:Ljava/lang/String;

    .line 82
    const-string v0, ""

    sput-object v0, Lcom/ecareme/mear/Mear;->macaddr:Ljava/lang/String;

    .line 85
    sput-boolean v2, Lcom/ecareme/mear/Mear;->isLogout:Z

    .line 88
    sput v2, Lcom/ecareme/mear/Mear;->repeatMode:I

    .line 89
    sput v2, Lcom/ecareme/mear/Mear;->shuffleMode:I

    .line 90
    sput v2, Lcom/ecareme/mear/Mear;->playingStatus:I

    .line 91
    sput-wide v7, Lcom/ecareme/mear/Mear;->myCollectionFolderId:J

    .line 92
    const-wide/16 v0, -0x3

    sput-wide v0, Lcom/ecareme/mear/Mear;->myBackupFolderId:J

    .line 93
    const-wide/16 v0, -0x5

    sput-wide v0, Lcom/ecareme/mear/Mear;->mySyncFolderId:J

    .line 94
    sput-wide v3, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    .line 95
    sput-wide v3, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 96
    sput-wide v3, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    .line 101
    sput-wide v3, Lcom/ecareme/mear/Mear;->now_playing_info_id:J

    .line 102
    sput-wide v3, Lcom/ecareme/mear/Mear;->import_info_id:J

    .line 105
    sput-object v6, Lcom/ecareme/mear/Mear;->playingShutcutList:Ljava/util/List;

    .line 107
    const/16 v0, 0x1f4

    sput v0, Lcom/ecareme/mear/Mear;->pageSize:I

    .line 112
    sput v2, Lcom/ecareme/mear/Mear;->mearBlockFreeAccAfterFGate:I

    .line 113
    sput v2, Lcom/ecareme/mear/Mear;->mearBlockFreeAccFirstGate:I

    .line 115
    sput-boolean v5, Lcom/ecareme/mear/Mear;->updatePlayerStatusFlg:Z

    .line 117
    sput-wide v7, Lcom/ecareme/mear/Mear;->pt:J

    .line 119
    sput v2, Lcom/ecareme/mear/Mear;->bufferPercent:I

    .line 121
    sput-boolean v5, Lcom/ecareme/mear/Mear;->onlinemode:Z

    .line 126
    sput-object v6, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static ResizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"
    .parameter "newWidth"

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 272
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 273
    .local v4, height:I
    int-to-float v0, v4

    int-to-float v2, v3

    div-float v11, v0, v2

    .line 274
    .local v11, temp:F
    int-to-float v0, p1

    mul-float/2addr v0, v11

    float-to-int v7, v0

    .line 275
    .local v7, newHeight:I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v10, v0, v2

    .line 276
    .local v10, scaleWidth:F
    int-to-float v0, v7

    int-to-float v2, v4

    div-float v9, v0, v2

    .line 277
    .local v9, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 279
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v10, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 281
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 282
    .local v8, resizedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 283
    return-object v8
.end method

.method public static clearApiCfgPreferences()V
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/ecareme/mear/Mear;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->clearApiCfg(Landroid/content/SharedPreferences;)V

    .line 177
    return-void
.end method

.method public static exitAp(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    .line 229
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lnet/yostore/aws/service/PlayerService;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v3, mpIntent:Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lnet/yostore/aws/service/PlayListService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v4, plIntent:Landroid/content/Intent;
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v5, :cond_0

    .line 234
    :try_start_0
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v5}, Lnet/yostore/aws/service/PlayerServiceInterface;->resetService()V

    .line 235
    invoke-virtual {p0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 236
    sget-object v5, Lcom/ecareme/mear/Mear;->plInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    if-eqz v5, :cond_0

    .line 237
    sget-object v5, Lcom/ecareme/mear/Mear;->plInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    invoke-interface {v5}, Lnet/yostore/aws/service/PlayListServiceInterface;->resetService()V

    .line 238
    invoke-virtual {p0, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    :cond_0
    :goto_0
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 255
    .local v0, am:Landroid/app/ActivityManager;
    const-string v5, "com.ecareme.mear"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 258
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v2, i:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 262
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 267
    .end local v2           #i:Landroid/content/Intent;
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 268
    return-void

    .line 241
    .end local v0           #am:Landroid/app/ActivityManager;
    .restart local p0
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 244
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 249
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 264
    .end local v1           #e:Ljava/lang/Exception;
    .end local p0
    .restart local v0       #am:Landroid/app/ActivityManager;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 265
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getApiCfg()Lnet/yostore/aws/api/ApiConfig;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/ecareme/mear/Mear;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    sput-object v0, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 142
    sget-object v0, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    sget-object v0, Lcom/ecareme/mear/Mear;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    .line 151
    :cond_0
    sget-object v0, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method public static getCurrentSong()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 339
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v0, :cond_0

    .line 340
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentSong()Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v0

    sput-object v0, Lcom/ecareme/mear/Mear;->currentSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    .line 342
    :cond_0
    return-void
.end method

.method public static getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    const-string v0, ""

    return-object v0
.end method

.method public static getMachineid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreferenceApiCfg()Lnet/yostore/aws/api/ApiConfig;
    .locals 2

    .prologue
    .line 155
    sget-object v1, Lcom/ecareme/mear/Mear;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    .line 156
    .local v0, _apicfg:Lnet/yostore/aws/api/ApiConfig;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 158
    sget-object v1, Lcom/ecareme/mear/Mear;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    .line 164
    :cond_0
    sget-object v1, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 165
    sput-object v0, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 167
    :cond_1
    return-object v0
.end method

.method public static getProductname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getShortCutDisplay(Lnet/yostore/aws/handler/entity/FsInfo;)Ljava/lang/String;
    .locals 2
    .parameter "fi"

    .prologue
    .line 303
    if-eqz p0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    const-string v0, ""

    return-object v0
.end method

.method public static goHome(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 196
    const-class v0, Lnet/yostore/aws/view/present/CategoryTab;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ecareme/mear/Mear;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 198
    return-void
.end method

.method public static goLogin(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 211
    const-class v0, Lnet/yostore/aws/view/common/LoginActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ecareme/mear/Mear;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 212
    return-void
.end method

.method public static goOffLinePage(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 201
    const-class v0, Lnet/yostore/aws/view/present/OffLineCategoryTab;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ecareme/mear/Mear;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 203
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
    .line 180
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 182
    if-eqz p2, :cond_0

    .line 183
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 186
    if-eqz p2, :cond_1

    .line 187
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 189
    :cond_1
    return-void
.end method

.method public static goPlayList(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 226
    const-class v0, Lnet/yostore/aws/view/present/PlayerActivity;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ecareme/mear/Mear;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 227
    return-void
.end method

.method public static goRegister(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 206
    const-class v0, Lnet/yostore/aws/view/common/RegisterActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ecareme/mear/Mear;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 207
    return-void
.end method

.method public static goSplash(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 192
    const-class v0, Lnet/yostore/aws/view/common/SplashActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ecareme/mear/Mear;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 193
    return-void
.end method

.method public static haveInternet()Z
    .locals 5

    .prologue
    .line 542
    const/4 v2, 0x0

    .line 543
    .local v2, result:Z
    sget-object v3, Lcom/ecareme/mear/Mear;->applicationContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 544
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 545
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 547
    :cond_0
    const/4 v2, 0x0

    .line 561
    :goto_0
    return v2

    .line 551
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 553
    const/4 v2, 0x0

    goto :goto_0

    .line 557
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isActivateUser()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public static logout(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 216
    sput-object v1, Lcom/ecareme/mear/Mear;->currentSong:Lnet/yostore/aws/handler/entity/Mp3Item;

    .line 217
    sput-object v1, Lcom/ecareme/mear/Mear;->currentList:Ljava/util/List;

    .line 218
    sput-object v1, Lcom/ecareme/mear/Mear;->playingShutcutList:Ljava/util/List;

    .line 219
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 220
    sget-object v0, Lcom/ecareme/mear/Mear;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->clearApiCfg(Landroid/content/SharedPreferences;)V

    .line 221
    sput-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    .line 222
    sget-object v0, Lcom/ecareme/mear/Mear;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->exitAp(Landroid/content/Context;)V

    .line 223
    return-void
.end method

.method public static saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V
    .locals 1
    .parameter "apicfg"

    .prologue
    .line 172
    sget-object v0, Lcom/ecareme/mear/Mear;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v0}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 173
    return-void
.end method

.method public static searchLibFileDirToPlay(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .parameter "apicfg"
    .parameter "ancestorid"
    .parameter "nowPlayingId"
    .parameter "nowPlayingDisplay"

    .prologue
    .line 470
    const-string v1, " "

    const/4 v2, 0x0

    const-string v3, "mp3"

    sget v4, Lcom/ecareme/mear/Mear;->pageSize:I

    const/4 v5, 0x0

    sget-object v6, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    move-object v0, p0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lnet/yostore/aws/view/navigate/LibHandler;->getSqlQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-result-object v0

    .line 471
    .local v0, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    const/4 p0, -0x1

    .line 473
    .local p0, currentPlayIdx:I
    if-nez v0, :cond_0

    .line 475
    const-string p1, "Mear"

    .end local p1
    const-string p2, "getDefaultSqlQuery: response is null(query file)"

    .end local p2
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v0           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :goto_0
    return-void

    .line 477
    .restart local v0       #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .restart local p1
    .restart local p2
    :cond_0
    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    const-string p1, "Mear"

    .end local p1
    const-string p2, "getDefaultSqlQuery: response file status is not 0"

    .end local p2
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    .restart local p1
    .restart local p2
    :cond_1
    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 483
    .local v0, elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 486
    .local v3, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :try_start_0
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    .end local v0           #elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    sget-wide v1, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    invoke-interface {v0, v1, v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->comparePlayingFolderId(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    move v0, p0

    .line 488
    .end local p0           #currentPlayIdx:I
    .local v0, currentPlayIdx:I
    :goto_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_2

    .line 516
    if-gez v0, :cond_3

    .line 517
    new-instance p0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {p0}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 518
    .local p0, mp3Item:Lnet/yostore/aws/handler/entity/Mp3Item;
    const-string p1, ""

    .end local p1
    invoke-virtual {p0, p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->setAttribute(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0, p4}, Lnet/yostore/aws/handler/entity/Mp3Item;->setDisplay(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0, p2, p3}, Lnet/yostore/aws/handler/entity/Mp3Item;->setRealfileId(J)V

    .line 521
    sget-object p1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {p1, p0}, Lnet/yostore/aws/service/PlayerServiceInterface;->insertPlayingSong(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    move p0, v0

    .end local v0           #currentPlayIdx:I
    .local p0, currentPlayIdx:I
    goto :goto_0

    .line 489
    .end local p0           #currentPlayIdx:I
    .restart local v0       #currentPlayIdx:I
    .restart local p1
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 490
    .local v1, ei:Lnet/yostore/aws/api/entity/EntryInfo;
    invoke-virtual {v1, p1}, Lnet/yostore/aws/api/entity/EntryInfo;->setRootFolder(Ljava/lang/String;)V

    .line 504
    new-instance p0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {p0}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 505
    .local p0, _mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lnet/yostore/aws/handler/entity/Mp3Item;->setRealfileId(J)V

    .line 506
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/yostore/aws/handler/entity/Mp3Item;->setDisplay(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0, p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->setRootFolder(Ljava/lang/String;)V

    .line 508
    sget-object v4, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v4, p0}, Lnet/yostore/aws/service/PlayerServiceInterface;->addSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 509
    sget-object p0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    .end local p0           #_mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    invoke-interface {p0}, Lnet/yostore/aws/service/PlayerServiceInterface;->isPlaying()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {p0}, Lnet/yostore/aws/service/PlayerServiceInterface;->getStatus()I

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .end local v1           #ei:Lnet/yostore/aws/api/entity/EntryInfo;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 510
    sget-object p0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {p0, v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->setCurrentPosition(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 511
    move p0, v2

    .line 513
    .end local v0           #currentPlayIdx:I
    .local p0, currentPlayIdx:I
    :goto_2
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    move v0, p0

    .end local p0           #currentPlayIdx:I
    .local v0, currentPlayIdx:I
    goto :goto_1

    .line 530
    .end local v0           #currentPlayIdx:I
    .end local v2           #i:I
    .restart local p0       #currentPlayIdx:I
    :catch_0
    move-exception p1

    .line 533
    .local p1, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 530
    .end local p0           #currentPlayIdx:I
    .end local p1           #e:Ljava/lang/Exception;
    .restart local v0       #currentPlayIdx:I
    .restart local v2       #i:I
    :catch_1
    move-exception p0

    move-object p1, p0

    move p0, v0

    .end local v0           #currentPlayIdx:I
    .restart local p0       #currentPlayIdx:I
    goto :goto_3

    .line 524
    .end local v2           #i:I
    .local p1, ancestorid:Ljava/lang/String;
    :catch_2
    move-exception p1

    goto/16 :goto_0

    .end local p0           #currentPlayIdx:I
    .end local p1           #ancestorid:Ljava/lang/String;
    .restart local v0       #currentPlayIdx:I
    .restart local v2       #i:I
    :catch_3
    move-exception p0

    move p0, v0

    .end local v0           #currentPlayIdx:I
    .restart local p0       #currentPlayIdx:I
    goto/16 :goto_0

    .end local p0           #currentPlayIdx:I
    .restart local v0       #currentPlayIdx:I
    .restart local p1       #ancestorid:Ljava/lang/String;
    :cond_3
    move p0, v0

    .end local v0           #currentPlayIdx:I
    .restart local p0       #currentPlayIdx:I
    goto/16 :goto_0

    .end local p0           #currentPlayIdx:I
    .restart local v0       #currentPlayIdx:I
    :cond_4
    move p0, v0

    .end local v0           #currentPlayIdx:I
    .restart local p0       #currentPlayIdx:I
    goto :goto_2
.end method

.method public static shareMusicContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "ctx"
    .parameter "playingMp3"

    .prologue
    const/4 v7, 0x0

    .line 345
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v3, sendIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f04000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, items:[Ljava/lang/String;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 350
    .local v2, posterIdx:Ljava/util/Random;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 351
    .local v1, nowmp3:Ljava/lang/String;
    :goto_0
    const-string v4, "android.intent.extra.TEXT"

    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 355
    return-void

    .end local v1           #nowmp3:Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .line 350
    goto :goto_0
.end method

.method public static updatePlayingList(Lnet/yostore/aws/api/ApiConfig;JJLjava/lang/String;)V
    .locals 16
    .parameter "apicfg"
    .parameter "folderid"
    .parameter "nowPlayingId"
    .parameter "nowPlayingDisplay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 359
    sget-object v5, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->isInLib()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    sget-wide v5, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v5, p1, v5

    if-eqz v5, :cond_4

    .line 360
    :cond_1
    const/4 v6, 0x0

    .line 361
    .local v6, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v5, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .end local p1
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 363
    .local v5, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v9

    check-cast v9, Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 365
    .end local v6           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .local v9, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :try_start_1
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object v6

    .line 368
    .local v6, fileItems:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FileInfo;>;"
    const/16 p1, 0x0

    .line 369
    .local p1, i:I
    const/16 p0, -0x1

    .line 372
    .local p0, currentPlayIdx:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p2

    const/4 v5, 0x1

    sub-int p2, p2, v5

    .local p2, s:I
    move/from16 v10, p2

    .end local p2           #s:I
    .local v10, s:I
    move/from16 v7, p1

    .end local p1           #i:I
    .local v7, i:I
    move/from16 p1, p0

    .end local v5           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local p0           #currentPlayIdx:I
    .local p1, currentPlayIdx:I
    :goto_0
    if-gez v10, :cond_3

    .line 422
    if-gez p1, :cond_2

    sget-object p0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface/range {p0 .. p0}, Lnet/yostore/aws/service/PlayerServiceInterface;->isPlaying()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface/range {p0 .. p0}, Lnet/yostore/aws/service/PlayerServiceInterface;->getStatus()I

    move-result p0

    if-nez p0, :cond_2

    .line 423
    new-instance p0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct/range {p0 .. p0}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 424
    .local p0, mp3Item:Lnet/yostore/aws/handler/entity/Mp3Item;
    const-string p1, ""

    .end local p1           #currentPlayIdx:I
    invoke-virtual/range {p0 .. p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->setAttribute(Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Mp3Item;->setDisplay(Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/Mp3Item;->setRealfileId(J)V

    .line 434
    sget-object p1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->insertPlayingSong(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 465
    .end local v6           #fileItems:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .end local v7           #i:I
    .end local v9           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .end local v10           #s:I
    .end local p0           #mp3Item:Lnet/yostore/aws/handler/entity/Mp3Item;
    :cond_2
    :goto_1
    return-void

    .line 373
    .restart local v6       #fileItems:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .restart local v7       #i:I
    .restart local v9       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .restart local v10       #s:I
    .restart local p1       #currentPlayIdx:I
    :cond_3
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/yostore/aws/api/entity/FileInfo;

    .line 374
    .local v5, fi:Lnet/yostore/aws/api/entity/FileInfo;
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FileInfo;->getIsencrypted()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FileInfo;->getIsorigdeleted()Z

    move-result p0

    if-nez p0, :cond_c

    .line 376
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object p0

    .line 377
    .local p0, dsp:Ljava/lang/String;
    new-instance v8, Lnet/yostore/aws/handler/entity/Mp3Info;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/entity/Mp3Info;-><init>(Ljava/lang/String;)V

    .line 378
    .local v8, mp3Inf:Lnet/yostore/aws/handler/entity/Mp3Info;
    invoke-virtual {v8}, Lnet/yostore/aws/handler/entity/Mp3Info;->getDisplay()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 379
    invoke-virtual {v8}, Lnet/yostore/aws/handler/entity/Mp3Info;->getDisplay()Ljava/lang/String;

    move-result-object p0

    move-object/from16 p2, p0

    .line 380
    .end local p0           #dsp:Ljava/lang/String;
    .local p2, dsp:Ljava/lang/String;
    :goto_2
    invoke-virtual {v8}, Lnet/yostore/aws/handler/entity/Mp3Info;->getFileid()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long p0, v11, v13

    if-lez p0, :cond_c

    .line 391
    :try_start_2
    new-instance p0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct/range {p0 .. p0}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 393
    .local p0, _mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .end local v8           #mp3Inf:Lnet/yostore/aws/handler/entity/Mp3Info;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutId(J)V

    .line 394
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v5

    .end local v5           #fi:Lnet/yostore/aws/api/entity/FileInfo;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutDisplay(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/Mp3Item;->setDisplay(Ljava/lang/String;)V

    .line 397
    sget-object p2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    .end local p2           #dsp:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->addSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 399
    sget-object p2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface/range {p2 .. p2}, Lnet/yostore/aws/service/PlayerServiceInterface;->isPlaying()Z

    move-result p2

    if-nez p2, :cond_b

    sget-object p2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface/range {p2 .. p2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getStatus()I

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lnet/yostore/aws/handler/entity/Mp3Item;->getRealfileId()J

    move-result-wide v11

    cmp-long p0, v11, p3

    if-nez p0, :cond_b

    .line 400
    .end local p0           #_mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    sget-object p0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    move-object/from16 v0, p0

    move v1, v7

    invoke-interface {v0, v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->setCurrentPosition(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 401
    move/from16 p0, v7

    .line 417
    .end local p1           #currentPlayIdx:I
    .local p0, currentPlayIdx:I
    :goto_3
    add-int/lit8 p1, v7, 0x1

    .line 372
    .end local v7           #i:I
    .local p1, i:I
    :goto_4
    add-int/lit8 p2, v10, -0x1

    .end local v10           #s:I
    .local p2, s:I
    move/from16 v10, p2

    .end local p2           #s:I
    .restart local v10       #s:I
    move/from16 v7, p1

    .end local p1           #i:I
    .restart local v7       #i:I
    move/from16 p1, p0

    .end local p0           #currentPlayIdx:I
    .local p1, currentPlayIdx:I
    goto/16 :goto_0

    .line 404
    :catch_0
    move-exception p0

    .line 408
    .local p0, e:Landroid/os/RemoteException;
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 416
    .end local p0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception p0

    move-object/from16 p1, p0

    .line 417
    .end local p1           #currentPlayIdx:I
    add-int/lit8 p0, v7, 0x1

    .line 418
    .end local v7           #i:I
    .local p0, i:I
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 436
    .end local v6           #fileItems:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .end local v10           #s:I
    .end local p0           #i:I
    :catch_1
    move-exception p0

    move-object/from16 p1, v9

    .line 437
    .end local v9           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .local p0, e:Ljava/lang/Exception;
    .local p1, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :goto_5
    throw p0

    .line 410
    .end local p0           #e:Ljava/lang/Exception;
    .restart local v6       #fileItems:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .restart local v7       #i:I
    .restart local v9       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .restart local v10       #s:I
    .local p1, currentPlayIdx:I
    :catch_2
    move-exception p0

    .line 413
    .restart local p0       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 417
    add-int/lit8 p0, v7, 0x1

    .end local v7           #i:I
    .local p0, i:I
    move/from16 v15, p1

    .end local p1           #currentPlayIdx:I
    .local v15, currentPlayIdx:I
    move/from16 p1, p0

    .end local p0           #i:I
    .local p1, i:I
    move/from16 p0, v15

    .end local v15           #currentPlayIdx:I
    .local p0, currentPlayIdx:I
    goto :goto_4

    .line 440
    .end local v6           #fileItems:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .end local v9           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .end local v10           #s:I
    .local p0, apicfg:Lnet/yostore/aws/api/ApiConfig;
    .local p1, folderid:J
    :cond_4
    new-instance v5, Lnet/yostore/aws/handler/MearDataHandler;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/MearDataHandler;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 441
    .local v5, mdh:Lnet/yostore/aws/handler/MearDataHandler;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v6, awsl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    sget-wide p1, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    .end local p1           #folderid:J
    const-wide/16 v7, 0x0

    cmp-long p1, p1, v7

    if-lez p1, :cond_5

    .line 443
    sget-wide p1, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_5
    sget-object p1, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    if-eqz p1, :cond_6

    .line 447
    sget-object p1, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual/range {p1 .. p1}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 448
    const/16 p1, 0x0

    .local p1, a:I
    :goto_6
    sget-object p2, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual/range {p2 .. p2}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result p2

    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_8

    .line 453
    .end local p1           #a:I
    :cond_6
    const-string v7, " "

    const/4 v8, 0x0

    sget-object v9, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    const-string v10, "mp3"

    invoke-virtual/range {v5 .. v10}, Lnet/yostore/aws/handler/MearDataHandler;->getFolderCnt(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 455
    .local p1, awsCnt:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 p2, 0x0

    .line 456
    .local p2, awsIdx:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_7
    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v5, v7, :cond_9

    :cond_7
    move/from16 p1, p2

    .line 462
    .end local p2           #awsIdx:I
    .local p1, awsIdx:I
    :goto_8
    move-object v0, v6

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #awsIdx:I
    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/mear/Mear;->searchLibFileDirToPlay(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_1

    .line 449
    .local v5, mdh:Lnet/yostore/aws/handler/MearDataHandler;
    .local p1, a:I
    :cond_8
    sget-object p2, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual/range {p2 .. p2}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object p2

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 457
    .local v5, i:I
    .local p1, awsCnt:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p2       #awsIdx:I
    :cond_9
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_a

    .line 458
    move/from16 p1, v5

    .line 459
    .end local p2           #awsIdx:I
    .local p1, awsIdx:I
    goto :goto_8

    .line 456
    .local p1, awsCnt:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p2       #awsIdx:I
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 436
    .end local p1           #awsCnt:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2           #awsIdx:I
    .local v5, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .local v6, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :catch_3
    move-exception p0

    move-object/from16 p1, v6

    .end local v6           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .local p1, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    goto/16 :goto_5

    .end local v5           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local p0           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    .local v6, fileItems:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .restart local v7       #i:I
    .restart local v9       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .restart local v10       #s:I
    .local p1, currentPlayIdx:I
    :cond_b
    move/from16 p0, p1

    .end local p1           #currentPlayIdx:I
    .local p0, currentPlayIdx:I
    goto/16 :goto_3

    .end local p0           #currentPlayIdx:I
    .local v5, fi:Lnet/yostore/aws/api/entity/FileInfo;
    .restart local p1       #currentPlayIdx:I
    :cond_c
    move/from16 p0, p1

    .end local p1           #currentPlayIdx:I
    .restart local p0       #currentPlayIdx:I
    move/from16 p1, v7

    .end local v7           #i:I
    .local p1, i:I
    goto/16 :goto_4

    .restart local v7       #i:I
    .restart local v8       #mp3Inf:Lnet/yostore/aws/handler/entity/Mp3Info;
    .local p0, dsp:Ljava/lang/String;
    .local p1, currentPlayIdx:I
    :cond_d
    move-object/from16 p2, p0

    .end local p0           #dsp:Ljava/lang/String;
    .local p2, dsp:Ljava/lang/String;
    goto/16 :goto_2
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 134
    invoke-virtual {p0}, Lcom/ecareme/mear/Mear;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ecareme/mear/Mear;->applicationContext:Landroid/content/Context;

    .line 135
    sget-object v0, Lcom/ecareme/mear/Mear;->applicationContext:Landroid/content/Context;

    const-string v1, "MearPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/ecareme/mear/Mear;->mPrefs:Landroid/content/SharedPreferences;

    .line 136
    return-void
.end method
