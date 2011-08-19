.class final Lorg/apache/harmony/security/pkcs7/SignerInfo$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SignerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/SignerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 3
    .parameter "x0"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 181
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/SignerInfo$2;->setOptional(I)V

    .line 182
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/SignerInfo$2;->setOptional(I)V

    .line 183
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 12
    .parameter "in"

    .prologue
    .line 205
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    .line 206
    .local v9, values:[Ljava/lang/Object;
    new-instance v1, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    aget-object p0, v9, v3

    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    const/4 v4, 0x2

    aget-object v4, v9, v4

    check-cast v4, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const/4 v5, 0x3

    aget-object v5, v9, v5

    check-cast v5, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    const/4 v6, 0x4

    aget-object v6, v9, v6

    check-cast v6, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const/4 v7, 0x5

    aget-object p0, v9, v7

    check-cast p0, [B

    move-object v0, p0

    check-cast v0, [B

    move-object v7, v0

    const/4 v8, 0x6

    aget-object v8, v9, v8

    check-cast v8, Ljava/util/List;

    invoke-direct/range {v1 .. v8}, Lorg/apache/harmony/security/pkcs7/SignerInfo;-><init>(I[Ljava/lang/Object;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;)V

    return-object v1
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 12
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 186
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    move-object v2, v0

    .line 187
    .local v2, si:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    new-array v3, v3, [B

    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->version:I
    invoke-static {v2}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$000(Lorg/apache/harmony/security/pkcs7/SignerInfo;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    aput-object v3, p2, v5

    .line 189
    const/4 v3, 0x1

    const/4 v4, 0x2

    :try_start_14
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/harmony/security/x501/Name;

    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->issuer:Ljavax/security/auth/x500/X500Principal;
    invoke-static {v2}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$100(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->serialNumber:Ljava/math/BigInteger;
    invoke-static {v2}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$200(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, p2, v3
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_33} :catch_56

    .line 197
    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v2}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$300(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v3

    aput-object v3, p2, v8

    .line 198
    const/4 v3, 0x3

    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->authenticatedAttributes:Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;
    invoke-static {v2}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$400(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    move-result-object v4

    aput-object v4, p2, v3

    .line 199
    const/4 v3, 0x4

    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestEncryptionAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v2}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$500(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v4

    aput-object v4, p2, v3

    .line 200
    const/4 v3, 0x5

    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->encryptedDigest:[B
    invoke-static {v2}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$600(Lorg/apache/harmony/security/pkcs7/SignerInfo;)[B

    move-result-object v4

    aput-object v4, p2, v3

    .line 201
    const/4 v3, 0x6

    #getter for: Lorg/apache/harmony/security/pkcs7/SignerInfo;->unauthenticatedAttributes:Ljava/util/List;
    invoke-static {v2}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->access$700(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Ljava/util/List;

    move-result-object v4

    aput-object v4, p2, v3

    .line 202
    return-void

    .line 191
    :catch_56
    move-exception v3

    move-object v1, v3

    .line 195
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to encode issuer name"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
