.class public Lorg/apache/harmony/security/provider/crypto/DSAKeyFactoryImpl;
.super Ljava/security/KeyFactorySpi;
.source "DSAKeyFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 4
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 53
    if-eqz p1, :cond_1a

    .line 54
    instance-of v0, p1, Ljava/security/spec/DSAPrivateKeySpec;

    if-eqz v0, :cond_e

    .line 56
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;

    check-cast p1, Ljava/security/spec/DSAPrivateKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;-><init>(Ljava/security/spec/DSAPrivateKeySpec;)V

    .line 60
    :goto_d
    return-object v0

    .line 58
    .restart local p1
    :cond_e
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_1a

    .line 60
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;-><init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V

    goto :goto_d

    .line 63
    .restart local p1
    :cond_1a
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "\'keySpec\' is neither DSAPrivateKeySpec nor PKCS8EncodedKeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 4
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 81
    if-eqz p1, :cond_1a

    .line 82
    instance-of v0, p1, Ljava/security/spec/DSAPublicKeySpec;

    if-eqz v0, :cond_e

    .line 84
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;

    check-cast p1, Ljava/security/spec/DSAPublicKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;-><init>(Ljava/security/spec/DSAPublicKeySpec;)V

    .line 88
    :goto_d
    return-object v0

    .line 86
    .restart local p1
    :cond_e
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_1a

    .line 88
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;

    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;-><init>(Ljava/security/spec/X509EncodedKeySpec;)V

    goto :goto_d

    .line 91
    .restart local p1
    :cond_1a
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "\'keySpec\' is neither DSAPublicKeySpec nor X509EncodedKeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 14
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 116
    .local p2, keySpec:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_94

    .line 117
    if-nez p2, :cond_c

    .line 118
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "keySpec == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 120
    :cond_c
    instance-of v9, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v9, :cond_50

    .line 121
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    move-object v4, v0

    .line 123
    .local v4, privateKey:Ljava/security/interfaces/DSAPrivateKey;
    const-class v9, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 125
    invoke-interface {v4}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v7

    .line 127
    .local v7, x:Ljava/math/BigInteger;
    invoke-interface {v4}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    .line 129
    .local v3, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 130
    .local v2, p:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 131
    .local v6, q:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 133
    .local v1, g:Ljava/math/BigInteger;
    new-instance v9, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v9, v7, v2, v6, v1}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 160
    .end local v1           #g:Ljava/math/BigInteger;
    .end local v2           #p:Ljava/math/BigInteger;
    .end local v3           #params:Ljava/security/interfaces/DSAParams;
    .end local v4           #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    .end local v6           #q:Ljava/math/BigInteger;
    .end local v7           #x:Ljava/math/BigInteger;
    :goto_35
    return-object v9

    .line 136
    .restart local v4       #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :cond_36
    const-class v9, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 137
    new-instance v9, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    goto :goto_35

    .line 140
    :cond_48
    new-instance v9, Ljava/security/spec/InvalidKeySpecException;

    const-string v10, "\'keySpec\' is neither DSAPrivateKeySpec nor PKCS8EncodedKeySpec"

    invoke-direct {v9, v10}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 143
    .end local v4           #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :cond_50
    instance-of v9, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v9, :cond_94

    .line 144
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v5, v0

    .line 146
    .local v5, publicKey:Ljava/security/interfaces/DSAPublicKey;
    const-class v9, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 148
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v8

    .line 150
    .local v8, y:Ljava/math/BigInteger;
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    .line 152
    .restart local v3       #params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 153
    .restart local v2       #p:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 154
    .restart local v6       #q:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 156
    .restart local v1       #g:Ljava/math/BigInteger;
    new-instance v9, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v9, v8, v2, v6, v1}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_35

    .line 159
    .end local v1           #g:Ljava/math/BigInteger;
    .end local v2           #p:Ljava/math/BigInteger;
    .end local v3           #params:Ljava/security/interfaces/DSAParams;
    .end local v6           #q:Ljava/math/BigInteger;
    .end local v8           #y:Ljava/math/BigInteger;
    :cond_7a
    const-class v9, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 160
    new-instance v9, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_35

    .line 163
    :cond_8c
    new-instance v9, Ljava/security/spec/InvalidKeySpecException;

    const-string v10, "\'keySpec\' is neither DSAPublicKeySpec nor X509EncodedKeySpec"

    invoke-direct {v9, v10}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 166
    .end local v5           #publicKey:Ljava/security/interfaces/DSAPublicKey;
    :cond_94
    new-instance v9, Ljava/security/spec/InvalidKeySpecException;

    const-string v10, "\'key\' is neither DSAPublicKey nor DSAPrivateKey"

    invoke-direct {v9, v10}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 12
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 183
    if-eqz p1, :cond_84

    .line 184
    instance-of v5, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v5, :cond_43

    .line 186
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    move-object v3, v0

    .line 187
    .local v3, privateKey:Ljava/security/interfaces/DSAPrivateKey;
    invoke-interface {v3}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 190
    .local v2, params:Ljava/security/interfaces/DSAParams;
    :try_start_e
    new-instance v5, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-interface {v3}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v5}, Lorg/apache/harmony/security/provider/crypto/DSAKeyFactoryImpl;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_26
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_e .. :try_end_26} :catch_28

    move-result-object v5

    .line 205
    .end local v3           #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :goto_27
    return-object v5

    .line 193
    .restart local v3       #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :catch_28
    move-exception v5

    move-object v1, v5

    .line 195
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ATTENTION: InvalidKeySpecException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 199
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    .end local v2           #params:Ljava/security/interfaces/DSAParams;
    .end local v3           #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :cond_43
    instance-of v5, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v5, :cond_84

    .line 201
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v4, v0

    .line 202
    .local v4, publicKey:Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v4}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 205
    .restart local v2       #params:Ljava/security/interfaces/DSAParams;
    :try_start_4f
    new-instance v5, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v4}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v5}, Lorg/apache/harmony/security/provider/crypto/DSAKeyFactoryImpl;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_67
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4f .. :try_end_67} :catch_69

    move-result-object v5

    goto :goto_27

    .line 208
    :catch_69
    move-exception v5

    move-object v1, v5

    .line 210
    .restart local v1       #e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ATTENTION: InvalidKeySpecException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 214
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    .end local v2           #params:Ljava/security/interfaces/DSAParams;
    .end local v4           #publicKey:Ljava/security/interfaces/DSAPublicKey;
    :cond_84
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "\'key\' is neither DSAPublicKey nor DSAPrivateKey"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
