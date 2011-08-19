.class public Lcom/ecareme/pixwe/PixWe;
.super Landroid/app/Application;
.source "PixWe.java"


# static fields
.field private static final DL:Ljava/lang/String; = "/webrelay/directdownload/"

.field private static final TAG:Ljava/lang/String; = "PixWe"

.field public static albums_meta_folder_id:J

.field public static apicfg:Lnet/yostore/aws/api/ApiConfig;

.field public static applicationContext:Landroid/content/Context;

.field public static isHomeNeedToUpdate:Z

.field public static isLogout:Z

.field public static isValidateToken:Z

.field public static mPrefs:Landroid/content/SharedPreferences;

.field public static myBackupFolderId:J

.field public static myCollectionFolderId:J

.field public static mySyncFolderId:J

.field public static pixweWeb:Ljava/lang/String;

.field public static pixwe_folder_id:J

.field public static uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

.field public static userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x3e7

    const/4 v2, 0x0

    .line 64
    const-string v0, ""

    sput-object v0, Lcom/ecareme/pixwe/PixWe;->userId:Ljava/lang/String;

    .line 66
    sput-boolean v2, Lcom/ecareme/pixwe/PixWe;->isLogout:Z

    .line 67
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ecareme/pixwe/PixWe;->myCollectionFolderId:J

    .line 68
    const-wide/16 v0, -0x3

    sput-wide v0, Lcom/ecareme/pixwe/PixWe;->myBackupFolderId:J

    .line 69
    const-wide/16 v0, -0x5

    sput-wide v0, Lcom/ecareme/pixwe/PixWe;->mySyncFolderId:J

    .line 70
    sput-wide v3, Lcom/ecareme/pixwe/PixWe;->pixwe_folder_id:J

    .line 72
    sput-wide v3, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    .line 75
    sput-boolean v2, Lcom/ecareme/pixwe/PixWe;->isValidateToken:Z

    .line 77
    sput-boolean v2, Lcom/ecareme/pixwe/PixWe;->isHomeNeedToUpdate:Z

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 79
    const-string v0, "http://www.asuswebstorage.com/pixwe"

    sput-object v0, Lcom/ecareme/pixwe/PixWe;->pixweWeb:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 88
    return-void
.end method

.method public static clearApiCfgPreferences()V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/ecareme/pixwe/PixWe;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->clearApiCfg(Landroid/content/SharedPreferences;)V

    .line 150
    return-void
.end method

