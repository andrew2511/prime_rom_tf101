.class public Lnet/yostore/aws/handler/RegisterHandler;
.super Ljava/lang/Object;
.source "RegisterHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/handler/RegisterHandler$Status;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I = null

.field private static final TAG:Ljava/lang/String; = "RegisterHelper"


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lnet/yostore/aws/handler/RegisterHandler;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/RegisterHandler$Status;->values()[Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Dup:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lnet/yostore/aws/handler/RegisterHandler;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I

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
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearDbAndMem(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 93
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public static doRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/RegisterHandler$Status;
    .locals 3
    .parameter "ctx"
    .parameter "uid"
    .parameter "pwd"
    .parameter "email"
    .parameter "language"
    .parameter "savetodb"
    .parameter "apicfg"

    .prologue
    .line 46
    sget-object v0, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 47
    .local v0, rtn:Lnet/yostore/aws/handler/RegisterHandler$Status;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 48
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 49
    :cond_1
    if-nez p3, :cond_2

    const-string p3, ""

    .line 50
    :cond_2
    if-nez p4, :cond_3

    const-string p4, "en_US"

    .line 51
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 53
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 54
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 57
    iput-object p1, p6, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 58
    iput-object p2, p6, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 60
    invoke-static {p6, p3, p4}, Lnet/yostore/aws/handler/RegisterHandler;->register(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    .line 68
    invoke-static {}, Lnet/yostore/aws/handler/RegisterHandler;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I

    move-result-object v1

    invoke-virtual {v0}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 89
    :cond_4
    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    const-string v1, "RegisterHelper"

    const-string v2, "Register OK!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :pswitch_1
    const-string v1, "RegisterHelper"

    const-string v2, "Register NG!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {p0}, Lnet/yostore/aws/handler/RegisterHandler;->clearDbAndMem(Landroid/content/Context;)V

    goto :goto_0

    .line 78
    :pswitch_2
    const-string v1, "RegisterHelper"

    const-string v2, "Register Duplicate!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p0}, Lnet/yostore/aws/handler/RegisterHandler;->clearDbAndMem(Landroid/content/Context;)V

    goto :goto_0

    .line 83
    :pswitch_3
    const-string v1, "RegisterHelper"

    const-string v2, "Register ERR!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {p0}, Lnet/yostore/aws/handler/RegisterHandler;->clearDbAndMem(Landroid/content/Context;)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static register(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/handler/RegisterHandler$Status;
    .locals 5
    .parameter "apicfg"
    .parameter "email"
    .parameter "language"

    .prologue
    .line 104
    new-instance v1, Lnet/yostore/aws/api/helper/RegisterHelper;

    invoke-direct {v1, p1, p2}, Lnet/yostore/aws/api/helper/RegisterHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v3, 0x0

    .line 107
    .local v3, response:Lnet/yostore/aws/api/entity/RegisterResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/RegisterResponse;

    move-object v3, v0

    .line 108
    sget-object v4, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/RegisterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/yostore/aws/api/exception/SaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/yostore/aws/api/exception/UrlException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_5

    .line 134
    :goto_0
    return-object v4

    .line 110
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 111
    .local v2, e:Lnet/yostore/aws/api/exception/RegisterException;
    sget-object v4, Lnet/yostore/aws/handler/RegisterHandler$Status;->Dup:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 113
    .end local v2           #e:Lnet/yostore/aws/api/exception/RegisterException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 114
    .local v2, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v4, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 116
    .end local v2           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 117
    .local v2, e:Lnet/yostore/aws/api/exception/SaxException;
    sget-object v4, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 119
    .end local v2           #e:Lnet/yostore/aws/api/exception/SaxException;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 120
    .local v2, e:Lnet/yostore/aws/api/exception/AAAException;
    sget-object v4, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 122
    .end local v2           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_4
    move-exception v4

    move-object v2, v4

    .line 123
    .local v2, e:Lnet/yostore/aws/api/exception/UrlException;
    sget-object v4, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 133
    .end local v2           #e:Lnet/yostore/aws/api/exception/UrlException;
    :catch_5
    move-exception v4

    move-object v2, v4

    .line 134
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v4, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0
.end method
