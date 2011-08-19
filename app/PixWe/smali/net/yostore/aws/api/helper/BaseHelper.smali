.class public abstract Lnet/yostore/aws/api/helper/BaseHelper;
.super Ljava/lang/Object;
.source "BaseHelper.java"


# static fields
.field private static final RETRY_CNT:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "BaseHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/ProtocolException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 6
    .parameter "apicfg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v5, :cond_0

    .line 80
    if-lt v1, v5, :cond_1

    .line 81
    new-instance v3, Lnet/yostore/aws/api/exception/ExceedRetryCountException;

    const-string v4, "...many"

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/ExceedRetryCountException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 37
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/yostore/aws/api/helper/BaseHelper;->doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v2

    .line 38
    .local v2, response:Lnet/yostore/aws/api/entity/ApiResponse;
    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 35
    .end local v2           #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v2       #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_0
    move-object v3, v2

    .line 82
    .end local v2           #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :goto_2
    return-object v3

    .line 42
    .restart local v2       #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_1
    new-instance v3, Lnet/yostore/aws/api/exception/AAAException;

    const-string v4, "BaseHelper"

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/AAAException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3

    .line 66
    .end local v2           #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 67
    .local v0, e:Ljava/net/MalformedURLException;
    const-string v3, "BaseHelper"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v3, Lnet/yostore/aws/api/exception/UrlException;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/UrlException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 44
    .end local v0           #e:Ljava/net/MalformedURLException;
    .restart local v2       #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_2
    :try_start_1
    new-instance v3, Lnet/yostore/aws/api/exception/NoMoreWSSpaceException;

    const-string v4, "BaseHelper"

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/NoMoreWSSpaceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    .line 69
    .end local v2           #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 70
    .local v0, e:Ljava/net/ProtocolException;
    const-string v3, "BaseHelper"

    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v3, Lnet/yostore/aws/api/exception/HttpException;

    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    .end local v0           #e:Ljava/net/ProtocolException;
    .restart local v2       #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_3
    :try_start_2
    new-instance v3, Lnet/yostore/aws/api/exception/BackupPCNotExistException;

    const-string v4, "BaseHelper"

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/BackupPCNotExistException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3

    .line 72
    .end local v2           #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 73
    .local v0, e:Ljava/io/IOException;
    const-string v3, "BaseHelper"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v3, Lnet/yostore/aws/api/exception/HttpException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_4
    :try_start_3
    new-instance v3, Lnet/yostore/aws/api/exception/AAAFreezeException;

    const-string v4, "BaseHelper"

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/AAAFreezeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3

    .line 75
    .end local v2           #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 76
    .local v0, e:Lorg/xml/sax/SAXException;
    const-string v3, "BaseHelper"

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 50
    .end local v0           #e:Lorg/xml/sax/SAXException;
    .restart local v2       #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :sswitch_5
    :try_start_4
    new-instance v3, Lnet/yostore/aws/api/exception/RegisterException;

    const-string v4, "BaseHelper"

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/RegisterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    :sswitch_6
    new-instance v3, Lnet/yostore/aws/api/exception/OTPAuthException;

    const-string v4, "BaseHelper"

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/OTPAuthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :sswitch_7
    new-instance v3, Lnet/yostore/aws/api/exception/OTPLockException;

    const-string v4, "BaseHelper"

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/OTPLockException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :sswitch_8
    new-instance v3, Lnet/yostore/aws/api/exception/CIDCountException;

    const-string v4, "BaseHelper"

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/CIDCountException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    :sswitch_9
    new-instance v3, Lnet/yostore/aws/api/exception/OTPCidException;

    const-string v4, "BaseHelper"

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/OTPCidException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :sswitch_a
    new-instance v3, Lnet/yostore/aws/api/exception/CaptchaException;

    const-string v4, "BaseHelper"

    invoke-direct {v3, v4}, Lnet/yostore/aws/api/exception/CaptchaException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3

    .line 82
    .end local v2           #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0xd6 -> :sswitch_2
        0xda -> :sswitch_3
        0xe2 -> :sswitch_4
        0xea -> :sswitch_5
        0x1f8 -> :sswitch_6
        0x1f9 -> :sswitch_7
        0x1fa -> :sswitch_8
        0x1fb -> :sswitch_9
        0x1fc -> :sswitch_a
    .end sparse-switch
.end method
