.class public Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;
.super Ljava/security/Signature;
.source "SHA1withDSA_SignatureImpl.java"


# instance fields
.field private dsaKey:Ljava/security/interfaces/DSAKey;

.field private msgDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 46
    const-string v0, "SHA1withDSA"

    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    .line 49
    return-void
.end method

.method private checkSignature([BII)Z
    .registers 27
    .parameter "sigBytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 331
    add-int/lit8 v21, p2, 0x3

    :try_start_2
    aget-byte v9, p1, v21

    .line 332
    .local v9, n1:I
    add-int v21, p2, v9

    add-int/lit8 v21, v21, 0x5

    aget-byte v10, p1, v21

    .line 334
    .local v10, n2:I
    add-int/lit8 v21, p2, 0x0

    aget-byte v21, p1, v21

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5a

    add-int/lit8 v21, p2, 0x2

    aget-byte v21, p1, v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5a

    add-int v21, p2, v9

    add-int/lit8 v21, v21, 0x4

    aget-byte v21, p1, v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5a

    add-int/lit8 v21, p2, 0x1

    aget-byte v21, p1, v21

    add-int v22, v9, v10

    add-int/lit8 v22, v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5a

    const/16 v21, 0x15

    move v0, v9

    move/from16 v1, v21

    if-gt v0, v1, :cond_5a

    const/16 v21, 0x15

    move v0, v10

    move/from16 v1, v21

    if-gt v0, v1, :cond_5a

    if-eqz p3, :cond_6d

    add-int/lit8 v21, p2, 0x1

    aget-byte v21, p1, v21

    add-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    move/from16 v1, p3

    if-le v0, v1, :cond_6d

    .line 339
    :cond_5a
    new-instance v21, Ljava/security/SignatureException;

    const-string v22, "signature bytes have invalid encoding"

    invoke-direct/range {v21 .. v22}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_62
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_62} :catch_62

    .line 343
    .end local v9           #n1:I
    .end local v10           #n2:I
    :catch_62
    move-exception v21

    move-object/from16 v7, v21

    .line 344
    .local v7, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v21, Ljava/security/SignatureException;

    const-string v22, "bad argument: byte[] is too small"

    invoke-direct/range {v21 .. v22}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 342
    .end local v7           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v9       #n1:I
    .restart local v10       #n2:I
    :cond_6d
    add-int/lit8 v21, v9, 0x5

    add-int v21, v21, v10

    :try_start_71
    aget-byte v21, p1, v21
    :try_end_73
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_71 .. :try_end_73} :catch_62

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 349
    .local v6, digest:[B
    new-array v5, v9, [B

    .line 350
    .local v5, bytes:[B
    add-int/lit8 v21, p2, 0x4

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object v2, v5

    move/from16 v3, v22

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    new-instance v14, Ljava/math/BigInteger;

    invoke-direct {v14, v5}, Ljava/math/BigInteger;-><init>([B)V

    .line 353
    .local v14, r:Ljava/math/BigInteger;
    new-array v5, v10, [B

    .line 354
    add-int/lit8 v21, p2, 0x6

    add-int v21, v21, v9

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object v2, v5

    move/from16 v3, v22

    move v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    new-instance v15, Ljava/math/BigInteger;

    invoke-direct {v15, v5}, Ljava/math/BigInteger;-><init>([B)V

    .line 357
    .local v15, s:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v12

    .line 358
    .local v12, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v12}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v11

    .line 359
    .local v11, p:Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v13

    .line 360
    .local v13, q:Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v8

    .line 361
    .local v8, g:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v20

    .line 365
    .local v20, y:Ljava/math/BigInteger;
    invoke-virtual {v14}, Ljava/math/BigInteger;->signum()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_fd

    invoke-virtual {v14, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_fd

    invoke-virtual {v15}, Ljava/math/BigInteger;->signum()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_fd

    invoke-virtual {v15, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_100

    .line 367
    :cond_fd
    const/16 v21, 0x0

    .line 380
    :goto_ff
    return v21

    .line 370
    :cond_100
    invoke-virtual {v15, v13}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 372
    .local v19, w:Ljava/math/BigInteger;
    new-instance v21, Ljava/math/BigInteger;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 373
    .local v16, u1:Ljava/math/BigInteger;
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 375
    .local v17, u2:Ljava/math/BigInteger;
    move-object v0, v8

    move-object/from16 v1, v16

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    .line 377
    .local v18, v:Ljava/math/BigInteger;
    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    if-eqz v21, :cond_15c

    .line 378
    const/16 v21, 0x0

    goto :goto_ff

    .line 380
    :cond_15c
    const/16 v21, 0x1

    goto :goto_ff
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 59
    if-nez p1, :cond_8

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 11
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 84
    if-eqz p1, :cond_7

    instance-of v6, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-nez v6, :cond_d

    .line 85
    :cond_7
    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-direct {v6}, Ljava/security/InvalidKeyException;-><init>()V

    throw v6

    .line 88
    :cond_d
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    move-object v6, v0

    invoke-interface {v6}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    .line 89
    .local v3, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 90
    .local v2, p:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    .line 91
    .local v4, q:Ljava/math/BigInteger;
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    move-object v6, v0

    invoke-interface {v6}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v5

    .line 94
    .local v5, x:Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 95
    .local v1, n:I
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ne v6, v8, :cond_41

    const/16 v6, 0x200

    if-lt v1, v6, :cond_41

    const/16 v6, 0x400

    if-gt v1, v6, :cond_41

    and-int/lit8 v6, v1, 0x3f

    if-eqz v6, :cond_49

    .line 96
    :cond_41
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "bad p"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 98
    :cond_49
    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-eq v6, v8, :cond_5f

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    const/16 v7, 0xa0

    if-eq v6, v7, :cond_5f

    .line 99
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "bad q"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 101
    :cond_5f
    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-ne v6, v8, :cond_6c

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_74

    .line 102
    :cond_6c
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "x <= 0 || x >= q"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 105
    :cond_74
    check-cast p1, Ljava/security/interfaces/DSAKey;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    .line 107
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 108
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 11
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 127
    if-eqz p1, :cond_7

    instance-of v6, p1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v6, :cond_f

    .line 128
    :cond_7
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "publicKey is not an instance of DSAPublicKey"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 131
    :cond_f
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v6, v0

    invoke-interface {v6}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    .line 132
    .local v3, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 133
    .local v2, p:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    .line 134
    .local v4, q:Ljava/math/BigInteger;
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v6, v0

    invoke-interface {v6}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    .line 137
    .local v5, y:Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 138
    .local v1, n1:I
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ne v6, v8, :cond_43

    const/16 v6, 0x200

    if-lt v1, v6, :cond_43

    const/16 v6, 0x400

    if-gt v1, v6, :cond_43

    and-int/lit8 v6, v1, 0x3f

    if-eqz v6, :cond_4b

    .line 139
    :cond_43
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "bad p"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 141
    :cond_4b
    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-ne v6, v8, :cond_59

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    const/16 v7, 0xa0

    if-eq v6, v7, :cond_61

    .line 142
    :cond_59
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "bad q"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 144
    :cond_61
    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-eq v6, v8, :cond_6f

    .line 145
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "y <= 0"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 148
    :cond_6f
    check-cast p1, Ljava/security/interfaces/DSAKey;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    .line 150
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 151
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p1, :cond_a

    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "param == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_a
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "invalid parameter for this engine"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v14, 0x0

    .line 186
    .local v14, r:Ljava/math/BigInteger;
    const/16 v17, 0x0

    .line 187
    .local v17, s:Ljava/math/BigInteger;
    const/4 v7, 0x0

    .line 205
    .local v7, k:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->appRandom:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    if-nez v21, :cond_17

    .line 206
    new-instance v21, Ljava/security/SecureRandom;

    invoke-direct/range {v21 .. v21}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->appRandom:Ljava/security/SecureRandom;

    .line 209
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v12

    .line 210
    .local v12, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v12}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v11

    .line 211
    .local v11, p:Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v13

    .line 212
    .local v13, q:Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v6

    .line 213
    .local v6, g:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object v5, v0

    check-cast v5, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v5}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v20

    .line 217
    .local v20, x:Ljava/math/BigInteger;
    new-instance v5, Ljava/math/BigInteger;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v22

    move-object v0, v5

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 219
    .local v5, digestBI:Ljava/math/BigInteger;
    const/16 v21, 0x14

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 223
    .local v16, randomBytes:[B
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->appRandom:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 225
    new-instance v7, Ljava/math/BigInteger;

    .end local v7           #k:Ljava/math/BigInteger;
    const/16 v21, 0x1

    move-object v0, v7

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 226
    .restart local v7       #k:Ljava/math/BigInteger;
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_56

    .line 229
    invoke-virtual {v6, v7, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 230
    invoke-virtual {v14}, Ljava/math/BigInteger;->signum()I

    move-result v21

    if-eqz v21, :cond_56

    .line 234
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 237
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->signum()I

    move-result v21

    if-eqz v21, :cond_56

    .line 244
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v15

    .line 245
    .local v15, rBytes:[B
    array-length v9, v15

    .line 246
    .local v9, n1:I
    const/16 v21, 0x0

    aget-byte v21, v15, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    if-eqz v21, :cond_c9

    .line 247
    add-int/lit8 v9, v9, 0x1

    .line 249
    :cond_c9
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v18

    .line 250
    .local v18, sBytes:[B
    move-object/from16 v0, v18

    array-length v0, v0

    move v10, v0

    .line 251
    .local v10, n2:I
    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    if-eqz v21, :cond_df

    .line 252
    add-int/lit8 v10, v10, 0x1

    .line 255
    :cond_df
    add-int/lit8 v21, v9, 0x6

    add-int v21, v21, v10

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 256
    .local v19, signature:[B
    const/16 v21, 0x0

    const/16 v22, 0x30

    aput-byte v22, v19, v21

    .line 257
    const/16 v21, 0x1

    add-int/lit8 v22, v9, 0x4

    add-int v22, v22, v10

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v19, v21

    .line 258
    const/16 v21, 0x2

    const/16 v22, 0x2

    aput-byte v22, v19, v21

    .line 259
    const/16 v21, 0x3

    move v0, v9

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v19, v21

    .line 260
    add-int/lit8 v21, v9, 0x4

    const/16 v22, 0x2

    aput-byte v22, v19, v21

    .line 261
    add-int/lit8 v21, v9, 0x5

    move v0, v10

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v19, v21

    .line 263
    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    move v0, v9

    move/from16 v1, v21

    if-ne v0, v1, :cond_153

    .line 264
    const/4 v8, 0x4

    .line 268
    .local v8, n:I
    :goto_122
    const/16 v21, 0x0

    move-object v0, v15

    array-length v0, v0

    move/from16 v22, v0

    move-object v0, v15

    move/from16 v1, v21

    move-object/from16 v2, v19

    move v3, v8

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_155

    .line 271
    add-int/lit8 v8, v9, 0x6

    .line 275
    :goto_13f
    const/16 v21, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v19

    move v3, v8

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    return-object v19

    .line 266
    .end local v8           #n:I
    :cond_153
    const/4 v8, 0x5

    .restart local v8       #n:I
    goto :goto_122

    .line 273
    :cond_155
    add-int/lit8 v8, v9, 0x7

    goto :goto_13f
.end method

.method protected engineUpdate(B)V
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 291
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 309
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 4
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 396
    if-nez p1, :cond_b

    .line 397
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sigBytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_b
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->checkSignature([BII)Z

    move-result v0

    return v0
.end method

.method protected engineVerify([BII)Z
    .registers 5
    .parameter "sigBytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->checkSignature([BII)Z

    move-result v0

    return v0
.end method
