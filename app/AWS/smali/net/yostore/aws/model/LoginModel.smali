.class public Lnet/yostore/aws/model/LoginModel;
.super Ljava/lang/Object;
.source "LoginModel.java"


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I = null

.field private static final TAG:Ljava/lang/String; = "LoginMoedl"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private loginas:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private pwd:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lnet/yostore/aws/model/LoginModel;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

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
    sput-object v0, Lnet/yostore/aws/model/LoginModel;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

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

.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 2
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "AWSPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/model/LoginModel;->mPrefs:Landroid/content/SharedPreferences;

    .line 27
    iput-object p2, p0, Lnet/yostore/aws/model/LoginModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 28
    iput-object p1, p0, Lnet/yostore/aws/model/LoginModel;->ctx:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public login(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "uid"
    .parameter "pwd"

    .prologue
    .line 32
    sget v0, Lnet/yostore/aws/api/status/APIStatus;->LOGIN_FAIL:I

    .line 33
    .local v0, loginStatus:I
    iput-object p1, p0, Lnet/yostore/aws/model/LoginModel;->uid:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lnet/yostore/aws/model/LoginModel;->pwd:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lnet/yostore/aws/model/LoginModel;->ctx:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/yostore/aws/model/LoginModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v1, p1, p2, v2, v3}, Lnet/yostore/aws/handler/LoginHandler;->doLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/model/LoginModel;->loginas:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 36
    invoke-static {}, Lnet/yostore/aws/model/LoginModel;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/model/LoginModel;->loginas:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v2}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 52
    :goto_0
    return v0

    .line 38
    :pswitch_0
    const-string v1, "LoginMoedl"

    const-string v2, "Login OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v1, p0, Lnet/yostore/aws/model/LoginModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 40
    sget v0, Lnet/yostore/aws/api/status/APIStatus;->SUCCESS:I

    .line 41
    goto :goto_0

    .line 43
    :pswitch_1
    sget v0, Lnet/yostore/aws/api/status/APIStatus;->LOGIN_FAIL:I

    .line 44
    goto :goto_0

    .line 46
    :pswitch_2
    sget v0, Lnet/yostore/aws/api/status/APIStatus;->CONNECTION_FAIL:I

    .line 47
    goto :goto_0

    .line 49
    :pswitch_3
    sget v0, Lnet/yostore/aws/api/status/APIStatus;->LOGIN_FAIL:I

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public validateLogin()I
    .locals 3

    .prologue
    .line 56
    sget v0, Lnet/yostore/aws/api/status/APIStatus;->LOGIN_FAIL:I

    .line 57
    .local v0, loginStatus:I
    iget-object v1, p0, Lnet/yostore/aws/model/LoginModel;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnet/yostore/aws/handler/LoginHandler;->doBackgroundLogin(Landroid/content/Context;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/model/LoginModel;->loginas:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 58
    invoke-static {}, Lnet/yostore/aws/model/LoginModel;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/model/LoginModel;->loginas:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v2}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 74
    :goto_0
    return v0

    .line 60
    :pswitch_0
    const-string v1, "LoginMoedl"

    const-string v2, "Login OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lnet/yostore/aws/model/LoginModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v1}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 62
    sget v0, Lnet/yostore/aws/api/status/APIStatus;->SUCCESS:I

    .line 63
    goto :goto_0

    .line 65
    :pswitch_1
    sget v0, Lnet/yostore/aws/api/status/APIStatus;->LOGIN_FAIL:I

    .line 66
    goto :goto_0

    .line 68
    :pswitch_2
    sget v0, Lnet/yostore/aws/api/status/APIStatus;->CONNECTION_FAIL:I

    .line 69
    goto :goto_0

    .line 71
    :pswitch_3
    sget v0, Lnet/yostore/aws/api/status/APIStatus;->LOGIN_FAIL:I

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
