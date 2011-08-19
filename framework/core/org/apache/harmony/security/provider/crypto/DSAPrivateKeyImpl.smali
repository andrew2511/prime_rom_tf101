.class public Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;
.super Lorg/apache/harmony/security/PrivateKeyImpl;
.source "DSAPrivateKeyImpl.java"

# interfaces
.implements Ljava/security/interfaces/DSAPrivateKey;


# static fields
.field private static final serialVersionUID:J = -0x41736807029d1541L


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private transient params:Ljava/security/interfaces/DSAParams;

.field private q:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/DSAPrivateKeySpec;)V
    .registers 9
    .parameter "keySpec"

    .prologue
    .line 66
    const-string v3, "DSA"

    invoke-direct {p0, v3}, Lorg/apache/harmony/security/PrivateKeyImpl;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->g:Ljava/math/BigInteger;

    .line 71
    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->p:Ljava/math/BigInteger;

    .line 72
    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->q:Ljava/math/BigInteger;

    .line 74
    new-instance v2, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;

    iget-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->p:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->q:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->g:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;-><init>([B[B[B)V

    .line 77
    .local v2, threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    new-instance v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const-string v3, "DSA"

    invoke-static {v3}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2OID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 80
    .local v0, ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->x:Ljava/math/BigInteger;

    .line 82
    new-instance v1, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;

    const/4 v3, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->x:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Integer;->encode(Ljava/lang/Object;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v3, v0, v4, v5}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;)V

    .line 85
    .local v1, pki:Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->getEncoded()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->setEncoding([B)V

    .line 87
    new-instance v3, Ljava/security/spec/DSAParameterSpec;

    iget-object v4, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->p:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->q:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->g:Ljava/math/BigInteger;

    invoke-direct {v3, v4, v5, v6}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V
    .registers 13
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 100
    const-string v7, "DSA"

    invoke-direct {p0, v7}, Lorg/apache/harmony/security/PrivateKeyImpl;-><init>(Ljava/lang/String;)V

    .line 103
    const/4 v6, 0x0

    .line 107
    .local v6, threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v4

    .line 109
    .local v4, encoding:[B
    const/4 v5, 0x0

    .line 112
    .local v5, privateKeyInfo:Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    :try_start_b
    sget-object v7, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v7, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #privateKeyInfo:Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    check-cast v5, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_74

    .line 119
    .restart local v5       #privateKeyInfo:Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    :try_start_13
    new-instance v8, Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->getPrivateKey()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/apache/harmony/security/asn1/ASN1Integer;->decode([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v8, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->x:Ljava/math/BigInteger;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2a} :catch_8f

    .line 125
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 127
    .local v0, ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    :try_start_2e
    sget-object v7, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    check-cast v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3a} :catch_aa

    .line 132
    .restart local v6       #threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->p:[B

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->p:Ljava/math/BigInteger;

    .line 133
    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->q:[B

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->q:Ljava/math/BigInteger;

    .line 134
    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->g:[B

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->g:Ljava/math/BigInteger;

    .line 135
    new-instance v7, Ljava/security/spec/DSAParameterSpec;

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->p:Ljava/math/BigInteger;

    iget-object v9, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->q:Ljava/math/BigInteger;

    iget-object v10, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->g:Ljava/math/BigInteger;

    invoke-direct {v7, v8, v9, v10}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    .line 136
    invoke-virtual {p0, v4}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->setEncoding([B)V

    .line 141
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, alg:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, algName:Ljava/lang/String;
    if-nez v2, :cond_c5

    move-object v7, v1

    :goto_70
    invoke-virtual {p0, v7}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->setAlgorithm(Ljava/lang/String;)V

    .line 144
    return-void

    .line 114
    .end local v0           #ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .end local v1           #alg:Ljava/lang/String;
    .end local v2           #algName:Ljava/lang/String;
    .end local v5           #privateKeyInfo:Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    :catch_74
    move-exception v7

    move-object v3, v7

    .line 115
    .local v3, e:Ljava/io/IOException;
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to decode keySpec encoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 121
    .end local v3           #e:Ljava/io/IOException;
    .restart local v5       #privateKeyInfo:Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    :catch_8f
    move-exception v7

    move-object v3, v7

    .line 122
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to decode parameters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 129
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    .restart local v0       #ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    :catch_aa
    move-exception v7

    move-object v3, v7

    .line 130
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to decode parameters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #alg:Ljava/lang/String;
    .restart local v2       #algName:Ljava/lang/String;
    .restart local v6       #threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    :cond_c5
    move-object v7, v2

    .line 143
    goto :goto_70
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 156
    new-instance v0, Ljava/security/spec/DSAParameterSpec;

    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->p:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->g:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    .line 157
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/interfaces/DSAParams;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->x:Ljava/math/BigInteger;

    return-object v0
.end method
