.class public Lnet/yostore/aws/handler/UpdateLoginHandler;
.super Ljava/lang/Object;
.source "UpdateLoginHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateLogin(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/handler/RegisterHandler$Status;
    .locals 6
    .parameter "apicfg"
    .parameter "uid"
    .parameter "pwd"
    .parameter "email"
    .parameter "language"

    .prologue
    .line 28
    new-instance v1, Lnet/yostore/aws/api/helper/UpdateLoginHelper;

    invoke-direct {v1, p1, p2, p3, p4}, Lnet/yostore/aws/api/helper/UpdateLoginHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v3, 0x0

    .line 31
    .local v3, response:Lnet/yostore/aws/api/entity/UpdateLoginResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lnet/yostore/aws/api/entity/UpdateLoginResponse;

    move-object v3, v0

    .line 32
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/UpdateLoginResponse;->getStatus()I

    move-result v4

    .line 33
    .local v4, sc:I
    if-nez v4, :cond_0

    .line 34
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 53
    .end local v4           #sc:I
    :goto_0
    return-object v5

    .line 37
    .restart local v4       #sc:I
    :cond_0
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->Dup:Lnet/yostore/aws/handler/RegisterHandler$Status;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/SaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/yostore/aws/api/exception/UrlException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 40
    .end local v4           #sc:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 41
    .local v2, e:Lnet/yostore/aws/api/exception/HttpException;
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 43
    .end local v2           #e:Lnet/yostore/aws/api/exception/HttpException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 44
    .local v2, e:Lnet/yostore/aws/api/exception/SaxException;
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 46
    .end local v2           #e:Lnet/yostore/aws/api/exception/SaxException;
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 47
    .local v2, e:Lnet/yostore/aws/api/exception/AAAException;
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 49
    .end local v2           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_3
    move-exception v5

    move-object v2, v5

    .line 50
    .local v2, e:Lnet/yostore/aws/api/exception/UrlException;
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0

    .line 52
    .end local v2           #e:Lnet/yostore/aws/api/exception/UrlException;
    :catch_4
    move-exception v5

    move-object v2, v5

    .line 53
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    sget-object v5, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_0
.end method