.method public static exitAp(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    .line 168
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ecareme/pixwe/service/UploadService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v3, uploadIntent:Landroid/content/Intent;
    sget-object v4, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    if-eqz v4, :cond_0

    .line 172
    :try_start_0
    sget-object v4, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    invoke-interface {v4}, Lcom/ecareme/pixwe/service/UploadServiceInterface;->resetService()V

    .line 173
    invoke-virtual {p0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 183
    .local v0, am:Landroid/app/ActivityManager;
    const-string v4, "com.ecareme.pixwe"

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 185
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v2, i:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 191
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 192
    return-void

    .line 175
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #i:Landroid/content/Intent;
    .restart local p0
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 178
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "PixWe"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getApiCfg()Lnet/yostore/aws/api/ApiConfig;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 112
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-nez v1, :cond_1

    .line 113
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    sput-object v1, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 114
    sget-wide v1, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    sget-wide v1, Lcom/ecareme/pixwe/PixWe;->pixwe_folder_id:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 116
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v0

    .line 117
    .local v0, _acc:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-wide v1, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->albums_meta_folder_id:J

    sput-wide v1, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    .line 118
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/api/ApiConfig;->albums_meta_folder_id:J

    .line 119
    iget-wide v1, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pixwe_folder_id:J

    sput-wide v1, Lcom/ecareme/pixwe/PixWe;->pixwe_folder_id:J

    .line 120
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->pixwe_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/api/ApiConfig;->pixwe_folder_id:J

    .line 123
    .end local v0           #_acc:Lnet/yostore/aws/sqlite/entity/AccInfo;
    :cond_1
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v1
.end method

.method public static getDirectDownloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fid"

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 397
    const-string v1, "/webrelay/directdownload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    sget-object v1, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 399
    const-string v1, "/?fi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 401
    const-string v1, "&pv=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    return-object v0
.end method

.method public static getFaceBookShareString(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/Long;)Ljava/lang/String;
    .locals 5
    .parameter "apicfg"
    .parameter "albumId"

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, rtn:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 388
    const-string v0, "http://www.youtube.com/watch%3Fv%3DyAZYSVr2Bhc&src=sp"

    .line 390
    :cond_0
    return-object v0
.end method

.method public static getMyHomeUrl(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;
    .locals 4
    .parameter "apicfg"

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, rtn:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ecareme/pixwe/PixWe;->pixweWeb:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/shareRecord/?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v3, p0, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/yostore/utility/Base64Decode;->getVString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    return-object v0
.end method

.method public static getMySyncFolder()J
    .locals 3

    .prologue
    .line 153
    new-instance v0, Lnet/yostore/aws/handler/PixWeDataHandler;

    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 154
    .local v0, pdh:Lnet/yostore/aws/handler/PixWeDataHandler;
    invoke-virtual {v0}, Lnet/yostore/aws/handler/PixWeDataHandler;->createMySyncFolderToPropFind()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getPreferenceApiCfg()Lnet/yostore/aws/api/ApiConfig;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 127
    sget-object v2, Lcom/ecareme/pixwe/PixWe;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    .line 128
    .local v1, _apicfg:Lnet/yostore/aws/api/ApiConfig;
    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->pixwe_folder_id:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 130
    sget-object v2, Lcom/ecareme/pixwe/PixWe;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v0

    .line 131
    .local v0, _acc:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-wide v2, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->albums_meta_folder_id:J

    sput-wide v2, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    .line 132
    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/api/ApiConfig;->albums_meta_folder_id:J

    .line 133
    iget-wide v2, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pixwe_folder_id:J

    sput-wide v2, Lcom/ecareme/pixwe/PixWe;->pixwe_folder_id:J

    .line 134
    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->pixwe_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/api/ApiConfig;->pixwe_folder_id:J

    .line 136
    .end local v0           #_acc:Lnet/yostore/aws/sqlite/entity/AccInfo;
    :cond_1
    sget-object v2, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    sget-object v2, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 137
    sput-object v1, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 139
    :cond_2
    return-object v1
.end method

.method public static getShareUrl(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/Long;)Ljava/lang/String;
    .locals 6
    .parameter "apicfg"
    .parameter "albumId"

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, rtn:Ljava/lang/String;
    if-eqz p0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    .line 329
    sget-object v0, Lcom/ecareme/pixwe/PixWe;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->getAlbum(Landroid/content/Context;J)Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    move-result-object v0

    .line 330
    .local v0, aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSu()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 331
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSu()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 368
    .end local v0           #aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    .end local v1           #rtn:Ljava/lang/String;
    .local p0, rtn:Ljava/lang/String;
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 369
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .end local p0           #rtn:Ljava/lang/String;
    const-string v0, "http://oeo.la/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, shareCode:Ljava/lang/String;
    new-instance p0, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ecareme/pixwe/PixWe;->applicationContext:Landroid/content/Context;

    const v2, 0x7f0600c1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/ecareme/pixwe/PixWe;->pixweWeb:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/s/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, rtn:Ljava/lang/String;
    new-instance p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    invoke-direct {p0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;-><init>()V

    .line 372
    .local p0, aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setAlbumInfoFolder(J)V

    .line 373
    invoke-virtual {p0, v1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setSu(Ljava/lang/String;)V

    .line 374
    sget-object p1, Lcom/ecareme/pixwe/PixWe;->applicationContext:Landroid/content/Context;

    .end local p1
    invoke-static {p1, p0}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->updateShareCode(Landroid/content/Context;Lnet/yostore/aws/handler/entity/AlbumInfoBean;)V

    move-object p0, v0

    .line 379
    .end local v0           #rtn:Ljava/lang/String;
    .end local v1           #shareCode:Ljava/lang/String;
    .local p0, rtn:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 333
    .local v0, aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    .local v1, rtn:Ljava/lang/String;
    .local p0, apicfg:Lnet/yostore/aws/api/ApiConfig;
    .restart local p1
    :cond_1
    new-instance v0, Lnet/yostore/aws/api/helper/GetShareCodeHelper;

    .end local v0           #aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    const-string v2, "0"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lnet/yostore/aws/api/helper/GetShareCodeHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .local v0, helper:Lnet/yostore/aws/api/helper/GetShareCodeHelper;
    :try_start_0
    invoke-virtual {v0, p0}, Lnet/yostore/aws/api/helper/GetShareCodeHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    check-cast p0, Lnet/yostore/aws/api/entity/GetShareCodeResponse;

    .line 337
    .local p0, response:Lnet/yostore/aws/api/entity/GetShareCodeResponse;
    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/GetShareCodeResponse;->getStatus()I

    move-result v0

    .end local v0           #helper:Lnet/yostore/aws/api/helper/GetShareCodeHelper;
    if-nez v0, :cond_5

    .line 338
    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/GetShareCodeResponse;->getUri()Ljava/lang/String;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 339
    .end local v1           #rtn:Ljava/lang/String;
    .local v2, rtn:Ljava/lang/String;
    :try_start_1
    sget-object p0, Lcom/ecareme/pixwe/PixWe;->applicationContext:Landroid/content/Context;

    .end local p0           #response:Lnet/yostore/aws/api/entity/GetShareCodeResponse;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->getUploadedMediasByAlbum(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v1

    .line 340
    .local v1, mibl:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    const-string p0, ""

    .line 341
    .local p0, f:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 344
    const-string v0, ","

    .end local v0           #i:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1           #mibl:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 347
    :cond_2
    new-instance v0, Lnet/yostore/aws/api/helper/SetShareHelper;

    const/4 v1, 0x1

    const-string v3, ""

    invoke-direct {v0, p0, v1, v3}, Lnet/yostore/aws/api/helper/SetShareHelper;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_1 .. :try_end_1} :catch_2

    .line 352
    .local v0, shelper:Lnet/yostore/aws/api/helper/SetShareHelper;
    :try_start_2
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object p0

    .end local p0           #f:Ljava/lang/String;
    invoke-virtual {v0, p0}, Lnet/yostore/aws/api/helper/SetShareHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/api/entity/SetShareResponse;

    .line 353
    .local p0, sresponse:Lnet/yostore/aws/api/entity/SetShareResponse;
    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/SetShareResponse;->getStatus()I

    move-result v0

    .end local v0           #shelper:Lnet/yostore/aws/api/helper/SetShareHelper;
    if-nez v0, :cond_4

    .line 354
    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/SetShareResponse;->getEr()Ljava/lang/String;
    :try_end_2
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_2 .. :try_end_2} :catch_0

    move-object p0, v2

    .end local v2           #rtn:Ljava/lang/String;
    .local p0, rtn:Ljava/lang/String;
    goto/16 :goto_0

    .line 342
    .local v0, i:I
    .restart local v1       #mibl:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .restart local v2       #rtn:Ljava/lang/String;
    .local p0, f:Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #f:Ljava/lang/String;
    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 341
    .restart local p0       #f:Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 356
    .end local v0           #i:I
    .end local v1           #mibl:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .end local p0           #f:Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 357
    .local p0, e:Lnet/yostore/aws/api/exception/APIException;
    const-string v0, "PixWe"

    invoke-virtual {p0}, Lnet/yostore/aws/api/exception/APIException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Lnet/yostore/aws/api/exception/APIException;
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_3 .. :try_end_3} :catch_2

    move-object p0, v2

    .end local v2           #rtn:Ljava/lang/String;
    .local p0, rtn:Ljava/lang/String;
    goto/16 :goto_0

    .line 364
    .end local p0           #rtn:Ljava/lang/String;
    .local v1, rtn:Ljava/lang/String;
    :catch_1
    move-exception p0

    move-object v0, v1

    .line 365
    .end local v1           #rtn:Ljava/lang/String;
    .local v0, rtn:Ljava/lang/String;
    .local p0, e:Lnet/yostore/aws/api/exception/APIException;
    :goto_3
    const-string v1, "PixWe"

    invoke-virtual {p0}, Lnet/yostore/aws/api/exception/APIException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Lnet/yostore/aws/api/exception/APIException;
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    .end local v0           #rtn:Ljava/lang/String;
    .local p0, rtn:Ljava/lang/String;
    goto/16 :goto_0

    .line 364
    .end local p0           #rtn:Ljava/lang/String;
    .restart local v2       #rtn:Ljava/lang/String;
    :catch_2
    move-exception p0

    move-object v0, v2

    .end local v2           #rtn:Ljava/lang/String;
    .restart local v0       #rtn:Ljava/lang/String;
    goto :goto_3

    .end local v0           #rtn:Ljava/lang/String;
    .restart local v2       #rtn:Ljava/lang/String;
    .local p0, sresponse:Lnet/yostore/aws/api/entity/SetShareResponse;
    :cond_4
    move-object p0, v2

    .end local v2           #rtn:Ljava/lang/String;
    .local p0, rtn:Ljava/lang/String;
    goto/16 :goto_0

    .restart local v1       #rtn:Ljava/lang/String;
    .local p0, response:Lnet/yostore/aws/api/entity/GetShareCodeResponse;
    :cond_5
    move-object p0, v1

    .end local v1           #rtn:Ljava/lang/String;
    .local p0, rtn:Ljava/lang/String;
    goto/16 :goto_0

    .restart local v1       #rtn:Ljava/lang/String;
    .local p0, apicfg:Lnet/yostore/aws/api/ApiConfig;
    :cond_6
    move-object p0, v1

    .end local v1           #rtn:Ljava/lang/String;
    .local p0, rtn:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public static getUuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, uuid:Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 161
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/yostore/aws/api/entity/ApiCookies;->macaddr:Ljava/lang/String;

    .line 163
    sget-object v2, Lnet/yostore/aws/api/entity/ApiCookies;->macaddr:Ljava/lang/String;

    return-object v2
.end method

.method public static goHome(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 222
    const-class v0, Lcom/ecareme/pixwe/view/common/HomeActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ecareme/pixwe/PixWe;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 226
    return-void
.end method

.method public static goLogin(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 211
    const-class v0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ecareme/pixwe/PixWe;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 212
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
    .line 196
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 198
    if-eqz p2, :cond_0

    .line 200
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 203
    if-eqz p2, :cond_1

    .line 205
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 207
    :cond_1
    return-void
.end method

.method public static goRegister(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 230
    const-class v0, Lcom/ecareme/pixwe/view/common/RegisterActivity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ecareme/pixwe/PixWe;->goPage(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 231
    return-void
.end method

.method public static haveInternet()Z
    .locals 5

    .prologue
    .line 412
    const/4 v2, 0x0

    .line 413
    .local v2, result:Z
    sget-object v3, Lcom/ecareme/pixwe/PixWe;->applicationContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 414
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 415
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 417
    :cond_0
    const/4 v2, 0x0

    .line 431
    :goto_0
    return v2

    .line 421
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 423
    const/4 v2, 0x0

    goto :goto_0

    .line 427
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static logout(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 216
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 217
    invoke-static {p0}, Lcom/ecareme/pixwe/PixWe;->exitAp(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method private static parseMediasToXML(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, mediaList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><mi>"

    .line 286
    .local v1, rtn:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    .end local p0
    .local v0, mibs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "</mi>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    return-object v1

    .line 288
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getXml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parserApiConfig(Ljava/lang/String;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter "apicfgStr"

    .prologue
    .line 438
    invoke-static {p0}, Lnet/yostore/aws/api/ApiConfig;->getFromString(Ljava/lang/String;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 439
    sget-object v0, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    sput-object v0, Lcom/ecareme/pixwe/PixWe;->userId:Ljava/lang/String;

    .line 440
    sget-object v0, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method public static rotate(Landroid/content/Context;Ljava/util/List;I)V
    .locals 8
    .parameter "ctx"
    .parameter
    .parameter "degreeLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, mediaList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    const/4 v7, 0x0

    .line 299
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 300
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 313
    .end local v0           #i:I
    :cond_0
    return-void

    .line 301
    .restart local v0       #i:I
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    .line 302
    .local v1, mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getR()I

    move-result v4

    mul-int/lit8 v5, p2, 0x5a

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 303
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 304
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "rotate"

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    sget-object v4, Lcom/ecareme/pixwe/aws/PixWeContentProvider;->MEDIA_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getMediaInfoFolder()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 306
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getMediaInfoFolder()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V
    .locals 1
    .parameter "apicfg"

    .prologue
    .line 144
    sget-object v0, Lcom/ecareme/pixwe/PixWe;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v0}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 145
    sput-object p0, Lcom/ecareme/pixwe/PixWe;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 146
    return-void
.end method

.method public static updateDBFlg(Landroid/content/Context;J)V
    .locals 4
    .parameter "ctx"
    .parameter "albumId"

    .prologue
    .line 247
    sget-object v2, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->formatter:Ljava/text/Format;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 248
    .local v0, now:J
    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    invoke-static {p0, v2, v3, v0, v1}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->updateLocalUpdateTime(Landroid/content/Context;JJ)V

    .line 249
    invoke-static {p0, p1, p2, v0, v1}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->updateLocalUpdateTime(Landroid/content/Context;JJ)V

    .line 250
    return-void
.end method

.method public static uploadAlbumToXML(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;J)Z
    .locals 8
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "albumId"

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, rtn:Z
    invoke-static {p0, p2, p3}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->getUploadedMediasByAlbum(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v1

    .line 270
    .local v1, mediaList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    new-instance v0, Lnet/yostore/aws/handler/PixWeDataHandler;

    .end local v0           #rtn:Z
    invoke-direct {v0, p1}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 271
    .local v0, pdh:Lnet/yostore/aws/handler/PixWeDataHandler;
    invoke-static {p0, p2, p3}, Lnet/yostore/aws/sqlite/helper/AlbumFileHelper;->getAlbumFile(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/AlbumFile;

    move-result-object p1

    .line 273
    .local p1, af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    invoke-static {p0, p2, p3}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->getAlbum(Landroid/content/Context;J)Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    move-result-object p1

    .line 276
    .local p1, aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    invoke-static {p0, v1}, Lcom/ecareme/pixwe/PixWe;->parseMediasToXML(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "medias.pixweinfo"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getMfi()J

    move-result-wide p2

    .end local p2
    const-wide/16 v5, 0x0

    cmp-long p2, p2, v5

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getMfi()J

    move-result-wide p1

    .end local p1           #aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    move-wide v5, p1

    :goto_0
    const-string v7, ""

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lnet/yostore/aws/handler/PixWeDataHandler;->updateXmlToFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    .end local v1           #mediaList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    move-result p0

    .line 277
    .local p0, rtn:Z
    return p0

    .line 276
    .restart local v1       #mediaList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .local p0, ctx:Landroid/content/Context;
    .restart local p1       #aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    :cond_0
    const-wide/16 p1, -0x3e7

    move-wide v5, p1

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 93
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/PixWe;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 97
    .local v0, api:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/ecareme/pixwe/PixWe;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 98
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lnet/yostore/aws/api/BaseApi;->clientversion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0           #api:Landroid/content/pm/ApplicationInfo;
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/PixWe;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/ecareme/pixwe/PixWe;->applicationContext:Landroid/content/Context;

    .line 106
    sget-object v2, Lcom/ecareme/pixwe/PixWe;->applicationContext:Landroid/content/Context;

    const-string v3, "PixWePrefs"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/ecareme/pixwe/PixWe;->mPrefs:Landroid/content/SharedPreferences;

    .line 107
    invoke-virtual {p0}, Lcom/ecareme/pixwe/PixWe;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/PixWe;->getUuid(Landroid/content/Context;)Ljava/lang/String;

    .line 108
    return-void

    .line 100
    :catch_0
    move-exception v2

    goto :goto_0
.end method
