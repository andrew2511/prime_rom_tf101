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
    .line 33
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
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearDbAndMem(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 190
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 191
    return-void
.end method

.method public static doBackgroundLogin(Landroid/content/Context;Landroid/content/SharedPreferences;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 10
    .parameter "ctx"
    .parameter "mPrefs"

    .prologue
    .line 53
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 55
    .local v5, rtn:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    invoke-static {p1}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    .line 56
    .local v3, apicfg:Lnet/yostore/aws/api/ApiConfig;
    if-eqz v3, :cond_4

    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_4

    .line 57
    invoke-static {v3}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 58
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v6, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v6, :cond_0

    sget-object v6, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v6, :cond_2

    .line 59
    :cond_0
    new-instance v1, Lnet/yostore/aws/sqlite/entity/AccInfo;

    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v7, v3, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v8, v3, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v1, v6, v7, v8, v9}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v1, accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setCapacity(Ljava/lang/String;)V

    .line 61
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setExpireDate(Ljava/lang/String;)V

    .line 62
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setUsedquota(Ljava/lang/String;)V

    .line 63
    invoke-static {p0, v1}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateCapacity(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 64
    sget v6, Lcom/ecareme/mear/Mear;->mearBlockFreeAccFirstGate:I

    iput v6, v3, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccFirstGate:I

    .line 65
    sget v6, Lcom/ecareme/mear/Mear;->mearBlockFreeAccAfterFGate:I

    iput v6, v3, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccAfterFGate:I

    .line 66
    invoke-static {v3, p1}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 67
    new-instance v4, Lnet/yostore/aws/handler/MearDataHandler;

    invoke-direct {v4, p0, v3}, Lnet/yostore/aws/handler/MearDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 68
    .local v4, md:Lnet/yostore/aws/handler/MearDataHandler;
    invoke-virtual {v4}, Lnet/yostore/aws/handler/MearDataHandler;->createMetaToPropFind()J

    .line 69
    invoke-virtual {v4}, Lnet/yostore/aws/handler/MearDataHandler;->createLibToPropFind()J

    .line 70
    invoke-virtual {v4}, Lnet/yostore/aws/handler/MearDataHandler;->importInfoPropFind()J

    .line 71
    invoke-virtual {v4}, Lnet/yostore/aws/handler/MearDataHandler;->nowPlayInfoPropFind()J

    .line 72
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 73
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    sput-object v6, Lcom/ecareme/mear/Mear;->userId:Ljava/lang/String;

    .line 122
    .end local v0           #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .end local v1           #accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    .end local v4           #md:Lnet/yostore/aws/handler/MearDataHandler;
    :goto_0
    sget-object v6, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v5, v6, :cond_1

    .line 124
    invoke-static {v3, p1}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 127
    :cond_1
    return-object v5

    .line 74
    .restart local v0       #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_2
    sget-object v6, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v6, :cond_3

    .line 75
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 77
    :cond_3
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 81
    .end local v0           #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_4
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v2

    .line 82
    .local v2, ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 83
    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    iput-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 84
    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 85
    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    iput-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 88
    iget-wide v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->mear_folder_id:J

    iput-wide v6, v3, Lnet/yostore/aws/api/ApiConfig;->mear_folder_id:J

    .line 89
    iget-wide v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->lib_folder_id:J

    iput-wide v6, v3, Lnet/yostore/aws/api/ApiConfig;->lib_folder_id:J

    .line 90
    iget-wide v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->meta_folder_id:J

    iput-wide v6, v3, Lnet/yostore/aws/api/ApiConfig;->meta_folder_id:J

    .line 95
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 96
    invoke-static {v3}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 97
    .restart local v0       #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v6, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v6, :cond_5

    sget-object v6, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v6, :cond_6

    .line 98
    :cond_5
    new-instance v1, Lnet/yostore/aws/sqlite/entity/AccInfo;

    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v7, v3, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v8, v3, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v1, v6, v7, v8, v9}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .restart local v1       #accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setCapacity(Ljava/lang/String;)V

    .line 100
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setExpireDate(Ljava/lang/String;)V

    .line 101
    iget-object v6, v3, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setUsedquota(Ljava/lang/String;)V

    .line 102
    invoke-static {p0, v1}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateCapacity(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 105
    invoke-static {v3, p1}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 106
    new-instance v4, Lnet/yostore/aws/handler/MearDataHandler;

    invoke-direct {v4, p0, v3}, Lnet/yostore/aws/handler/MearDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 107
    .restart local v4       #md:Lnet/yostore/aws/handler/MearDataHandler;
    invoke-virtual {v4}, Lnet/yostore/aws/handler/MearDataHandler;->createMetaToPropFind()J

    .line 108
    invoke-virtual {v4}, Lnet/yostore/aws/handler/MearDataHandler;->createLibToPropFind()J

    .line 109
    invoke-virtual {v4}, Lnet/yostore/aws/handler/MearDataHandler;->importInfoPropFind()J

    .line 110
    invoke-virtual {v4}, Lnet/yostore/aws/handler/MearDataHandler;->nowPlayInfoPropFind()J

    .line 111
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 112
    iget-object v6, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    sput-object v6, Lcom/ecareme/mear/Mear;->userId:Ljava/lang/String;

    goto/16 :goto_0

    .line 114
    .end local v1           #accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    .end local v4           #md:Lnet/yostore/aws/handler/MearDataHandler;
    :cond_6
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto/16 :goto_0

    .line 119
    .end local v0           #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_7
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto/16 :goto_0
.end method

.method public static doLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 8
    .parameter "ctx"
    .parameter "uid"
    .parameter "pwd"
    .parameter "savetodb"
    .parameter "apicfg"

    .prologue
    .line 132
    sget-object v3, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 133
    .local v3, rtn:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 134
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 135
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 139
    iput-object p1, p4, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 140
    iput-object p2, p4, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 142
    invoke-static {p4}, Lnet/yostore/aws/handler/LoginHandler;->requestServiceGateway(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v3

    .line 143
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v3, v4, :cond_4

    .line 144
    invoke-static {p4}, Lnet/yostore/aws/handler/LoginHandler;->requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v3

    .line 145
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v3, v4, :cond_4

    .line 146
    if-eqz p3, :cond_2

    invoke-static {p0, p4}, Lnet/yostore/aws/handler/LoginHandler;->saveToDB(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v3

    .line 147
    :cond_2
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v3, v4, :cond_4

    .line 148
    invoke-static {p4}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 149
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v4, :cond_3

    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v4, :cond_6

    .line 150
    :cond_3
    new-instance v1, Lnet/yostore/aws/sqlite/entity/AccInfo;

    iget-object v4, p4, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v5, p4, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v6, p4, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    const-string v7, ""

    invoke-direct {v1, v4, v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v1, accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v4, p4, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setCapacity(Ljava/lang/String;)V

    .line 152
    iget-object v4, p4, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setExpireDate(Ljava/lang/String;)V

    .line 153
    iget-object v4, p4, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setUsedquota(Ljava/lang/String;)V

    .line 154
    invoke-static {p0, v1}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateCapacity(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 155
    invoke-static {p4}, Lcom/ecareme/mear/Mear;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 156
    new-instance v2, Lnet/yostore/aws/handler/MearDataHandler;

    invoke-direct {v2, p0, p4}, Lnet/yostore/aws/handler/MearDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 157
    .local v2, md:Lnet/yostore/aws/handler/MearDataHandler;
    invoke-virtual {v2}, Lnet/yostore/aws/handler/MearDataHandler;->createMetaToPropFind()J

    .line 158
    invoke-virtual {v2}, Lnet/yostore/aws/handler/MearDataHandler;->createLibToPropFind()J

    .line 159
    invoke-virtual {v2}, Lnet/yostore/aws/handler/MearDataHandler;->importInfoPropFind()J

    .line 160
    invoke-virtual {v2}, Lnet/yostore/aws/handler/MearDataHandler;->nowPlayInfoPropFind()J

    .line 161
    sget-object v3, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 162
    sput-object p1, Lcom/ecareme/mear/Mear;->userId:Ljava/lang/String;

    .line 163
    invoke-static {p4}, Lcom/ecareme/mear/Mear;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 171
    .end local v0           #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .end local v1           #accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    .end local v2           #md:Lnet/yostore/aws/handler/MearDataHandler;
    :cond_4
    :goto_0
    invoke-static {}, Lnet/yostore/aws/handler/LoginHandler;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I

    move-result-object v4

    invoke-virtual {v3}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 186
    :cond_5
    :goto_1
    :pswitch_0
    return-object v3

    .line 165
    .restart local v0       #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_6
    sget-object v3, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 173
    .end local v0           #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :pswitch_1
    const-string v4, "LoginHelper"

    const-string v5, "Login OK!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    :pswitch_2
    const-string v4, "LoginHelper"

    const-string v5, "Login NG!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->clearDbAndMem(Landroid/content/Context;)V

    goto :goto_1

    .line 181
    :pswitch_3
    const-string v4, "LoginHelper"

    const-string v5, "Login ERR!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 171
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
    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, rtn:Z
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 346
    return v0
.end method

.method public static getAccountInfo(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 6
    .parameter "apicfg"

    .prologue
    .line 258
    new-instance v1, Lnet/yostore/aws/api/helper/GetAccountInfoHelper;

    invoke-direct {v1}, Lnet/yostore/aws/api/helper/GetAccountInfoHelper;-><init>()V

    .line 259
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v3, 0x0

    .line 261
    .local v3, response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    move-object v3, v0

    .line 263
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getUsedcapacity()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    .line 269
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getDisplay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    .line 271
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getCapacity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    .line 273
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getExpire()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    .line 274
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getUsedcapacity()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    .line 276
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getMearBlockFreeAccAfterFGate()I

    move-result v4

    iput v4, p0, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccAfterFGate:I

    .line 277
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getMearBlockFreeAccFirstGate()I

    move-result v4

    iput v4, p0, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccFirstGate:I

    .line 279
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/SaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/yostore/aws/api/exception/UrlException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_4

    .line 302
    :goto_0
    return-object v4

    .line 281
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 282
    .local v2, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 284
    .end local v2           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 285
    .local v2, e:Lnet/yostore/aws/api/exception/SaxException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 287
    .end local v2           #e:Lnet/yostore/aws/api/exception/SaxException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 288
    .local v2, e:Lnet/yostore/aws/api/exception/AAAException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 290
    .end local v2           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 291
    .local v2, e:Lnet/yostore/aws/api/exception/UrlException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 301
    .end local v2           #e:Lnet/yostore/aws/api/exception/UrlException;
    :catch_4
    move-exception v4

    move-object v2, v4

    .line 302
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method

.method private static requestServiceGateway(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 5
    .parameter "apicfg"

    .prologue
    .line 308
    new-instance v1, Lnet/yostore/aws/api/helper/RequestServiceGatewayHelper;

    invoke-direct {v1}, Lnet/yostore/aws/api/helper/RequestServiceGatewayHelper;-><init>()V

    .line 309
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v3, 0x0

    .line 311
    .local v3, response:Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;

    move-object v3, v0

    .line 312
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;->getServicegateway()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 313
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/SaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/yostore/aws/api/exception/UrlException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_4

    .line 336
    :goto_0
    return-object v4

    .line 315
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 316
    .local v2, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 318
    .end local v2           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 319
    .local v2, e:Lnet/yostore/aws/api/exception/SaxException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 321
    .end local v2           #e:Lnet/yostore/aws/api/exception/SaxException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 322
    .local v2, e:Lnet/yostore/aws/api/exception/AAAException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 324
    .end local v2           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 325
    .local v2, e:Lnet/yostore/aws/api/exception/UrlException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 335
    .end local v2           #e:Lnet/yostore/aws/api/exception/UrlException;
    :catch_4
    move-exception v4

    move-object v2, v4

    .line 336
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method

.method public static requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 1
    .parameter "apicfg"

    .prologue
    .line 200
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
    .line 204
    add-int/lit8 p1, p1, 0x1

    .line 205
    new-instance v1, Lnet/yostore/aws/api/helper/RequestTokenHelper;

    invoke-direct {v1}, Lnet/yostore/aws/api/helper/RequestTokenHelper;-><init>()V

    .line 206
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v3, 0x0

    .line 208
    .local v3, response:Lnet/yostore/aws/api/entity/RequestTokenResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/RequestTokenResponse;

    move-object v3, v0

    .line 209
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 210
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getInforelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    .line 211
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getWebrelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    .line 212
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getSearchserver()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    .line 213
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getMediarelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    .line 214
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getJobRelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->jobRelay:Ljava/lang/String;

    .line 216
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getDisplay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    .line 218
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getCapacity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    .line 220
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getExpire()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    .line 222
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getMearBlockFreeAccAfterFGate()I

    move-result v4

    iput v4, p0, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccAfterFGate:I

    .line 223
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getMearBlockFreeAccFirstGate()I

    move-result v4

    iput v4, p0, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccFirstGate:I

    .line 225
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getMearBlockFreeAccAfterFGate()I

    move-result v4

    sput v4, Lcom/ecareme/mear/Mear;->mearBlockFreeAccAfterFGate:I

    .line 226
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getMearBlockFreeAccFirstGate()I

    move-result v4

    sput v4, Lcom/ecareme/mear/Mear;->mearBlockFreeAccFirstGate:I

    .line 228
    invoke-static {p0}, Lcom/ecareme/mear/Mear;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 230
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->getAccountInfo(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/SaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/yostore/aws/api/exception/UrlException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    .line 253
    :goto_0
    return-object v4

    .line 232
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 233
    .local v2, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 235
    .end local v2           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 236
    .local v2, e:Lnet/yostore/aws/api/exception/SaxException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 238
    .end local v2           #e:Lnet/yostore/aws/api/exception/SaxException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 240
    .local v2, e:Lnet/yostore/aws/api/exception/AAAException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 245
    .end local v2           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 247
    .local v2, e:Lnet/yostore/aws/api/exception/UrlException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 252
    .end local v2           #e:Lnet/yostore/aws/api/exception/UrlException;
    :catch_4
    move-exception v4

    move-object v2, v4

    .line 253
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method

.method private static saveToDB(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 5
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    .line 194
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 195
    new-instance v0, Lnet/yostore/aws/sqlite/entity/AccInfo;

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v3, p1, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->insertAccInfo(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 196
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    return-object v0
.end method

.method public static validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 1
    .parameter "apicfg"

    .prologue
    .line 352
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    return-object v0
.end method
