.class public Lcom/android/org/bouncycastle/openssl/PEMWriter;
.super Ljava/io/BufferedWriter;
.source "PEMWriter.java"


# instance fields
.field private provider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 52
    const-string v0, "BC"

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 3
    .parameter "out"
    .parameter "provider"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 61
    iput-object p2, p0, Lcom/android/org/bouncycastle/openssl/PEMWriter;->provider:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private writeEncoded([B)V
    .registers 7
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/16 v3, 0x40

    new-array v0, v3, [C

    .line 80
    .local v0, buf:[C
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object p1

    .line 82
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    array-length v3, p1

    if-ge v1, v3, :cond_29

    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, index:I
    :goto_d
    array-length v3, v0

    if-eq v2, v3, :cond_15

    .line 88
    add-int v3, v1, v2

    array-length v4, p1

    if-lt v3, v4, :cond_1f

    .line 95
    :cond_15
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->write([CII)V

    .line 96
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 82
    array-length v3, v0

    add-int/2addr v1, v3

    goto :goto_9

    .line 92
    :cond_1f
    add-int v3, v1, v2

    aget-byte v3, p1, v3

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 98
    .end local v2           #index:I
    :cond_29
    return-void
.end method

.method private writeFooter(Ljava/lang/String;)V
    .registers 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->write(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 323
    return-void
.end method

.method private writeHeader(Ljava/lang/String;)V
    .registers 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->write(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 315
    return-void
.end method

.method private writeHexEncoded([B)V
    .registers 4
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object p1

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v1, p1

    if-eq v0, v1, :cond_11

    .line 71
    aget-byte v1, p1, v0

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->write(I)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 73
    :cond_11
    return-void
.end method


# virtual methods
.method public writeObject(Ljava/lang/Object;)V
    .registers 14
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    instance-of v9, p1, Ljava/security/cert/X509Certificate;

    if-eqz v9, :cond_35

    .line 109
    const-string v5, "CERTIFICATE"

    .line 112
    .local v5, type:Ljava/lang/String;
    :try_start_6
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_b
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_6 .. :try_end_b} :catch_16

    move-result-object v2

    .line 204
    .local v2, encoding:[B
    :goto_c
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->writeHeader(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->writeEncoded([B)V

    .line 206
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->writeFooter(Ljava/lang/String;)V

    .line 207
    .end local v2           #encoding:[B
    .end local v5           #type:Ljava/lang/String;
    :goto_15
    return-void

    .line 114
    .restart local v5       #type:Ljava/lang/String;
    :catch_16
    move-exception v9

    move-object v1, v9

    .line 116
    .local v1, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot encode object: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 119
    .end local v1           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v5           #type:Ljava/lang/String;
    .restart local p1
    :cond_35
    instance-of v9, p1, Ljava/security/cert/X509CRL;

    if-eqz v9, :cond_61

    .line 121
    const-string v5, "X509 CRL"

    .line 124
    .restart local v5       #type:Ljava/lang/String;
    :try_start_3b
    check-cast p1, Ljava/security/cert/X509CRL;

    .end local p1
    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getEncoded()[B
    :try_end_40
    .catch Ljava/security/cert/CRLException; {:try_start_3b .. :try_end_40} :catch_42

    move-result-object v2

    .restart local v2       #encoding:[B
    goto :goto_c

    .line 126
    .end local v2           #encoding:[B
    :catch_42
    move-exception v9

    move-object v1, v9

    .line 128
    .local v1, e:Ljava/security/cert/CRLException;
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot encode object: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/security/cert/CRLException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 131
    .end local v1           #e:Ljava/security/cert/CRLException;
    .end local v5           #type:Ljava/lang/String;
    .restart local p1
    :cond_61
    instance-of v9, p1, Ljava/security/KeyPair;

    if-eqz v9, :cond_6f

    .line 133
    check-cast p1, Ljava/security/KeyPair;

    .end local p1
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    goto :goto_15

    .line 136
    .restart local p1
    :cond_6f
    instance-of v9, p1, Ljava/security/PrivateKey;

    if-eqz v9, :cond_129

    .line 138
    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-object v0, p1

    check-cast v0, Ljava/security/Key;

    move-object v9, v0

    invoke-interface {v9}, Ljava/security/Key;->getEncoded()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v3, v9}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 141
    .local v3, info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    instance-of v9, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v9, :cond_96

    .line 143
    const-string v5, "RSA PRIVATE KEY"

    .line 145
    .restart local v5       #type:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v2

    .restart local v2       #encoding:[B
    goto/16 :goto_c

    .line 147
    .end local v2           #encoding:[B
    .end local v5           #type:Ljava/lang/String;
    :cond_96
    instance-of v9, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v9, :cond_107

    .line 149
    const-string v5, "DSA PRIVATE KEY"

    .line 151
    .restart local v5       #type:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v4

    .line 152
    .local v4, p:Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 154
    .local v6, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 155
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 156
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 157
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 159
    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    .end local p1
    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v7

    .line 160
    .local v7, x:Ljava/math/BigInteger;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 162
    .local v8, y:Ljava/math/BigInteger;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v9, v8}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 163
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v9, v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 165
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v6}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v2

    .line 166
    .restart local v2       #encoding:[B
    goto/16 :goto_c

    .line 167
    .end local v2           #encoding:[B
    .end local v4           #p:Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v7           #x:Ljava/math/BigInteger;
    .end local v8           #y:Ljava/math/BigInteger;
    .restart local p1
    :cond_107
    check-cast p1, Ljava/security/PrivateKey;

    .end local p1
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ECDSA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_121

    .line 169
    const-string v5, "EC PRIVATE KEY"

    .line 171
    .restart local v5       #type:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v2

    .restart local v2       #encoding:[B
    goto/16 :goto_c

    .line 175
    .end local v2           #encoding:[B
    .end local v5           #type:Ljava/lang/String;
    :cond_121
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Cannot identify private key"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 178
    .end local v3           #info:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .restart local p1
    :cond_129
    instance-of v9, p1, Ljava/security/PublicKey;

    if-eqz v9, :cond_137

    .line 180
    const-string v5, "PUBLIC KEY"

    .line 182
    .restart local v5       #type:Ljava/lang/String;
    check-cast p1, Ljava/security/PublicKey;

    .end local p1
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .restart local v2       #encoding:[B
    goto/16 :goto_c

    .line 184
    .end local v2           #encoding:[B
    .end local v5           #type:Ljava/lang/String;
    .restart local p1
    :cond_137
    instance-of v9, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v9, :cond_145

    .line 186
    const-string v5, "ATTRIBUTE CERTIFICATE"

    .line 187
    .restart local v5       #type:Ljava/lang/String;
    check-cast p1, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;

    .end local p1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v2

    .restart local v2       #encoding:[B
    goto/16 :goto_c

    .line 189
    .end local v2           #encoding:[B
    .end local v5           #type:Ljava/lang/String;
    .restart local p1
    :cond_145
    instance-of v9, p1, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;

    if-eqz v9, :cond_153

    .line 191
    const-string v5, "CERTIFICATE REQUEST"

    .line 192
    .restart local v5       #type:Ljava/lang/String;
    check-cast p1, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;

    .end local p1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object v2

    .restart local v2       #encoding:[B
    goto/16 :goto_c

    .line 194
    .end local v2           #encoding:[B
    .end local v5           #type:Ljava/lang/String;
    .restart local p1
    :cond_153
    instance-of v9, p1, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

    if-eqz v9, :cond_161

    .line 196
    const-string v5, "PKCS7"

    .line 197
    .restart local v5       #type:Ljava/lang/String;
    check-cast p1, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v2

    .restart local v2       #encoding:[B
    goto/16 :goto_c

    .line 201
    .end local v2           #encoding:[B
    .end local v5           #type:Ljava/lang/String;
    .restart local p1
    :cond_161
    new-instance v9, Ljava/io/IOException;

    const-string v10, "unknown object passed - can\'t encode."

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public writeObject(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;)V
    .registers 26
    .parameter "obj"
    .parameter "algorithm"
    .parameter "password"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/KeyPair;

    move v4, v0

    if-eqz v4, :cond_14

    .line 218
    check-cast p1, Ljava/security/KeyPair;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    .line 307
    :goto_13
    return-void

    .line 222
    .restart local p1
    :cond_14
    const/16 v17, 0x0

    .line 223
    .local v17, type:Ljava/lang/String;
    const/4 v6, 0x0

    .line 225
    .local v6, keyData:[B
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    move v4, v0

    if-eqz v4, :cond_73

    .line 227
    const-string v17, "RSA PRIVATE KEY"

    .line 229
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    move-object v14, v0

    .line 231
    .local v14, k:Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    invoke-interface {v14}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v14}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v14}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v6

    .end local v6           #keyData:[B
    invoke-interface {v14}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v14}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v14}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface {v14}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-interface {v14}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 242
    .local v3, keyStruct:Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getEncoded()[B

    move-result-object v6

    .line 274
    .end local v3           #keyStruct:Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
    .end local v14           #k:Ljava/security/interfaces/RSAPrivateCrtKey;
    .restart local v6       #keyData:[B
    :cond_4e
    :goto_4e
    if-eqz v17, :cond_52

    if-nez v6, :cond_136

    .line 277
    :cond_52
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object type not supported: "

    .end local v6           #keyData:[B
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    .restart local v6       #keyData:[B
    :cond_73
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/interfaces/DSAPrivateKey;

    move v4, v0

    if-eqz v4, :cond_101

    .line 246
    const-string v17, "DSA PRIVATE KEY"

    .line 248
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    move-object v14, v0

    .line 249
    .local v14, k:Ljava/security/interfaces/DSAPrivateKey;
    invoke-interface {v14}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v15

    .line 250
    .local v15, p:Ljava/security/interfaces/DSAParams;
    new-instance v18, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 252
    .local v18, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 253
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-interface {v15}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 254
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-interface {v15}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 255
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-interface {v15}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 257
    invoke-interface {v14}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v19

    .line 258
    .local v19, x:Ljava/math/BigInteger;
    invoke-interface {v15}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v15}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v5

    move-object v0, v4

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    .line 260
    .local v20, y:Ljava/math/BigInteger;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 261
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 263
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v6

    .line 264
    goto/16 :goto_4e

    .line 265
    .end local v14           #k:Ljava/security/interfaces/DSAPrivateKey;
    .end local v15           #p:Ljava/security/interfaces/DSAParams;
    .end local v18           #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v19           #x:Ljava/math/BigInteger;
    .end local v20           #y:Ljava/math/BigInteger;
    :cond_101
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/PrivateKey;

    move v4, v0

    if-eqz v4, :cond_4e

    const-string v4, "ECDSA"

    move-object/from16 v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    move-object v3, v0

    invoke-interface {v3}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 267
    const-string v17, "EC PRIVATE KEY"

    .line 269
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    move-object v3, v0

    invoke-interface {v3}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v16

    .line 271
    .local v16, privInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v6

    goto/16 :goto_4e

    .line 281
    .end local v16           #privInfo:Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_136
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, dekAlgName:Ljava/lang/String;
    const-string v4, "DESEDE"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_144

    .line 286
    const-string v8, "DES-EDE3-CBC"

    .line 289
    :cond_144
    const-string v4, "AES-"

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1af

    const/16 v4, 0x10

    move v13, v4

    .line 291
    .local v13, ivLength:I
    :goto_14f
    new-array v9, v13, [B

    .line 292
    .local v9, iv:[B
    move-object/from16 v0, p4

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 294
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/openssl/PEMWriter;->provider:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v7, p3

    invoke-static/range {v4 .. v9}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->crypt(ZLjava/lang/String;[B[CLjava/lang/String;[B)[B

    move-result-object v12

    .line 298
    .local v12, encData:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->writeHeader(Ljava/lang/String;)V

    .line 299
    const-string v4, "Proc-Type: 4,ENCRYPTED"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->write(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEK-Info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->write(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->writeHexEncoded([B)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 305
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->writeEncoded([B)V

    .line 306
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->writeFooter(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 289
    .end local v9           #iv:[B
    .end local v12           #encData:[B
    .end local v13           #ivLength:I
    :cond_1af
    const/16 v4, 0x8

    move v13, v4

    goto :goto_14f
.end method
