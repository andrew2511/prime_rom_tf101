.class public Lnet/yostore/aws/handler/SelfActivationHandler;
.super Ljava/lang/Object;
.source "SelfActivationHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static selfActivate(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)Lnet/yostore/aws/handler/RegisterHandler$Status;
    .locals 6
    .parameter "apicfg"
    .parameter "language"

    .prologue
    .line 26
    new-instance v1, Lnet/yostore/aws/api/helper/SelfActivationHelper;

    invoke-direct {v1, p1}, Lnet/yostore/aws/api/helper/SelfActivationHelper;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v3, 0x0

    .line 29
    .local v3, response:Lnet/yostore/aws/api/entity/SelfActivationResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lnet/yostore/aws/api/entity/SelfActivationResponse;

    move-object v3, v0

    .line 30
    if-eqz v3, :cond_2

    .line 31
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/SelfActivationResponse;->getStatus()I

    move-result v4

    .line 32
    .local v4, sc:I
    if-nez v4, :cond_0

    .line 33
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/SelfActivationResponse;->getUserid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 34
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/SelfActivationResponse;->getPassword()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 35
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/SelfActivationResponse;->getServicegateway()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 36
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 68
    .end local v4           #sc:I
    :goto_0
    return-object v5

    .line 38
    .restart local v4       #sc:I
    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 39
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 42
    :cond_1
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 48
    .end local v4           #sc:I
    :cond_2
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/RegisterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/yostore/aws/api/exception/SaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/yostore/aws/api/exception/UrlException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 51
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 52
    .local v2, e:Lnet/yostore/aws/api/exception/RegisterException;
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->Dup:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 54
    .end local v2           #e:Lnet/yostore/aws/api/exception/RegisterException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 55
    .local v2, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 57
    .end local v2           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 58
    .local v2, e:Lnet/yostore/aws/api/exception/SaxException;
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 60
    .end local v2           #e:Lnet/yostore/aws/api/exception/SaxException;
    :catch_3
    move-exception v5

    move-object v2, v5

    .line 61
    .local v2, e:Lnet/yostore/aws/api/exception/AAAException;
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 63
    .end local v2           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_4
    move-exception v5

    move-object v2, v5

    .line 64
    .local v2, e:Lnet/yostore/aws/api/exception/UrlException;
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 67
    .end local v2           #e:Lnet/yostore/aws/api/exception/UrlException;
    :catch_5
    move-exception v5

    move-object v2, v5

    .line 68
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0
.end method
