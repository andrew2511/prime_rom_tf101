.class public Lcom/aws/account/view/RegisterActivity;
.super Landroid/app/Activity;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aws/account/view/RegisterActivity$RegisterTask;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I = null

.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I = null

.field private static final ACCINFO:Ljava/lang/String; = "AccountInfo"

.field private static final TAG:Ljava/lang/String; = "RegisterDialog"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field err:Landroid/widget/TextView;

.field mEmail:Landroid/widget/EditText;

.field mPassword:Landroid/widget/EditText;

.field mPassword2:Landroid/widget/EditText;

.field mRegisterButton:Landroid/widget/Button;

.field mUsername:Landroid/widget/EditText;

.field myCheckBox:Landroid/widget/CheckBox;

.field status:Lnet/yostore/aws/handler/RegisterHandler$Status;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/aws/account/view/RegisterActivity;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

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
    sput-object v0, Lcom/aws/account/view/RegisterActivity;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

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

.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/aws/account/view/RegisterActivity;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/RegisterHandler$Status;->values()[Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->ACTed:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Dup:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/aws/account/view/RegisterActivity;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0}, Lnet/yostore/aws/api/ApiConfig;-><init>()V

    iput-object v0, p0, Lcom/aws/account/view/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 52
    iput-object v1, p0, Lcom/aws/account/view/RegisterActivity;->myCheckBox:Landroid/widget/CheckBox;

    .line 53
    iput-object v1, p0, Lcom/aws/account/view/RegisterActivity;->err:Landroid/widget/TextView;

    .line 55
    sget-object v0, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;

    iput-object v0, p0, Lcom/aws/account/view/RegisterActivity;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/aws/account/view/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/aws/account/view/RegisterActivity;->languageMap()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/aws/account/view/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/aws/account/view/RegisterActivity;->getLocalMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/aws/account/view/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$3(Lcom/aws/account/view/RegisterActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/aws/account/view/RegisterActivity;->afterRegister()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/aws/account/view/RegisterActivity;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/aws/account/view/RegisterActivity;->broadcastAccInfo([B)V

    return-void
.end method

.method private afterRegister()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 321
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 323
    .local v2, rtn:Ljava/lang/Boolean;
    invoke-static {}, Lcom/aws/account/view/RegisterActivity;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I

    move-result-object v3

    iget-object v4, p0, Lcom/aws/account/view/RegisterActivity;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v4}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 347
    :pswitch_0
    const-string v3, "RegisterDialog"

    const-string v4, "Register XXXX"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 352
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 325
    :pswitch_1
    const-string v3, "RegisterDialog"

    const-string v4, "Register OK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, p0, Lcom/aws/account/view/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, p0, Lcom/aws/account/view/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    invoke-static {v4}, Lnet/yostore/utility/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 327
    iget-object v3, p0, Lcom/aws/account/view/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v4, p0, Lcom/aws/account/view/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {p0, v3, v4, v5}, Lnet/yostore/aws/handler/LoginHandler;->doLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 328
    .local v0, as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    invoke-static {}, Lcom/aws/account/view/RegisterActivity;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I

    move-result-object v3

    invoke-virtual {v0}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 340
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 341
    goto :goto_0

    .line 332
    :pswitch_2
    const/4 v1, 0x0

    .line 333
    .local v1, awsacc:Ljava/io/File;
    const-string v3, "/asus/webstorage/"

    const-string v4, "/account.info"

    invoke-static {v1, v3, v4}, Lcom/aws/mycloud/view/Utility;->initFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 334
    iget-object v3, p0, Lcom/aws/account/view/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v3, v1}, Lnet/yostore/aws/api/ApiConfig;->setToFile(Ljava/io/File;)Z

    goto :goto_1

    .line 344
    .end local v0           #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .end local v1           #awsacc:Ljava/io/File;
    :pswitch_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 345
    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 328
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private broadcastAccInfo([B)V
    .locals 3
    .parameter "accinfo"

    .prologue
    .line 357
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 358
    const-string v2, "com.asus.webstorage.id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 359
    const-string v2, "AccountInfo"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    .line 361
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/aws/account/view/RegisterActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method private getLocalMacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/aws/account/view/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 162
    .local v1, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 163
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private languageMap()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 280
    .local v0, lo:Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    if-ne v0, v1, :cond_0

    const-string v1, "zh_TW"

    .line 312
    :goto_0
    return-object v1

    .line 281
    :cond_0
    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    if-ne v0, v1, :cond_1

    const-string v1, "zh_TW"

    goto :goto_0

    .line 285
    :cond_1
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    if-ne v0, v1, :cond_2

    const-string v1, "zh_CN"

    goto :goto_0

    .line 286
    :cond_2
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    if-ne v0, v1, :cond_3

    const-string v1, "zh_CN"

    goto :goto_0

    .line 287
    :cond_3
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    if-ne v0, v1, :cond_4

    const-string v1, "zh_CN"

    goto :goto_0

    .line 288
    :cond_4
    sget-object v1, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    if-ne v0, v1, :cond_5

    const-string v1, "zh_CN"

    goto :goto_0

    .line 291
    :cond_5
    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    if-ne v0, v1, :cond_6

    const-string v1, "de_DE"

    goto :goto_0

    .line 292
    :cond_6
    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    if-ne v0, v1, :cond_7

    const-string v1, "de_DE"

    goto :goto_0

    .line 295
    :cond_7
    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    if-ne v0, v1, :cond_8

    const-string v1, "fr_FR"

    goto :goto_0

    .line 296
    :cond_8
    sget-object v1, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    if-ne v0, v1, :cond_9

    const-string v1, "fr_FR"

    goto :goto_0

    .line 299
    :cond_9
    sget-object v1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    if-ne v0, v1, :cond_a

    const-string v1, "it_IT"

    goto :goto_0

    .line 300
    :cond_a
    sget-object v1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    if-ne v0, v1, :cond_b

    const-string v1, "it_IT"

    goto :goto_0

    .line 305
    :cond_b
    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    if-ne v0, v1, :cond_c

    const-string v1, "ja_JP"

    goto :goto_0

    .line 306
    :cond_c
    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    if-ne v0, v1, :cond_d

    const-string v1, "ja_JP"

    goto :goto_0

    .line 308
    :cond_d
    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    if-ne v0, v1, :cond_e

    const-string v1, "ko_KR"

    goto :goto_0

    .line 309
    :cond_e
    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    if-ne v0, v1, :cond_f

    const-string v1, "ko_KR"

    goto :goto_0

    .line 312
    :cond_f
    const-string v1, "en_US"

    goto :goto_0
.end method

.method private varargs validate([Ljava/lang/String;)Z
    .locals 9
    .parameter "params"

    .prologue
    const v8, 0x7f040027

    const/4 v7, 0x3

    .line 131
    const/4 v3, 0x0

    .line 133
    .local v3, rtn:Z
    const/4 v5, 0x0

    aget-object v4, p1, v5

    .line 134
    .local v4, user:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v1, p1, v5

    .line 135
    .local v1, password:Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v2, p1, v5

    .line 136
    .local v2, password2:Ljava/lang/String;
    aget-object v0, p1, v7

    .line 138
    .local v0, email:Ljava/lang/String;
    const-string v5, "^[_a-z0-9-]+([.][_a-z0-9-]+)*@[a-z0-9-]+([.][a-z0-9-]+)*$"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    const-string v5, "[A-Za-z0-9._\\s-]{3,16}$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    const-string v5, "[A-Za-z0-9]{6,12}$"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-gt v5, v6, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_0

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xc

    if-gt v5, v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ge v5, v6, :cond_1

    .line 144
    :cond_0
    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity;->err:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 157
    :goto_0
    return v3

    .line 146
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 149
    :cond_2
    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity;->err:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 152
    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity;->err:Landroid/widget/TextView;

    const v6, 0x7f04002c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 155
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doCancel(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/aws/account/view/RegisterActivity;->finish()V

    .line 128
    return-void
.end method

.method public doRegist(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 113
    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity;->err:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, user:Ljava/lang/String;
    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, password:Ljava/lang/String;
    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity;->mPassword2:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, password2:Ljava/lang/String;
    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, email:Ljava/lang/String;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v7

    aput-object v1, v5, v8

    aput-object v2, v5, v9

    aput-object v0, v5, v10

    invoke-direct {p0, v5}, Lcom/aws/account/view/RegisterActivity;->validate([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    new-instance v3, Lcom/aws/account/view/RegisterActivity$RegisterTask;

    invoke-direct {v3, p0, p0}, Lcom/aws/account/view/RegisterActivity$RegisterTask;-><init>(Lcom/aws/account/view/RegisterActivity;Landroid/content/Context;)V

    .line 121
    .local v3, t:Lcom/aws/account/view/RegisterActivity$RegisterTask;
    new-array v5, v10, [Ljava/lang/String;

    aput-object v4, v5, v7

    aput-object v1, v5, v8

    aput-object v0, v5, v9

    invoke-virtual {v3, v5}, Lcom/aws/account/view/RegisterActivity$RegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    .end local v3           #t:Lcom/aws/account/view/RegisterActivity$RegisterTask;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v1, 0x7f04000f

    invoke-virtual {p0, v1}, Lcom/aws/account/view/RegisterActivity;->setTitle(I)V

    .line 62
    const v1, 0x7f030014

    invoke-virtual {p0, v1}, Lcom/aws/account/view/RegisterActivity;->setContentView(I)V

    .line 64
    const v1, 0x7f06005f

    invoke-virtual {p0, v1}, Lcom/aws/account/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/aws/account/view/RegisterActivity;->mUsername:Landroid/widget/EditText;

    .line 65
    const v1, 0x7f060060

    invoke-virtual {p0, v1}, Lcom/aws/account/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/aws/account/view/RegisterActivity;->mPassword:Landroid/widget/EditText;

    .line 66
    const v1, 0x7f060061

    invoke-virtual {p0, v1}, Lcom/aws/account/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/aws/account/view/RegisterActivity;->mPassword2:Landroid/widget/EditText;

    .line 67
    const v1, 0x7f060062

    invoke-virtual {p0, v1}, Lcom/aws/account/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/aws/account/view/RegisterActivity;->mEmail:Landroid/widget/EditText;

    .line 69
    const v1, 0x7f060066

    invoke-virtual {p0, v1}, Lcom/aws/account/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aws/account/view/RegisterActivity;->mRegisterButton:Landroid/widget/Button;

    .line 86
    const v1, 0x7f060063

    invoke-virtual {p0, v1}, Lcom/aws/account/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aws/account/view/RegisterActivity;->err:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f060065

    invoke-virtual {p0, v1}, Lcom/aws/account/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    .local v0, tv2:Landroid/widget/TextView;
    const v1, 0x7f040019

    invoke-virtual {p0, v1}, Lcom/aws/account/view/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 92
    const v1, 0x7f060064

    invoke-virtual {p0, v1}, Lcom/aws/account/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/aws/account/view/RegisterActivity;->myCheckBox:Landroid/widget/CheckBox;

    .line 93
    iget-object v1, p0, Lcom/aws/account/view/RegisterActivity;->mRegisterButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/aws/account/view/RegisterActivity;->myCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    iget-object v1, p0, Lcom/aws/account/view/RegisterActivity;->myCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/aws/account/view/RegisterActivity$1;

    invoke-direct {v2, p0}, Lcom/aws/account/view/RegisterActivity$1;-><init>(Lcom/aws/account/view/RegisterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    return-void
.end method
