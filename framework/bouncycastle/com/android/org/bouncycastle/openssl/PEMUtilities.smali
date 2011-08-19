.class final Lcom/android/org/bouncycastle/openssl/PEMUtilities;
.super Ljava/lang/Object;
.source "PEMUtilities.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crypt(ZLjava/lang/String;[B[CLjava/lang/String;[B)[B
    .registers 14
    .parameter "encrypt"
    .parameter "provider"
    .parameter "bytes"
    .parameter "password"
    .parameter "dekAlgName"
    .parameter "iv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 28
    .local v2, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    const-string v0, "CBC"

    .line 29
    .local v0, blockMode:Ljava/lang/String;
    const-string v1, "PKCS5Padding"

    .line 34
    .local v1, padding:Ljava/lang/String;
    const-string v3, "-CFB"

    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 36
    const-string v0, "CFB"

    .line 37
    const-string v1, "NoPadding"

    .line 39
    :cond_15
    const-string v3, "-ECB"

    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "DES-EDE"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "DES-EDE3"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_161

    .line 45
    :cond_2d
    const-string v0, "ECB"

    .line 46
    const/4 v2, 0x0

    move-object v4, v2

    .line 48
    .end local v2           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local v4, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    :goto_31
    const-string v2, "-OFB"

    invoke-virtual {p4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 50
    const-string v0, "OFB"

    .line 51
    const-string v1, "NoPadding"

    move-object v3, v1

    .end local v1           #padding:Ljava/lang/String;
    .local v3, padding:Ljava/lang/String;
    move-object v1, v0

    .line 56
    .end local v0           #blockMode:Ljava/lang/String;
    .local v1, blockMode:Ljava/lang/String;
    :goto_3f
    const-string v0, "DES-EDE"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 58
    const-string v0, "DESede"

    .line 61
    .local v0, alg:Ljava/lang/String;
    const-string v2, "DES-EDE3"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    .end local p4
    if-nez p4, :cond_8d

    const/4 p4, 0x1

    .line 62
    .local p4, des2:Z
    :goto_52
    const/16 v2, 0x18

    invoke-static {p3, v0, v2, p5, p4}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object p3

    .local p3, sKey:Ljava/security/Key;
    move-object p5, p3

    .end local p3           #sKey:Ljava/security/Key;
    .local p5, sKey:Ljava/security/Key;
    move-object p4, v4

    .end local v4           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p4, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    move-object p3, v0

    .line 130
    .end local v0           #alg:Ljava/lang/String;
    .local p3, alg:Ljava/lang/String;
    :goto_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #alg:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 134
    .local p3, transformation:Ljava/lang/String;
    :try_start_7c
    invoke-static {p3, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 135
    .local p1, c:Ljavax/crypto/Cipher;
    if-eqz p0, :cond_149

    const/4 p0, 0x1

    .line 137
    .local p0, mode:I
    :goto_83
    if-nez p4, :cond_14c

    .line 139
    invoke-virtual {p1, p0, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 145
    :goto_88
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8b} :catch_151

    move-result-object p0

    .end local p0           #mode:I
    return-object p0

    .line 61
    .end local p4           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v0       #alg:Ljava/lang/String;
    .restart local v4       #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p0, encrypt:Z
    .local p1, provider:Ljava/lang/String;
    .local p3, password:[C
    .local p5, iv:[B
    :cond_8d
    const/4 p4, 0x0

    goto :goto_52

    .line 64
    .end local v0           #alg:Ljava/lang/String;
    .local p4, dekAlgName:Ljava/lang/String;
    :cond_8f
    const-string v0, "DES-"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 66
    const-string p4, "DES"

    .line 67
    .local p4, alg:Ljava/lang/String;
    const/16 v0, 0x8

    invoke-static {p3, p4, v0, p5}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object p3

    .local p3, sKey:Ljava/security/Key;
    move-object p5, p3

    .end local p3           #sKey:Ljava/security/Key;
    .local p5, sKey:Ljava/security/Key;
    move-object p3, p4

    .end local p4           #alg:Ljava/lang/String;
    .local p3, alg:Ljava/lang/String;
    move-object p4, v4

    .end local v4           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p4, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_5b

    .line 69
    .restart local v4       #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p3, password:[C
    .local p4, dekAlgName:Ljava/lang/String;
    .local p5, iv:[B
    :cond_a3
    const-string v0, "BF-"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 71
    const-string p4, "Blowfish"

    .line 72
    .local p4, alg:Ljava/lang/String;
    const/16 v0, 0x10

    invoke-static {p3, p4, v0, p5}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object p3

    .local p3, sKey:Ljava/security/Key;
    move-object p5, p3

    .end local p3           #sKey:Ljava/security/Key;
    .local p5, sKey:Ljava/security/Key;
    move-object p3, p4

    .end local p4           #alg:Ljava/lang/String;
    .local p3, alg:Ljava/lang/String;
    move-object p4, v4

    .end local v4           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p4, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_5b

    .line 74
    .restart local v4       #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p3, password:[C
    .local p4, dekAlgName:Ljava/lang/String;
    .local p5, iv:[B
    :cond_b7
    const-string v0, "RC2-"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 76
    const-string v0, "RC2"

    .line 77
    .restart local v0       #alg:Ljava/lang/String;
    const/16 v2, 0x80

    .line 78
    .local v2, keyBits:I
    const-string v5, "RC2-40-"

    invoke-virtual {p4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 80
    const/16 p4, 0x28

    .line 86
    .end local v2           #keyBits:I
    .local p4, keyBits:I
    :goto_cd
    div-int/lit8 v2, p4, 0x8

    invoke-static {p3, v0, v2, p5}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 87
    .local v2, sKey:Ljava/security/Key;
    if-nez v4, :cond_ea

    .line 89
    new-instance p3, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local p3           #password:[C
    invoke-direct {p3, p4}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I)V

    .end local v4           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p3, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    :goto_da
    move-object p5, v2

    .end local v2           #sKey:Ljava/security/Key;
    .local p5, sKey:Ljava/security/Key;
    move-object p4, p3

    .end local p3           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p4, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    move-object p3, v0

    .line 95
    .end local v0           #alg:Ljava/lang/String;
    .local p3, alg:Ljava/lang/String;
    goto/16 :goto_5b

    .line 82
    .restart local v0       #alg:Ljava/lang/String;
    .local v2, keyBits:I
    .restart local v4       #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p3, password:[C
    .local p4, dekAlgName:Ljava/lang/String;
    .local p5, iv:[B
    :cond_df
    const-string v5, "RC2-64-"

    invoke-virtual {p4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    .end local p4           #dekAlgName:Ljava/lang/String;
    if-eqz p4, :cond_15a

    .line 84
    const/16 p4, 0x40

    .end local v2           #keyBits:I
    .local p4, keyBits:I
    goto :goto_cd

    .line 93
    .local v2, sKey:Ljava/security/Key;
    :cond_ea
    new-instance p3, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local p3           #password:[C
    invoke-direct {p3, p4, p5}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    .end local v4           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p3, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_da

    .line 96
    .end local v0           #alg:Ljava/lang/String;
    .end local v2           #sKey:Ljava/security/Key;
    .restart local v4       #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p3, password:[C
    .local p4, dekAlgName:Ljava/lang/String;
    :cond_f0
    const-string v0, "AES-"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 98
    const-string v0, "AES"

    .line 99
    .restart local v0       #alg:Ljava/lang/String;
    move-object v2, p5

    .line 100
    .local v2, salt:[B
    array-length v5, v2

    const/16 v6, 0x8

    if-le v5, v6, :cond_10b

    .line 102
    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 103
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {p5, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10b
    move-object p5, v2

    .line 107
    .end local v2           #salt:[B
    .local p5, salt:[B
    const-string v2, "AES-128-"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 109
    const/16 p4, 0x80

    .line 123
    .local p4, keyBits:I
    :goto_116
    const-string v2, "AES"

    div-int/lit8 p4, p4, 0x8

    .end local p4           #keyBits:I
    invoke-static {p3, v2, p4, p5}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object p3

    .local p3, sKey:Ljava/security/Key;
    move-object p5, p3

    .end local p3           #sKey:Ljava/security/Key;
    .local p5, sKey:Ljava/security/Key;
    move-object p4, v4

    .end local v4           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p4, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    move-object p3, v0

    .line 124
    .end local v0           #alg:Ljava/lang/String;
    .local p3, alg:Ljava/lang/String;
    goto/16 :goto_5b

    .line 111
    .restart local v0       #alg:Ljava/lang/String;
    .restart local v4       #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p3, password:[C
    .local p4, dekAlgName:Ljava/lang/String;
    .local p5, salt:[B
    :cond_123
    const-string v2, "AES-192-"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 113
    const/16 p4, 0xc0

    .local p4, keyBits:I
    goto :goto_116

    .line 115
    .local p4, dekAlgName:Ljava/lang/String;
    :cond_12e
    const-string v2, "AES-256-"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    .end local p4           #dekAlgName:Ljava/lang/String;
    if-eqz p4, :cond_139

    .line 117
    const/16 p4, 0x100

    .local p4, keyBits:I
    goto :goto_116

    .line 121
    .end local p4           #keyBits:I
    :cond_139
    new-instance p0, Lcom/android/org/bouncycastle/openssl/EncryptionException;

    .end local p0           #encrypt:Z
    const-string p1, "unknown AES encryption with private key"

    .end local p1           #provider:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    .end local v0           #alg:Ljava/lang/String;
    .restart local p0       #encrypt:Z
    .restart local p1       #provider:Ljava/lang/String;
    .local p4, dekAlgName:Ljava/lang/String;
    .local p5, iv:[B
    :cond_141
    new-instance p0, Lcom/android/org/bouncycastle/openssl/EncryptionException;

    .end local p0           #encrypt:Z
    const-string p1, "unknown encryption with private key"

    .end local p1           #provider:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    .end local v4           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p0       #encrypt:Z
    .local p1, c:Ljavax/crypto/Cipher;
    .local p3, transformation:Ljava/lang/String;
    .local p4, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p5, sKey:Ljava/security/Key;
    :cond_149
    const/4 p0, 0x2

    goto/16 :goto_83

    .line 143
    .local p0, mode:I
    :cond_14c
    :try_start_14c
    invoke-virtual {p1, p0, p5, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_14f} :catch_151

    goto/16 :goto_88

    .line 147
    .end local p0           #mode:I
    .end local p1           #c:Ljavax/crypto/Cipher;
    :catch_151
    move-exception p0

    .line 149
    .local p0, e:Ljava/lang/Exception;
    new-instance p1, Lcom/android/org/bouncycastle/openssl/EncryptionException;

    const-string p2, "exception using cipher - please check password and data."

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .end local p4           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v0       #alg:Ljava/lang/String;
    .local v2, keyBits:I
    .restart local v4       #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .local p0, encrypt:Z
    .local p1, provider:Ljava/lang/String;
    .restart local p2
    .local p3, password:[C
    .local p5, iv:[B
    :cond_15a
    move p4, v2

    .end local v2           #keyBits:I
    .local p4, keyBits:I
    goto/16 :goto_cd

    .end local v3           #padding:Ljava/lang/String;
    .local v0, blockMode:Ljava/lang/String;
    .local v1, padding:Ljava/lang/String;
    .local p4, dekAlgName:Ljava/lang/String;
    :cond_15d
    move-object v3, v1

    .end local v1           #padding:Ljava/lang/String;
    .restart local v3       #padding:Ljava/lang/String;
    move-object v1, v0

    .end local v0           #blockMode:Ljava/lang/String;
    .local v1, blockMode:Ljava/lang/String;
    goto/16 :goto_3f

    .end local v3           #padding:Ljava/lang/String;
    .end local v4           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v0       #blockMode:Ljava/lang/String;
    .local v1, padding:Ljava/lang/String;
    .local v2, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    :cond_161
    move-object v4, v2

    .end local v2           #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v4       #paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    goto/16 :goto_31
.end method

.method private static getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;
    .registers 5
    .parameter "password"
    .parameter "algorithm"
    .parameter "keyLength"
    .parameter "salt"

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private static getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;
    .registers 11
    .parameter "password"
    .parameter "algorithm"
    .parameter "keyLength"
    .parameter "salt"
    .parameter "des2"

    .prologue
    .line 169
    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .line 171
    .local v2, pGen:Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->init([B[B)V

    .line 174
    mul-int/lit8 v3, p2, 0x8

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 175
    .local v1, keyParam:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 176
    .local v0, key:[B
    if-eqz p4, :cond_27

    array-length v3, v0

    const/16 v4, 0x18

    if-lt v3, v4, :cond_27

    .line 179
    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x8

    invoke-static {v0, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :cond_27
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3
.end method
