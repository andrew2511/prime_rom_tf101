.class public Lnet/yostore/aws/preferences/Ap;
.super Ljava/lang/Object;
.source "Ap.java"


# static fields
.field public static final AWS:Ljava/lang/String; = "AWSPrefs"

.field public static final M:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "apicfg"
    .parameter "mPrefs"

    .prologue
    .line 38
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "MySyncFolderId"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    const-string v1, "PackageDisplay"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    const-string v1, "ServiceGateway"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    const-string v1, "Userid"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    const-string v1, "Password"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    const-string v1, "Token"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string v1, "Inforelay"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    const-string v1, "Mediarelay"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    const-string v1, "Searchserver"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    const-string v1, "Webrelay"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    const-string v1, "cpacity"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    const-string v1, "expireDate"

    iget-object v2, p0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v1, :cond_0

    .line 57
    :try_start_0
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/AWSServiceInterface;->updateApiConfig()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static clearApiCfg(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "mPrefs"

    .prologue
    .line 14
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 15
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 17
    return-void
.end method

.method public static pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;
    .locals 3
    .parameter "mPrefs"

    .prologue
    .line 20
    new-instance v0, Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0}, Lnet/yostore/aws/api/ApiConfig;-><init>()V

    .line 21
    .local v0, rtn:Lnet/yostore/aws/api/ApiConfig;
    const-string v1, "MySyncFolderId"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 22
    const-string v1, "PackageDisplay"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    .line 23
    const-string v1, "ServiceGateway"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 24
    const-string v1, "Userid"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 25
    const-string v1, "Token"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 26
    const-string v1, "Password"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 28
    const-string v1, "Inforelay"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    .line 29
    const-string v1, "Mediarelay"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    .line 30
    const-string v1, "Searchserver"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    .line 31
    const-string v1, "Webrelay"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    .line 32
    const-string v1, "cpacity"

    const-string v2, "0"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    .line 33
    const-string v1, "expireDate"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    .line 34
    return-object v0
.end method
