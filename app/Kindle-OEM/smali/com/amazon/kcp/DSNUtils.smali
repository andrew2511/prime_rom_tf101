.class public Lcom/amazon/kcp/DSNUtils;
.super Ljava/lang/Object;
.source "DSNUtils.java"


# static fields
.field private static final EID_GET_KEY:Ljava/lang/String; = "eid"

.field private static final EID_SECRET_KEY:Ljava/lang/String; = "some secret keya.("


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static addEncryptedDSNToURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 35
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, dsn:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p0

    .line 40
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "eid"

    invoke-static {v0}, Lcom/amazon/kcp/DSNUtils;->encryptDSN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/amazon/kcp/util/Utils;->addGetParamaterToURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static encryptDSN(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "dsn"

    .prologue
    .line 52
    :try_start_0
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 53
    .local v0, dsnBytes:[B
    const-string v5, "some secret keya.("

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 54
    .local v3, skBytes:[B
    const/4 v4, 0x0

    .line 55
    .local v4, skIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 57
    aget-byte v5, v0, v2

    aget-byte v6, v3, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 58
    add-int/lit8 v5, v4, 0x1

    array-length v6, v3

    rem-int v4, v5, v6

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 63
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v5}, Lcom/mobipocket/common/util/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 65
    .end local v0           #dsnBytes:[B
    .end local v2           #i:I
    .end local v3           #skBytes:[B
    .end local v4           #skIndex:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 67
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected exception"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
