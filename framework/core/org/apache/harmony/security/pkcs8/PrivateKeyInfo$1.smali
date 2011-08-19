.class final Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PrivateKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
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
    .line 125
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 128
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo$1;->setOptional(I)V

    .line 129
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 11
    .parameter "in"

    .prologue
    .line 133
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 135
    .local v8, values:[Ljava/lang/Object;
    new-instance v1, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v8, v3

    check-cast v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const/4 v4, 0x2

    aget-object p0, v8, v4

    check-cast p0, [B

    move-object v0, p0

    check-cast v0, [B

    move-object v4, v0

    const/4 v5, 0x3

    aget-object v5, v8, v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;[BLorg/apache/harmony/security/pkcs8/PrivateKeyInfo$1;)V

    return-object v1
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 142
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;

    move-object v1, v0

    .line 144
    .local v1, privateKeyInfo:Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->version:I
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->access$100(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)I

    move-result v3

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v2

    .line 145
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKeyAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->access$200(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v3

    aput-object v3, p2, v2

    .line 146
    const/4 v2, 0x2

    #getter for: Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKey:[B
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->access$300(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 147
    const/4 v2, 0x3

    #getter for: Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->attributes:Ljava/util/List;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->access$400(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)Ljava/util/List;

    move-result-object v3

    aput-object v3, p2, v2

    .line 148
    return-void
.end method
