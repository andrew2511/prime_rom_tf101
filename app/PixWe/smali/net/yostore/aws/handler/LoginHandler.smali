.class public Lnet/yostore/aws/handler/LoginHandler;
.super Ljava/lang/Object;
.source "LoginHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I = null

.field private static final TAG:Ljava/lang/String; = "LoginHelper"


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->values()[Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lnet/yostore/aws/handler/LoginHandler;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearDbAndMem(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 335
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 336
    return-void
.end method

.method public static doBackgroundLogin(Landroid/content/Context;Landroid/content/SharedPreferences;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 11
    .parameter "ctx"
    .parameter "mPrefs"

    .prologue
    const/4 v10, 0x1

    .line 72
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 74
    .local v5, rtn:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    invoke-static {p1}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    .line 75
    .local v3, apicfg:Lnet/yostore/aws/api/ApiConfig;
    if-eqz v3, :cond_5

    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_5

    .line 76
    sget-boolean v6, Lcom/ecareme/pixwe/PixWe;->isValidateToken:Z

    if-nez v6, :cond_4

    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->haveInternet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 77
    invoke-static {v3}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 78
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v6, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v6, :cond_0

    sget-object v6, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v6, :cond_2

    .line 79
    :cond_0
    new-instance v1, Lnet/yostore/aws/sqlite/entity/AccInfo;

    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v7, v3, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v8, v3, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v1, v6, v7, v8, v9}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v1, accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setCapacity(Ljava/lang/String;)V

    .line 81
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setExpireDate(Ljava/lang/String;)V

    .line 82
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setUsedquota(Ljava/lang/String;)V

    .line 83
    invoke-static {p0, v1}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateCapacity(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 84
    invoke-static {v3, p1}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 85
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 86
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    sput-object v6, Lcom/ecareme/pixwe/PixWe;->userId:Ljava/lang/String;

    .line 87
    sput-boolean v10, Lcom/ecareme/pixwe/PixWe;->isValidateToken:Z

    .line 89
    invoke-static {p0, v3}, Lnet/yostore/aws/handler/LoginHandler;->pixweInitData(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 142
    .end local v0           #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .end local v1           #accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    :goto_0
    sget-object v6, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v5, v6, :cond_1

    .line 145
    invoke-static {v3}, Lcom/ecareme/pixwe/PixWe;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 148
    :try_start_0
    sget-object v6, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    if-eqz v6, :cond_1

    .line 149
    sget-object v6, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    invoke-interface {v6}, Lcom/ecareme/pixwe/service/UploadServiceInterface;->showUploadStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_1
    :goto_1
    return-object v5

    .line 91
    .restart local v0       #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_2
    sget-object v6, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v6, :cond_3

    .line 92
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 94
    :cond_3
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 97
    .end local v0           #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_4
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 101
    :cond_5
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v2

    .line 102
    .local v2, ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 103
    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    iput-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 104
    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 105
    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    iput-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 109
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 110
    invoke-static {v3}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 111
    .restart local v0       #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v6, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v6, :cond_6

    sget-object v6, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v6, :cond_7

    .line 112
    :cond_6
    new-instance v1, Lnet/yostore/aws/sqlite/entity/AccInfo;

    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v7, v3, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v8, v3, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v1, v6, v7, v8, v9}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .restart local v1       #accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setCapacity(Ljava/lang/String;)V

    .line 114
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setExpireDate(Ljava/lang/String;)V

    .line 115
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setUsedquota(Ljava/lang/String;)V

    .line 116
    invoke-static {p0, v1}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateCapacity(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 119
    invoke-static {v3, p1}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 120
    new-instance v4, Lnet/yostore/aws/handler/PixWeDataHandler;

    invoke-direct {v4, p0, v3}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 121
    .local v4, pd:Lnet/yostore/aws/handler/PixWeDataHandler;
    invoke-virtual {v4}, Lnet/yostore/aws/handler/PixWeDataHandler;->createPixWeToPropFind()J

    .line 122
    invoke-virtual {v4}, Lnet/yostore/aws/handler/PixWeDataHandler;->createAlbumsMetaToPropFind()J

    .line 126
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 127
    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    sput-object v6, Lcom/ecareme/pixwe/PixWe;->userId:Ljava/lang/String;

    .line 128
    sput-boolean v10, Lcom/ecareme/pixwe/PixWe;->isValidateToken:Z

    .line 130
    invoke-static {p0, v3}, Lnet/yostore/aws/handler/LoginHandler;->pixweInitData(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    goto/16 :goto_0

    .line 134
    .end local v1           #accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    .end local v4           #pd:Lnet/yostore/aws/handler/PixWeDataHandler;
    :cond_7
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto/16 :goto_0

    .line 139
    .end local v0           #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_8
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto/16 :goto_0

    .line 151
    .end local v2           #ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method

.method public static doLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 8
    .parameter "ctx"
    .parameter "uid"
    .parameter "pwd"
    .parameter "savetodb"
    .parameter "apicfg"

    .prologue
    .line 190
    sget-object v3, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 191
    .local v3, rtn:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 192
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 193
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 197
    iput-object p1, p4, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 198
    iput-object p2, p4, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 200
    invoke-static {p4}, Lnet/yostore/aws/handler/LoginHandler;->requestServiceGateway(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v3

    .line 201
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v3, v4, :cond_4

    .line 202
    invoke-static {p4}, Lnet/yostore/aws/handler/LoginHandler;->requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v3

    .line 203
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v3, v4, :cond_4

    .line 204
    if-eqz p3, :cond_2

    invoke-static {p0, p4}, Lnet/yostore/aws/handler/LoginHandler;->saveToDB(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v3

    .line 205
    :cond_2
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v3, v4, :cond_4

    .line 206
    invoke-static {p4}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 207
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v4, :cond_3

    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v4, :cond_6

    .line 208
    :cond_3
    new-instance v1, Lnet/yostore/aws/sqlite/entity/AccInfo;

    iget-object v4, p4, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v5, p4, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v6, p4, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    const-string v7, ""

    invoke-direct {v1, v4, v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .local v1, accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v4, p4, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setCapacity(Ljava/lang/String;)V

    .line 210
    iget-object v4, p4, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setExpireDate(Ljava/lang/String;)V

    .line 211
    iget-object v4, p4, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setUsedquota(Ljava/lang/String;)V

    .line 212
    invoke-static {p0, v1}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateCapacity(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 213
    new-instance v2, Lnet/yostore/aws/handler/PixWeDataHandler;

    invoke-direct {v2, p0, p4}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 214
    .local v2, pd:Lnet/yostore/aws/handler/PixWeDataHandler;
    invoke-virtual {v2}, Lnet/yostore/aws/handler/PixWeDataHandler;->createPixWeToPropFind()J

    .line 215
    invoke-virtual {v2}, Lnet/yostore/aws/handler/PixWeDataHandler;->createAlbumsMetaToPropFind()J

    .line 219
    sget-object v3, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 220
    const/4 v4, 0x1

    sput-boolean v4, Lcom/ecareme/pixwe/PixWe;->isValidateToken:Z

    .line 221
    sput-object p1, Lcom/ecareme/pixwe/PixWe;->userId:Ljava/lang/String;

    .line 224
    invoke-static {p0, p4}, Lnet/yostore/aws/handler/LoginHandler;->pixweInitData(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 235
    .end local v0           #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .end local v1           #accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    .end local v2           #pd:Lnet/yostore/aws/handler/PixWeDataHandler;
    :cond_4
    :goto_0
    invoke-static {}, Lnet/yostore/aws/handler/LoginHandler;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I

    move-result-object v4

    invoke-virtual {v3}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 260
    :cond_5
    :goto_1
    :pswitch_0
    return-object v3

    .line 229
    .restart local v0       #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_6
    sget-object v3, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 237
    .end local v0           #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :pswitch_1
    const-string v4, "LoginHelper"

    const-string v5, "Login OK!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :try_start_0
    sget-object v4, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    if-eqz v4, :cond_5

    .line 241
    sget-object v4, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    invoke-interface {v4}, Lcom/ecareme/pixwe/service/UploadServiceInterface;->showUploadStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 243
    :catch_0
    move-exception v4

    goto :goto_1

    .line 250
    :pswitch_2
    const-string v4, "LoginHelper"

    const-string v5, "Login NG!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->clearDbAndMem(Landroid/content/Context;)V

    goto :goto_1

    .line 255
    :pswitch_3
    const-string v4, "LoginHelper"

    const-string v5, "Login ERR!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static doLogout(Landroid/content/Context;)Z
    .locals 1
    .parameter "ctx"

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, rtn:Z
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 490
    return v0
.end method

.method public static getAccountInfo(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 6
    .parameter "apicfg"

    .prologue
    .line 402
    new-instance v1, Lnet/yostore/aws/api/helper/GetAccountInfoHelper;

    invoke-direct {v1}, Lnet/yostore/aws/api/helper/GetAccountInfoHelper;-><init>()V

    .line 403
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v3, 0x0

    .line 405
    .local v3, response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    move-object v3, v0

    .line 407
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getUsedcapacity()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    .line 413
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getDisplay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    .line 415
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getCapacity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    .line 417
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getExpire()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    .line 418
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getUsedcapacity()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    .line 423
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/SaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/yostore/aws/api/exception/UrlException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_4

    .line 446
    :goto_0
    return-object v4

    .line 425
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 426
    .local v2, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 428
    .end local v2           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 429
    .local v2, e:Lnet/yostore/aws/api/exception/SaxException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 431
    .end local v2           #e:Lnet/yostore/aws/api/exception/SaxException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 432
    .local v2, e:Lnet/yostore/aws/api/exception/AAAException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 434
    .end local v2           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 435
    .local v2, e:Lnet/yostore/aws/api/exception/UrlException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 445
    .end local v2           #e:Lnet/yostore/aws/api/exception/UrlException;
    :catch_4
    move-exception v4

    move-object v2, v4

    .line 446
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method

.method private static haveInternet(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, result:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 168
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 169
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    :cond_0
    const/4 v2, 0x0

    .line 185
    :goto_0
    return v2

    .line 175
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 177
    const/4 v2, 0x0

    goto :goto_0

    .line 181
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static pixweInitData(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 10
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    .line 264
    iget-object v0, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {p0, v0}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->getAlbumList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 266
    .local v0, aibList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    new-instance v7, Lnet/yostore/aws/handler/PixWeDataHandler;

    invoke-direct {v7, p0, p1}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 270
    .local v7, pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;
    invoke-virtual {v7}, Lnet/yostore/aws/handler/PixWeDataHandler;->createTop50Album()V

    .line 271
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .end local v0           #aibList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    if-nez v0, :cond_2

    .line 272
    :cond_0
    iget-object v0, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {p0, v0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->getAllFolderChgSeq(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 274
    .local v0, fcsList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;>;"
    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {v7}, Lnet/yostore/aws/handler/PixWeDataHandler;->getCloudAlbums()Ljava/util/List;

    move-result-object v0

    .line 276
    .local v0, fiList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    if-eqz v0, :cond_2

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 278
    .local v2, aitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    sget-object v0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->formatter:Ljava/text/Format;

    .end local v0           #fiList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 280
    .local v5, now:J
    sget-wide v0, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p1, v0}, Lnet/yostore/aws/handler/PixWeDataHandler;->doGetChangeSeq(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)J

    move-result-wide v0

    .line 281
    .local v0, metaChgSeq:J
    new-instance v3, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    invoke-direct {v3}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;-><init>()V

    .line 282
    .local v3, metaFolderChgSeq:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    invoke-virtual {v3, v0, v1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeq(J)V

    .line 283
    iget-object v0, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .end local v0           #metaChgSeq:J
    invoke-virtual {v3, v0}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setUserName(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeqTime(J)V

    .line 285
    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setLocalUpdateTime(J)V

    .line 286
    sget-wide v0, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    invoke-virtual {v3, v0, v1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setFolderId(J)V

    .line 287
    invoke-static {p0, v3}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->insertFolderChgSeq(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;)V

    .line 289
    .end local v3           #metaFolderChgSeq:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 332
    .end local v2           #aitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .end local v5           #now:J
    :cond_2
    return-void

    .line 291
    .restart local v2       #aitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .restart local v5       #now:J
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/api/entity/FolderInfo;

    .line 293
    .local v1, _fo:Lnet/yostore/aws/api/entity/FolderInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderInfo;->getAlbumInfo()Lnet/yostore/aws/api/entity/AlbumInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p1, v0}, Lnet/yostore/aws/handler/PixWeDataHandler;->doGetChangeSeq(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)J

    move-result-wide v3

    .line 296
    .local v3, chgSeq:J
    new-instance v0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    invoke-direct {v0}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;-><init>()V

    .line 297
    .local v0, folderChgSeq:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    invoke-virtual {v0, v3, v4}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeq(J)V

    .line 298
    iget-object v8, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setUserName(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeqTime(J)V

    .line 300
    invoke-virtual {v0, v5, v6}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setLocalUpdateTime(J)V

    .line 301
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setFolderId(J)V

    .line 302
    invoke-static {p0, v0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->insertFolderChgSeq(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;)V

    .line 306
    new-instance v0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    .end local v0           #folderChgSeq:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;-><init>()V

    .line 307
    .local v0, _alib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    iget-object v8, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setUserName(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, v1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setFolderInfo(Lnet/yostore/aws/api/entity/FolderInfo;)V

    .line 309
    invoke-static {p0, v0}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->insertAlbum(Landroid/content/Context;Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    .line 311
    new-instance v0, Lnet/yostore/aws/sqlite/entity/AlbumFile;

    .end local v0           #_alib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    invoke-direct {v0}, Lnet/yostore/aws/sqlite/entity/AlbumFile;-><init>()V

    .line 312
    .local v0, af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setAlbumFolder(J)V

    .line 313
    invoke-virtual {v0, v3, v4}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setChangeSeq(J)V

    .line 314
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderInfo;->getAlbumInfo()Lnet/yostore/aws/api/entity/AlbumInfo;

    move-result-object v3

    .end local v3           #chgSeq:J
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/AlbumInfo;->getMfi()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setMediaInfoId(J)V

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setUpdateTime(J)V

    .line 316
    iget-object v3, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setUserName(Ljava/lang/String;)V

    .line 317
    invoke-static {p0, v0}, Lnet/yostore/aws/sqlite/helper/AlbumFileHelper;->updateAlbumToSave(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AlbumFile;)V

    .line 319
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .end local v0           #af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Lnet/yostore/aws/handler/PixWeDataHandler;->getMediasInfoBeanList(J)Ljava/util/List;

    move-result-object v0

    .line 321
    .local v0, mibList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    if-eqz v0, :cond_4

    .line 322
    invoke-static {p0, v0}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->insertMediaLists(Landroid/content/Context;Ljava/util/List;)V

    .line 323
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .end local v0           #mibList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V

    .line 325
    :cond_4
    invoke-static {p1}, Lcom/ecareme/pixwe/PixWe;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    goto/16 :goto_0
.end method

.method private static requestServiceGateway(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 5
    .parameter "apicfg"

    .prologue
    .line 452
    new-instance v1, Lnet/yostore/aws/api/helper/RequestServiceGatewayHelper;

    invoke-direct {v1}, Lnet/yostore/aws/api/helper/RequestServiceGatewayHelper;-><init>()V

    .line 453
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v3, 0x0

    .line 455
    .local v3, response:Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;

    move-object v3, v0

    .line 456
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;->getServicegateway()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 457
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/SaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/yostore/aws/api/exception/UrlException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_4

    .line 480
    :goto_0
    return-object v4

    .line 459
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 460
    .local v2, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 462
    .end local v2           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 463
    .local v2, e:Lnet/yostore/aws/api/exception/SaxException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 465
    .end local v2           #e:Lnet/yostore/aws/api/exception/SaxException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 466
    .local v2, e:Lnet/yostore/aws/api/exception/AAAException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 468
    .end local v2           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 469
    .local v2, e:Lnet/yostore/aws/api/exception/UrlException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 479
    .end local v2           #e:Lnet/yostore/aws/api/exception/UrlException;
    :catch_4
    move-exception v4

    move-object v2, v4

    .line 480
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method

.method public static requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 1
    .parameter "apicfg"

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/yostore/aws/handler/LoginHandler;->requestToken(Lnet/yostore/aws/api/ApiConfig;I)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    return-object v0
.end method

.method public static requestToken(Lnet/yostore/aws/api/ApiConfig;I)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 5
    .parameter "apicfg"
    .parameter "cnt"

    .prologue
    .line 349
    add-int/lit8 p1, p1, 0x1

    .line 350
    new-instance v1, Lnet/yostore/aws/api/helper/RequestTokenHelper;

    invoke-direct {v1}, Lnet/yostore/aws/api/helper/RequestTokenHelper;-><init>()V

    .line 351
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v3, 0x0

    .line 353
    .local v3, response:Lnet/yostore/aws/api/entity/RequestTokenResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/RequestTokenResponse;

    move-object v3, v0

    .line 354
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 355
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getInforelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    .line 356
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getWebrelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    .line 357
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getSearchserver()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    .line 358
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getMediarelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    .line 359
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getJobRelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->jobRelay:Ljava/lang/String;

    .line 361
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getDisplay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    .line 363
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getCapacity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    .line 365
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getExpire()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    .line 373
    invoke-static {p0}, Lcom/ecareme/pixwe/PixWe;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 374
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->getAccountInfo(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/SaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/yostore/aws/api/exception/UrlException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    .line 397
    :goto_0
    return-object v4

    .line 376
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 377
    .local v2, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 379
    .end local v2           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 380
    .local v2, e:Lnet/yostore/aws/api/exception/SaxException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 382
    .end local v2           #e:Lnet/yostore/aws/api/exception/SaxException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 384
    .local v2, e:Lnet/yostore/aws/api/exception/AAAException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 389
    .end local v2           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 391
    .local v2, e:Lnet/yostore/aws/api/exception/UrlException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 396
    .end local v2           #e:Lnet/yostore/aws/api/exception/UrlException;
    :catch_4
    move-exception v4

    move-object v2, v4

    .line 397
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method

.method private static saveToDB(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 5
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    .line 339
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 340
    new-instance v0, Lnet/yostore/aws/sqlite/entity/AccInfo;

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v3, p1, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->insertAccInfo(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 341
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    return-object v0
.end method

.method public static validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 1
    .parameter "apicfg"

    .prologue
    .line 495
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 501
    :goto_0
    return-object v0

    .line 497
    :cond_0
    sget-boolean v0, Lcom/ecareme/pixwe/PixWe;->isValidateToken:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 498
    :cond_1
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    goto :goto_0

    .line 501
    :cond_2
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method
