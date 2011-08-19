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
    .line 17
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
    sput-object v0, Lnet/yostore/aws/handler/RegisterHandler;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I

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
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/RegisterHandler$Status;
    .locals 3
    .parameter "ctx"
    .parameter "uid"
    .parameter "pwd"
    .parameter "email"
    .parameter "language"
    .parameter "apicfg"

    .prologue
    .line 34
    sget-object v0, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 35
    .local v0, rtn:Lnet/yostore/aws/handler/RegisterHandler$Status;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 36
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 37
    :cond_1
    if-nez p3, :cond_2

    const-string p3, ""

    .line 38
    :cond_2
    if-nez p4, :cond_3

    const-string p4, "en_US"

    .line 39
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 42
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 44
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

    .line 45
    iput-object p1, p5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 46
    iput-object p2, p5, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 48
    invoke-static {p5, p3, p4}, Lnet/yostore/aws/handler/RegisterHandler;->register(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    .line 56
    invoke-static {}, Lnet/yostore/aws/handler/RegisterHandler;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I

    move-result-object v1

    invoke-virtual {v0}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 74
    :cond_4
    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    const-string v1, "RegisterHelper"

    const-string v2, "Register OK!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :pswitch_1
    const-string v1, "RegisterHelper"

    const-string v2, "Register NG!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :pswitch_2
    const-string v1, "RegisterHelper"

    const-string v2, "Register Duplicate!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :pswitch_3
    const-string v1, "RegisterHelper"

    const-string v2, "Register ERR!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static register(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/handler/RegisterHandler$Status;
    .locals 3
    .parameter "apicfg"
    .parameter "email"
    .parameter "language"

    .prologue
    .line 86
    new-instance v0, Lnet/yostore/aws/api/helper/RegisterHelper;

    invoke-direct {v0, p1, p2}, Lnet/yostore/aws/api/helper/RegisterHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    invoke-virtual {v0, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    .line 91
    sget-object v2, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/RegisterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/yostore/aws/api/exception/SaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/yostore/aws/api/exception/UrlException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_5

    .line 109
    :goto_0
    return-object v2

    .line 93
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 94
    .local v1, e:Lnet/yostore/aws/api/exception/RegisterException;
    sget-object v2, Lnet/yostore/aws/handler/RegisterHandler$Status;->Dup:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 96
    .end local v1           #e:Lnet/yostore/aws/api/exception/RegisterException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 97
    .local v1, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v2, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 99
    .end local v1           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 100
    .local v1, e:Lnet/yostore/aws/api/exception/SaxException;
    sget-object v2, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 102
    .end local v1           #e:Lnet/yostore/aws/api/exception/SaxException;
    :catch_3
    move-exception v2

    move-object v1, v2

    .line 103
    .local v1, e:Lnet/yostore/aws/api/exception/AAAException;
    sget-object v2, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 105
    .end local v1           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_4
    move-exception v2

    move-object v1, v2

    .line 106
    .local v1, e:Lnet/yostore/aws/api/exception/UrlException;
    sget-object v2, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 108
    .end local v1           #e:Lnet/yostore/aws/api/exception/UrlException;
    :catch_5
    move-exception v2

    move-object v1, v2

    .line 109
    .local v1, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v2, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0
.end method
