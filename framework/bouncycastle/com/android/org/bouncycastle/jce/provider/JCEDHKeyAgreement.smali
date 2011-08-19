.class public Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "JCEDHKeyAgreement.java"


# static fields
.field private static final algorithms:Ljava/util/Hashtable;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private random:Ljava/security/SecureRandom;

.field private result:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 36
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    sput-object v3, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    .line 41
    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 42
    .local v2, i64:Ljava/lang/Integer;
    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 43
    .local v1, i192:Ljava/lang/Integer;
    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 46
    .local v0, i128:Ljava/lang/Integer;
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    const-string v4, "DES"

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    const-string v4, "DESEDE"

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    const-string v4, "BLOWFISH"

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    return-void
.end method

.method private bigIntToBytes(Ljava/math/BigInteger;)[B
    .registers 7
    .parameter "r"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 56
    .local v1, tmp:[B
    aget-byte v2, v1, v3

    if-nez v2, :cond_14

    .line 58
    array-length v2, v1

    sub-int/2addr v2, v4

    new-array v0, v2, [B

    .line 60
    .local v0, ntmp:[B
    array-length v2, v0

    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    .line 64
    .end local v0           #ntmp:[B
    :goto_13
    return-object v2

    :cond_14
    move-object v2, v1

    goto :goto_13
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 8
    .parameter "key"
    .parameter "lastPhase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v2, :cond_c

    .line 74
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Diffie-Hellman not initialised."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_c
    instance-of v2, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-nez v2, :cond_18

    .line 79
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "DHKeyAgreement doPhase requires DHPublicKey"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_18
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    move-object v1, v0

    .line 83
    .local v1, pubKey:Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 85
    :cond_3c
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "DHPublicKey not for this KeyAgreement!"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_44
    if-eqz p2, :cond_58

    .line 90
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .end local p1
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    .line 91
    const/4 v2, 0x0

    .line 98
    :goto_57
    return-object v2

    .line 95
    .restart local p1
    :cond_58
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .end local p1
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    .line 98
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    goto :goto_57
.end method

.method protected engineGenerateSecret([BI)I
    .registers 6
    .parameter "sharedSecret"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v1, :cond_c

    .line 119
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Diffie-Hellman not initialised."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_c
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 124
    .local v0, secret:[B
    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 126
    new-instance v1, Ljavax/crypto/ShortBufferException;

    const-string v2, "DHKeyAgreement - buffer too short"

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_1f
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    array-length v1, v0

    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 8
    .parameter "algorithm"

    .prologue
    const/4 v5, 0x0

    .line 137
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v4, :cond_d

    .line 139
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Diffie-Hellman not initialised."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    :cond_d
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, algKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v3

    .line 145
    .local v3, res:[B
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 147
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 149
    .local v2, length:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    new-array v1, v4, [B

    .line 150
    .local v1, key:[B
    array-length v4, v1

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    const-string v4, "DES"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 154
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 157
    :cond_3e
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 160
    .end local v1           #key:[B
    .end local v2           #length:Ljava/lang/Integer;
    :goto_43
    return-object v4

    :cond_44
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_43
.end method

.method protected engineGenerateSecret()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    if-nez v0, :cond_c

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Diffie-Hellman not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_c
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 202
    instance-of v2, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-nez v2, :cond_c

    .line 204
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "DHKeyAgreement requires DHPrivateKey"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_c
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    move-object v1, v0

    .line 209
    .local v1, privKey:Ljavax/crypto/interfaces/DHPrivateKey;
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->random:Ljava/security/SecureRandom;

    .line 210
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    .line 211
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    .line 212
    invoke-interface {v1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    .line 213
    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 9
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 169
    instance-of v3, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-nez v3, :cond_c

    .line 171
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "DHKeyAgreement requires DHPrivateKey for initialisation"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    :cond_c
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    move-object v2, v0

    .line 175
    .local v2, privKey:Ljavax/crypto/interfaces/DHPrivateKey;
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->random:Ljava/security/SecureRandom;

    .line 177
    if-eqz p2, :cond_39

    .line 179
    instance-of v3, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v3, :cond_20

    .line 181
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "DHKeyAgreement only accepts DHParameterSpec"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_20
    move-object v0, p2

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    move-object v1, v0

    .line 185
    .local v1, p:Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    .line 186
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    .line 194
    .end local v1           #p:Ljavax/crypto/spec/DHParameterSpec;
    :goto_30
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->result:Ljava/math/BigInteger;

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->x:Ljava/math/BigInteger;

    .line 195
    return-void

    .line 190
    :cond_39
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->p:Ljava/math/BigInteger;

    .line 191
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEDHKeyAgreement;->g:Ljava/math/BigInteger;

    goto :goto_30
.end method
