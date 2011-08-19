.class public Lcom/amazon/kcp/library/models/internal/CTPZBookBuilder;
.super Ljava/lang/Object;
.source "CTPZBookBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/amazon/system/io/IFileInputStream;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/security/Security;J)Lcom/amazon/topaz/TPZBook;
    .locals 8
    .parameter "is"
    .parameter "inflaterFactory"
    .parameter "deviceInfo"
    .parameter "memorySize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/DRMException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v7, Lcom/amazon/topaz/TPZBook;

    invoke-direct {v7, p0, p1, p3, p4}, Lcom/amazon/topaz/TPZBook;-><init>(Lcom/amazon/system/io/IFileInputStream;Lcom/amazon/system/io/InflaterFactory;J)V

    .line 87
    .local v7, book:Lcom/amazon/topaz/TPZBook;
    const-string p0, "keys"

    .end local p0
    invoke-virtual {v7, p0}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 89
    .local p0, TPkeys:Ljava/lang/String;
    invoke-static {p0}, Lcom/amazon/kcp/library/models/internal/CTPZBookBuilder;->getTamperProofKeysList(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 90
    .local p1, keyList:Ljava/util/Vector;
    invoke-static {p1, v7}, Lcom/amazon/kcp/library/models/internal/CTPZBookBuilder;->getTamperProofValues(Ljava/util/Vector;Lcom/amazon/topaz/TPZBook;)[[B

    move-result-object v6

    .line 92
    .local v6, TPvalues:[[B
    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getSHA1MessageDigest()Lcom/amazon/system/security/IMessageDigest;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getBase64()Lcom/amazon/system/security/IBase64;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getPID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/amazon/system/security/Security;->getAccountSecrets()[Ljava/lang/String;

    move-result-object v4

    const-string p1, "UTF-8"

    .end local p1           #keyList:Ljava/util/Vector;
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/amazon/system/security/Security;->getPids(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[B[[B)[Ljava/lang/String;

    move-result-object p1

    .line 94
    .local p1, pids:[Ljava/lang/String;
    const/4 p2, 0x0

    .line 95
    .local p2, success:Z
    const/4 p0, 0x0

    .line 96
    .end local p3
    .local p0, currentPid:I
    :goto_0
    if-nez p2, :cond_0

    array-length p3, p1

    if-ge p0, p3, :cond_0

    .line 98
    aget-object p2, p1, p0

    .end local p2           #success:Z
    const-string p3, "UTF-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/amazon/topaz/TPZBook;->setPID([B)Z

    move-result p2

    .line 99
    .restart local p2       #success:Z
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    if-nez p2, :cond_1

    .line 104
    new-instance p0, Lcom/amazon/topaz/exception/DRMException;

    .end local p0           #currentPid:I
    const-string p1, "Unable to open book. due to DRM unvalid !"

    .end local p1           #pids:[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/amazon/topaz/exception/DRMException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    .restart local p0       #currentPid:I
    .restart local p1       #pids:[Ljava/lang/String;
    :cond_1
    return-object v7
.end method

.method private static getTamperProofKeysList(Ljava/lang/String;)Ljava/util/Vector;
    .locals 7
    .parameter "keys"

    .prologue
    const/16 v6, 0x2c

    .line 26
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 27
    .local v1, index:I
    const/4 v0, 0x0

    .line 28
    .local v0, beginIndex:I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 30
    .local v3, keysList:Ljava/util/Vector;
    :goto_0
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 32
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 34
    add-int/lit8 v0, v1, 0x1

    .line 35
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 36
    goto :goto_0

    .line 38
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, lastKey:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 41
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 44
    :cond_1
    return-object v3
.end method

.method private static getTamperProofValues(Ljava/util/Vector;Lcom/amazon/topaz/TPZBook;)[[B
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [[B

    .line 57
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 59
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    aput-object v0, v1, v2

    goto :goto_1

    .line 70
    :cond_0
    return-object v1
.end method
