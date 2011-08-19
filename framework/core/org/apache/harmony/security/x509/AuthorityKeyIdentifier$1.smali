.class final Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "AuthorityKeyIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
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
    .line 110
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;->setOptional(I)V

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;->setOptional(I)V

    .line 114
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;->setOptional(I)V

    .line 115
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 120
    .local v3, values:[Ljava/lang/Object;
    const/4 v4, 0x2

    aget-object p0, v3, v4

    check-cast p0, [B

    move-object v0, p0

    check-cast v0, [B

    move-object v2, v0

    .line 121
    .local v2, enc:[B
    const/4 v1, 0x0

    .line 122
    .local v1, authorityCertSerialNumber:Ljava/math/BigInteger;
    if-eqz v2, :cond_19

    .line 123
    new-instance v1, Ljava/math/BigInteger;

    .end local v1           #authorityCertSerialNumber:Ljava/math/BigInteger;
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 126
    .restart local v1       #authorityCertSerialNumber:Ljava/math/BigInteger;
    :cond_19
    new-instance v5, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    const/4 v4, 0x0

    aget-object p0, v3, v4

    check-cast p0, [B

    check-cast p0, [B

    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-direct {v5, p0, v4, v1}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;-><init>([BLorg/apache/harmony/security/x509/GeneralNames;Ljava/math/BigInteger;)V

    return-object v5
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 132
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    move-object v1, v0

    .line 134
    .local v1, akid:Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->keyIdentifier:[B
    invoke-static {v1}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->access$000(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 135
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertIssuer:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->access$100(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v3

    aput-object v3, p2, v2

    .line 136
    #getter for: Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->access$200(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 137
    const/4 v2, 0x2

    #getter for: Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->access$200(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 139
    :cond_23
    return-void
.end method
