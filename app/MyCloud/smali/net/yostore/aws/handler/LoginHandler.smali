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
    .line 20
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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 3
    .parameter "ctx"
    .parameter "uid"
    .parameter "pwd"
    .parameter "apicfg"

    .prologue
    .line 70
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 71
    .local v0, rtn:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 72
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 73
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 77
    iput-object p1, p3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 78
    iput-object p2, p3, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 80
    invoke-static {p3}, Lnet/yostore/aws/handler/LoginHandler;->requestServiceGateway(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 81
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_2

    .line 82
    invoke-static {p3}, Lnet/yostore/aws/handler/LoginHandler;->requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 83
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 88
    :cond_2
    invoke-static {}, Lnet/yostore/aws/handler/LoginHandler;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I

    move-result-object v1

    invoke-virtual {v0}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 111
    :cond_3
    :goto_0
    :pswitch_0
    return-object v0

    .line 90
    :pswitch_1
    const-string v1, "LoginHelper"

    const-string v2, "Login OK!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v1, "LoginHelper"

    const-string v2, "Login NG!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :pswitch_3
    const-string v1, "LoginHelper"

    const-string v2, "Login ERR!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static doLogout(Landroid/content/Context;)Z
    .locals 1
    .parameter "ctx"

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, rtn:Z
    return v0
.end method

.method private static requestServiceGateway(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 5
    .parameter "apicfg"

    .prologue
    .line 157
    new-instance v1, Lnet/yostore/aws/api/helper/RequestServiceGatewayHelper;

    invoke-direct {v1}, Lnet/yostore/aws/api/helper/RequestServiceGatewayHelper;-><init>()V

    .line 158
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v3, 0x0

    .line 160
    .local v3, response:Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;

    move-object v3, v0

    .line 161
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;->getServicegateway()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 162
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

    .line 194
    :goto_0
    return-object v4

    .line 164
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 165
    .local v2, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 167
    .end local v2           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 168
    .local v2, e:Lnet/yostore/aws/api/exception/SaxException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 170
    .end local v2           #e:Lnet/yostore/aws/api/exception/SaxException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 171
    .local v2, e:Lnet/yostore/aws/api/exception/CaptchaException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->GO_CAPTCHA:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 173
    .end local v2           #e:Lnet/yostore/aws/api/exception/CaptchaException;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 174
    .local v2, e:Lnet/yostore/aws/api/exception/OTPAuthException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->SHOW_OTP:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 176
    .end local v2           #e:Lnet/yostore/aws/api/exception/OTPAuthException;
    :catch_4
    move-exception v4

    move-object v2, v4

    .line 177
    .local v2, e:Lnet/yostore/aws/api/exception/OTPLockException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OTP_LOCK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 179
    .end local v2           #e:Lnet/yostore/aws/api/exception/OTPLockException;
    :catch_5
    move-exception v4

    move-object v2, v4

    .line 180
    .local v2, e:Lnet/yostore/aws/api/exception/AAAException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 182
    .end local v2           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_6
    move-exception v4

    move-object v2, v4

    .line 183
    .local v2, e:Lnet/yostore/aws/api/exception/UrlException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 193
    .end local v2           #e:Lnet/yostore/aws/api/exception/UrlException;
    :catch_7
    move-exception v4

    move-object v2, v4

    .line 194
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method

.method public static requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 5
    .parameter "apicfg"

    .prologue
    .line 119
    new-instance v1, Lnet/yostore/aws/api/helper/RequestTokenHelper;

    invoke-direct {v1}, Lnet/yostore/aws/api/helper/RequestTokenHelper;-><init>()V

    .line 120
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v3, 0x0

    .line 122
    .local v3, response:Lnet/yostore/aws/api/entity/RequestTokenResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/RequestTokenResponse;

    move-object v3, v0

    .line 123
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 124
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getInforelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    .line 125
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getWebrelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    .line 126
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getSearchserver()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->searchServer:Ljava/lang/String;

    .line 127
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getMediarelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->mediaRelay:Ljava/lang/String;

    .line 128
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getJobRelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->jobRelay:Ljava/lang/String;

    .line 129
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getRssRelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->rssRelay:Ljava/lang/String;

    .line 130
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getContentRelay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->contentRelay:Ljava/lang/String;

    .line 131
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getDisplay()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    .line 132
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getCapacity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    .line 133
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/PackageInfo;->getExpire()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    .line 134
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/CaptchaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/OTPAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/yostore/aws/api/exception/OTPLockException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_4

    .line 149
    :goto_0
    return-object v4

    .line 136
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 137
    .local v2, e:Lnet/yostore/aws/api/exception/CaptchaException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->GO_CAPTCHA:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 139
    .end local v2           #e:Lnet/yostore/aws/api/exception/CaptchaException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 140
    .local v2, e:Lnet/yostore/aws/api/exception/OTPAuthException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->SHOW_OTP:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 142
    .end local v2           #e:Lnet/yostore/aws/api/exception/OTPAuthException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 143
    .local v2, e:Lnet/yostore/aws/api/exception/OTPLockException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OTP_LOCK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 145
    .end local v2           #e:Lnet/yostore/aws/api/exception/OTPLockException;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 146
    .local v2, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 148
    .end local v2           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_4
    move-exception v4

    move-object v2, v4

    .line 149
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method

.method public static validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .locals 1
    .parameter "apicfg"

    .prologue
    .line 208
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0
.end method
