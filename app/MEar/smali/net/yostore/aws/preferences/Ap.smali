.class public Lnet/yostore/aws/preferences/Ap;
.super Ljava/lang/Object;
.source "Ap.java"


# static fields
.field public static final AWS:Ljava/lang/String; = "MearPrefs"

.field public static final M:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "apicfg"
    .parameter "mPrefs"

    .prologue
    .line 42
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "MySyncFolderId"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    const-string v1, "PackageDisplay"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    const-string v1, "ServiceGateway"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string v1, "Userid"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    const-string v1, "Password"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    const-string v1, "Token"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    const-string v1, "Inforelay"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    const-string v1, "Mediarelay"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string v1, "Searchserver"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    const-string v1, "Webrelay"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    const-string v1, "cpacity"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    const-string v1, "expireDate"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    const-string v1, "mear_folder_id"

    iget-wide v2, p0, Lnet/yostore/aws/api/ApiConfig;->mear_folder_id:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 58
    const-string v1, "meta_folder_id"

    iget-wide v2, p0, Lnet/yostore/aws/api/ApiConfig;->meta_folder_id:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 59
    const-string v1, "lib_folder_id"

    iget-wide v2, p0, Lnet/yostore/aws/api/ApiConfig;->lib_folder_id:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 60
    const-string v1, "mearBlockFreeAccAfterFGate"

    iget v2, p0, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccAfterFGate:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string v1, "mearBlockFreeAccFirstGate"

    iget v2, p0, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccFirstGate:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void
.end method

.method public static clearApiCfg(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "mPrefs"

    .prologue
    .line 13
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 14
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 16
    return-void
.end method

.method public static pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;
    .locals 7
    .parameter "mPrefs"

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, -0x3e7

    .line 19
    new-instance v0, Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0}, Lnet/yostore/aws/api/ApiConfig;-><init>()V

    .line 20
    .local v0, rtn:Lnet/yostore/aws/api/ApiConfig;
    const-string v1, "MySyncFolderId"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PackageDisplay"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    .line 22
    const-string v1, "ServiceGateway"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 23
    const-string v1, "Userid"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 24
    const-string v1, "Token"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 25
    const-string v1, "Password"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 27
    const-string v1, "Inforelay"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    .line 28
    const-string v1, "Mediarelay"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    .line 29
    const-string v1, "Searchserver"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    .line 30
    const-string v1, "Webrelay"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    .line 31
    const-string v1, "cpacity"

    const-string v2, "0"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    .line 32
    const-string v1, "expireDate"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    .line 33
    const-string v1, "meta_folder_id"

    invoke-interface {p0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lnet/yostore/aws/api/ApiConfig;->meta_folder_id:J

    .line 34
    const-string v1, "lib_folder_id"

    invoke-interface {p0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lnet/yostore/aws/api/ApiConfig;->lib_folder_id:J

    .line 35
    const-string v1, "mear_folder_id"

    invoke-interface {p0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lnet/yostore/aws/api/ApiConfig;->mear_folder_id:J

    .line 36
    const-string v1, "mearBlockFreeAccAfterFGate"

    invoke-interface {p0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccAfterFGate:I

    .line 37
    const-string v1, "mearBlockFreeAccFirstGate"

    invoke-interface {p0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccFirstGate:I

    .line 38
    return-object v0
.end method
