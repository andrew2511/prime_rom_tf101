.class public Lcom/android/org/bouncycastle/crypto/util/PrivateKeyFactory;
.super Ljava/lang/Object;
.source "PrivateKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 10
    .parameter "keyInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 97
    .local v0, algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 99
    new-instance v8, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v8, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 101
    .local v8, keyStructure:Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .end local v0           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrime1()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrime2()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getExponent1()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getExponent2()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    .end local v8           #keyStructure:Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object p0, v0

    .line 193
    :goto_41
    return-object p0

    .line 111
    .restart local v0       #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p0
    :cond_42
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 113
    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .end local v0           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 114
    .local v2, params:Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 116
    .local p0, derX:Lcom/android/org/bouncycastle/asn1/DERInteger;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v0

    .line 117
    .local v0, lVal:Ljava/math/BigInteger;
    if-nez v0, :cond_84

    const/4 v0, 0x0

    move v1, v0

    .line 118
    .end local v0           #lVal:Ljava/math/BigInteger;
    .local v1, l:I
    :goto_6b
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v2

    .end local v2           #params:Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 120
    .local v0, dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .end local v1           #l:I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    .end local p0           #derX:Lcom/android/org/bouncycastle/asn1/DERInteger;
    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    move-object p0, v1

    goto :goto_41

    .line 117
    .local v0, lVal:Ljava/math/BigInteger;
    .restart local v2       #params:Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    .restart local p0       #derX:Lcom/android/org/bouncycastle/asn1/DERInteger;
    :cond_84
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_6b

    .line 131
    .end local v2           #params:Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    .local v0, algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local p0, keyInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_8a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 133
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .end local v0           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 134
    .local v0, derX:Lcom/android/org/bouncycastle/asn1/DERInteger;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    .end local p0           #keyInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    .line 136
    .local p0, de:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    const/4 v1, 0x0

    .line 137
    .local v1, parameters:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    if-eqz p0, :cond_163

    .line 139
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0           #de:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v1

    .line 140
    .local v1, params:Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .end local v1           #params:Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    invoke-direct {p0, v2, v3, v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 143
    .local p0, parameters:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    :goto_c0
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .end local v0           #derX:Lcom/android/org/bouncycastle/asn1/DERInteger;
    invoke-direct {v1, v0, p0}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    move-object p0, v1

    goto/16 :goto_41

    .line 145
    .local v0, algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local p0, keyInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_cc
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .end local v0           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 147
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    .line 148
    .local v1, params:Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    const/4 v0, 0x0

    .line 150
    .local v0, dParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v0

    .end local v0           #dParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    if-eqz v0, :cond_134

    .line 152
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    .end local v1           #params:Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 153
    .local v1, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 155
    .local v0, ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_161

    .line 157
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 159
    if-nez v0, :cond_161

    .line 161
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    move-object v5, v0

    .line 172
    .end local v0           #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v5, ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :goto_105
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .end local v1           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v5

    .end local v5           #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 191
    .local v0, dParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :goto_11e
    new-instance v1, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0           #keyInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 193
    .local v1, ec:Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    new-instance p0, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getKey()Ljava/math/BigInteger;

    move-result-object v1

    .end local v1           #ec:Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    goto/16 :goto_41

    .line 181
    .end local v0           #dParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .local v1, params:Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .restart local p0       #keyInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_134
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 183
    .restart local v5       #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .end local v1           #params:Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v5

    .end local v5           #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .restart local v0       #dParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_11e

    .line 197
    .end local v0           #dParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_159
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #keyInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    const-string v0, "algorithm identifier in key not recognised"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .local v0, ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v1, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local p0       #keyInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_161
    move-object v5, v0

    .end local v0           #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .restart local v5       #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    goto :goto_105

    .end local v5           #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v0, derX:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .local v1, parameters:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .local p0, de:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_163
    move-object p0, v1

    .end local v1           #parameters:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .local p0, parameters:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    goto/16 :goto_c0
.end method

.method public static createKey(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 2
    .parameter "inStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static createKey([B)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 2
    .parameter "privateKeyInfoData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method
