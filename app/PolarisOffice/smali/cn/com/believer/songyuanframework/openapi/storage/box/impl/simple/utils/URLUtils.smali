.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/URLUtils;
.super Ljava/lang/Object;
.source "URLUtils.java"


# static fields
.field private static iso88591Codec:Lorg/apache/commons/codec/net/URLCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lorg/apache/commons/codec/net/URLCodec;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/net/URLCodec;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/URLUtils;->iso88591Codec:Lorg/apache/commons/codec/net/URLCodec;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 30
    .local v1, output:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/URLUtils;->iso88591Codec:Lorg/apache/commons/codec/net/URLCodec;

    invoke-virtual {v2, p0}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 35
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 33
    .local v0, e:Lorg/apache/commons/codec/EncoderException;
    invoke-virtual {v0}, Lorg/apache/commons/codec/EncoderException;->printStackTrace()V

    goto :goto_0
.end method
