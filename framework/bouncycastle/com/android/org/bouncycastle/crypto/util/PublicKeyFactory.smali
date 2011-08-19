.class public Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;
.super Ljava/lang/Object;
.source "PublicKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 7
    .parameter "keyInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 102
    .local v0, algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 105
    :cond_1c
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;

    .end local v0           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 107
    .local v0, pubKey:Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;
    new-instance p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .end local v0           #pubKey:Lcom/android/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;
    invoke-direct {p0, v1, v2, v0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 197
    :goto_35
    return-object p0

    .line 109
    .local v0, algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local p0
    :cond_36
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 112
    :cond_4e
    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .end local v0           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 113
    .local v2, params:Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 115
    .local p0, derY:Lcom/android/org/bouncycastle/asn1/DERInteger;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v0

    .line 116
    .local v0, lVal:Ljava/math/BigInteger;
    if-nez v0, :cond_84

    const/4 v0, 0x0

    move v1, v0

    .line 117
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

    .line 119
    .local v0, dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .end local v1           #l:I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    .end local p0           #derY:Lcom/android/org/bouncycastle/asn1/DERInteger;
    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    move-object p0, v1

    goto :goto_35

    .line 116
    .local v0, lVal:Ljava/math/BigInteger;
    .restart local v2       #params:Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    .restart local p0       #derY:Lcom/android/org/bouncycastle/asn1/DERInteger;
    :cond_84
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_6b

    .line 130
    .end local v2           #params:Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    .local v0, algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local p0, keyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :cond_8a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 133
    :cond_a2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .end local v0           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 134
    .local v0, derY:Lcom/android/org/bouncycastle/asn1/DERInteger;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    .end local p0           #keyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    .line 136
    .local p0, de:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    const/4 v1, 0x0

    .line 137
    .local v1, parameters:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    if-eqz p0, :cond_17b

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
    :goto_cc
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .end local v0           #derY:Lcom/android/org/bouncycastle/asn1/DERInteger;
    invoke-direct {v1, v0, p0}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    move-object p0, v1

    goto/16 :goto_35

    .line 145
    .local v0, algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local p0, keyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :cond_d8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .end local v0           #algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 147
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

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
    if-eqz v0, :cond_14c

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
    if-nez v0, :cond_179

    .line 157
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 159
    if-nez v0, :cond_179

    .line 161
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    move-object v5, v0

    .line 172
    .end local v0           #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v5, ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :goto_111
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
    :goto_12a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object p0

    .line 192
    .local p0, bits:Lcom/android/org/bouncycastle/asn1/DERBitString;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object p0

    .line 193
    .local p0, data:[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 195
    .local v1, key:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    .end local p0           #data:[B
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 197
    .local p0, derQ:Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .end local v1           #key:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .end local p0           #derQ:Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object p0, v1

    goto/16 :goto_35

    .line 181
    .end local v0           #dParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .local v1, params:Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .local p0, keyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :cond_14c
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
    goto :goto_12a

    .line 201
    .end local v0           #dParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_171
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #keyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    const-string v0, "algorithm identifier in key not recognised"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .local v0, ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v1, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local p0       #keyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :cond_179
    move-object v5, v0

    .end local v0           #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .restart local v5       #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    goto :goto_111

    .end local v5           #ecP:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v0, derY:Lcom/android/org/bouncycastle/asn1/DERInteger;
    .local v1, parameters:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .local p0, de:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_17b
    move-object p0, v1

    .end local v1           #parameters:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .local p0, parameters:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    goto/16 :goto_cc
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
    .line 84
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static createKey([B)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 2
    .parameter "keyInfoData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method
