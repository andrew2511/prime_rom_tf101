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
    .line 31
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
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->GO_CAPTCHA:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OTP_LOCK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->SHOW_OTP:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lnet/yostore/aws/handler/LoginHandler;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearDbAndMem(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 128
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public static doBackgroundLogin(Landroid/content/Context;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 53
    sget-object v2, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 54
    .local v2, rtn:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    new-instance v1, Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v1}, Lnet/yostore/aws/api/ApiConfig;-><init>()V

    .line 56
    .local v1, apicfg:Lnet/yostore/aws/api/ApiConfig;
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v0

    .line 57
    .local v0, ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 58
    iget-object v3, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    iput-object v3, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 59
    iget-object v3, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 60
    iget-object v3, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    iput-object v3, v1, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 61
    iget v3, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browsesort:I

    sput v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    .line 62
    iget v3, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->browseSortByDesc:I

    sput v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    .line 63
    sget-object v2, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 73
    :goto_0
    sget-object v3, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v2, v3, :cond_0

    .line 74
    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 77
    :cond_0
    return-object v2

    .line 70
    :cond_1
    sget-object v2, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method

.method public static doLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 3
    .parameter "ctx"
    .parameter "uid"
    .parameter "pwd"
    .parameter "savetodb"
    .parameter "apicfg"

    .prologue
    .line 82
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 83
    .local v0, rtn:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 84
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 85
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 89
    iput-object p1, p4, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 90
    iput-object p2, p4, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 92
    invoke-static {p4}, Lnet/yostore/aws/handler/LoginHandler;->requestServiceGateway(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 93
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_2

    .line 94
    invoke-static {p4}, Lnet/yostore/aws/handler/LoginHandler;->requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 95
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_2

    .line 96
    invoke-static {p4}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 97
    if-eqz p3, :cond_2

    invoke-static {p0, p4}, Lnet/yostore/aws/handler/LoginHandler;->saveToDB(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 101
    :cond_2
    invoke-static {}, Lnet/yostore/aws/handler/LoginHandler;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I

    move-result-object v1

    invoke-virtual {v0}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 124
    :cond_3
    :goto_0
    :pswitch_0
    return-object v0

    .line 103
    :pswitch_1
    const-string v1, "LoginHelper"

    const-string v2, "Login OK!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->clearDbAndMem(Landroid/content/Context;)V

    goto :goto_0

    .line 111
    :pswitch_3
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->clearDbAndMem(Landroid/content/Context;)V

    goto :goto_0

    .line 114
    :pswitch_4
    const-string v1, "LoginHelper"

    const-string v2, "Login NG!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->clearDbAndMem(Landroid/content/Context;)V

    goto :goto_0

    .line 119
    :pswitch_5
    const-string v1, "LoginHelper"

    const-string v2, "Login ERR!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static doLogout(Landroid/content/Context;)Z
    .locals 1
    .parameter "ctx"

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, rtn:Z
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 226
    return v0
.end method

.method private static requestServiceGateway(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 5
    .parameter "apicfg"

    .prologue
    .line 179
    new-instance v1, Lnet/yostore/aws/api/helper/RequestServiceGatewayHelper;

    invoke-direct {v1}, Lnet/yostore/aws/api/helper/RequestServiceGatewayHelper;-><init>()V

    .line 180
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v3, 0x0

    .line 182
    .local v3, response:Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;

    move-object v3, v0

    .line 183
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;->getServicegateway()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 184
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/SaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/yostore/aws/api/exception/CaptchaException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/yostore/aws/api/exception/OTPAuthException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/yostore/aws/api/exception/OTPLockException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lnet/yostore/aws/api/exception/UrlException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_7

    .line 216
    :goto_0
    return-object v4

    .line 186
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 187
    .local v2, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 189
    .end local v2           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 190
    .local v2, e:Lnet/yostore/aws/api/exception/SaxException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 192
    .end local v2           #e:Lnet/yostore/aws/api/exception/SaxException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 193
    .local v2, e:Lnet/yostore/aws/api/exception/CaptchaException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->GO_CAPTCHA:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 195
    .end local v2           #e:Lnet/yostore/aws/api/exception/CaptchaException;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 196
    .local v2, e:Lnet/yostore/aws/api/exception/OTPAuthException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->SHOW_OTP:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 198
    .end local v2           #e:Lnet/yostore/aws/api/exception/OTPAuthException;
    :catch_4
    move-exception v4

    move-object v2, v4

    .line 199
    .local v2, e:Lnet/yostore/aws/api/exception/OTPLockException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OTP_LOCK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 201
    .end local v2           #e:Lnet/yostore/aws/api/exception/OTPLockException;
    :catch_5
    move-exception v4

    move-object v2, v4

    .line 202
    .local v2, e:Lnet/yostore/aws/api/exception/AAAException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 204
    .end local v2           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_6
    move-exception v4

    move-object v2, v4

    .line 205
    .local v2, e:Lnet/yostore/aws/api/exception/UrlException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 215
    .end local v2           #e:Lnet/yostore/aws/api/exception/UrlException;
    :catch_7
    move-exception v4

    move-object v2, v4

    .line 216
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method

.method public static requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 5
    .parameter "apicfg"

    .prologue
    .line 139
    new-instance v1, Lnet/yostore/aws/api/helper/RequestTokenHelper;

    invoke-direct {v1}, Lnet/yostore/aws/api/helper/RequestTokenHelper;-><init>()V

    .line 140
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v3, 0x0

    .line 142
    .local v3, response:Lnet/yostore/aws/api/entity/RequestTokenResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/RequestTokenResponse;

    move-object v3, v0

    .line 143
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 145
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getInforelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    .line 146
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getWebrelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    .line 147
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getSearchserver()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    .line 148
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getMediarelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    .line 149
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getJobRelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->jobRelay:Ljava/lang/String;

    .line 151
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getDisplay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    .line 152
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getCapacity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    .line 153
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getExpire()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    .line 155
    invoke-static {p0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 156
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/CaptchaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/OTPAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/yostore/aws/api/exception/OTPLockException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_4

    .line 171
    :goto_0
    return-object v4

    .line 158
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 159
    .local v2, e:Lnet/yostore/aws/api/exception/CaptchaException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->GO_CAPTCHA:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 161
    .end local v2           #e:Lnet/yostore/aws/api/exception/CaptchaException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 162
    .local v2, e:Lnet/yostore/aws/api/exception/OTPAuthException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->SHOW_OTP:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 164
    .end local v2           #e:Lnet/yostore/aws/api/exception/OTPAuthException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 165
    .local v2, e:Lnet/yostore/aws/api/exception/OTPLockException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OTP_LOCK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 167
    .end local v2           #e:Lnet/yostore/aws/api/exception/OTPLockException;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 168
    .local v2, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 170
    .end local v2           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_4
    move-exception v4

    move-object v2, v4

    .line 171
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method

.method private static saveToDB(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 5
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    .line 132
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 133
    new-instance v0, Lnet/yostore/aws/sqlite/entity/AccInfo;

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v3, p1, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->insertAccInfo(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 134
    invoke-static {p1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 135
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    return-object v0
.end method

.method public static validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 1
    .parameter "apicfg"

    .prologue
    .line 231
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object p0

    .line 232
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->haveInternet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method
