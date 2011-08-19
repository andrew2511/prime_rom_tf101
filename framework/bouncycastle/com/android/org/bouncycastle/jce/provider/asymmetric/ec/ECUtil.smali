.class public Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;
.super Ljava/lang/Object;
.source "ECUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertMidTerms([I)[I
    .registers 7
    .parameter "k"

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 44
    new-array v0, v2, [I

    .line 46
    .local v0, res:[I
    array-length v1, p0

    if-ne v1, v3, :cond_e

    .line 48
    aget v1, p0, v5

    aput v1, v0, v5

    .line 101
    :goto_d
    return-object v0

    .line 52
    :cond_e
    array-length v1, p0

    if-eq v1, v2, :cond_19

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only Trinomials and pentanomials supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_19
    aget v1, p0, v5

    aget v2, p0, v3

    if-ge v1, v2, :cond_41

    aget v1, p0, v5

    aget v2, p0, v4

    if-ge v1, v2, :cond_41

    .line 59
    aget v1, p0, v5

    aput v1, v0, v5

    .line 60
    aget v1, p0, v3

    aget v2, p0, v4

    if-ge v1, v2, :cond_38

    .line 62
    aget v1, p0, v3

    aput v1, v0, v3

    .line 63
    aget v1, p0, v4

    aput v1, v0, v4

    goto :goto_d

    .line 67
    :cond_38
    aget v1, p0, v4

    aput v1, v0, v3

    .line 68
    aget v1, p0, v3

    aput v1, v0, v4

    goto :goto_d

    .line 71
    :cond_41
    aget v1, p0, v3

    aget v2, p0, v4

    if-ge v1, v2, :cond_63

    .line 73
    aget v1, p0, v3

    aput v1, v0, v5

    .line 74
    aget v1, p0, v5

    aget v2, p0, v4

    if-ge v1, v2, :cond_5a

    .line 76
    aget v1, p0, v5

    aput v1, v0, v3

    .line 77
    aget v1, p0, v4

    aput v1, v0, v4

    goto :goto_d

    .line 81
    :cond_5a
    aget v1, p0, v4

    aput v1, v0, v3

    .line 82
    aget v1, p0, v5

    aput v1, v0, v4

    goto :goto_d

    .line 87
    :cond_63
    aget v1, p0, v4

    aput v1, v0, v5

    .line 88
    aget v1, p0, v5

    aget v2, p0, v3

    if-ge v1, v2, :cond_76

    .line 90
    aget v1, p0, v5

    aput v1, v0, v3

    .line 91
    aget v1, p0, v3

    aput v1, v0, v4

    goto :goto_d

    .line 95
    :cond_76
    aget v1, p0, v3

    aput v1, v0, v3

    .line 96
    aget v1, p0, v5

    aput v1, v0, v4

    goto :goto_d
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 12
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 144
    instance-of v1, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    if-eqz v1, :cond_35

    .line 146
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    move-object v7, v0

    .line 147
    .local v7, k:Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
    invoke-interface {v7}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v8

    .line 149
    .local v8, s:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v8, :cond_12

    .line 151
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v8

    .line 154
    :cond_12
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-interface {v7}, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v10

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v9, v10, v1}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v9

    .line 159
    .end local v7           #k:Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
    .end local v8           #s:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_35
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "can\'t identify EC private key."

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 13
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 108
    instance-of v1, p0, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    if-eqz v1, :cond_5d

    .line 110
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    move-object v7, v0

    .line 111
    .local v7, k:Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    invoke-interface {v7}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v9

    .line 113
    .local v9, s:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v9, :cond_39

    .line 115
    invoke-static {}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v9

    .line 117
    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    .end local v7           #k:Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v10, v11, v1}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v1, v10

    .line 132
    :goto_38
    return-object v1

    .line 123
    .restart local v7       #k:Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    :cond_39
    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v7}, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v10, v11, v1}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v1, v10

    goto :goto_38

    .line 128
    .end local v7           #k:Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;
    .end local v9           #s:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_5d
    instance-of v1, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v1, :cond_99

    .line 130
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    move-object v8, v0

    .line 131
    .local v8, pubKey:Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v8}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v9

    .line 132
    .restart local v9       #s:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v8}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-interface {v8}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v10, v11, v1}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object v1, v10

    goto :goto_38

    .line 137
    .end local v8           #pubKey:Ljava/security/interfaces/ECPublicKey;
    .end local v9           #s:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_99
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "cannot identify EC public key."

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCurveName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .registers 2
    .parameter "oid"

    .prologue
    .line 215
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_10

    .line 219
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 220
    if-nez v0, :cond_10

    .line 222
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_10
    return-object v0
.end method

.method public static getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 2
    .parameter "oid"

    .prologue
    .line 192
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 194
    .local v0, params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_10

    .line 196
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 197
    if-nez v0, :cond_10

    .line 199
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 209
    :cond_10
    return-object v0
.end method

.method public static getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2
    .parameter "name"

    .prologue
    .line 165
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 167
    .local v0, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    if-nez v0, :cond_10

    .line 169
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 170
    if-nez v0, :cond_10

    .line 172
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 186
    :cond_10
    return-object v0
.end method
