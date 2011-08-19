.class Lcom/google/android/gsf/loginservice/PasswordEncrypter;
.super Ljava/lang/Object;
.source "PasswordEncrypter.java"


# static fields
.field private static HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->HEX_CHARS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeSha1Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 88
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 89
    .local v4, sha1:Ljava/security/MessageDigest;
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 90
    .local v1, hash:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 92
    sget-object v5, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->HEX_CHARS:[C

    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    sget-object v5, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->HEX_CHARS:[C

    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    return-object v5

    .line 96
    .end local v1           #hash:[B
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local v4           #sha1:Ljava/security/MessageDigest;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 97
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 98
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 99
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static createKeyFromString(Ljava/lang/String;[B)Ljava/security/PublicKey;
    .locals 12
    .parameter "keyStr"
    .parameter "ciphertextHeader"

    .prologue
    .line 105
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 107
    .local v0, data:[B
    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->readInt([BI)I

    move-result v6

    .line 108
    .local v6, modulusLength:I
    new-array v8, v6, [B

    .line 109
    .local v8, temp:[B
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static {v0, v9, v8, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    new-instance v5, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v5, v9, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 112
    .local v5, modulus:Ljava/math/BigInteger;
    add-int/lit8 v9, v6, 0x4

    invoke-static {v0, v9}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->readInt([BI)I

    move-result v3

    .line 113
    .local v3, exponentLength:I
    new-array v8, v3, [B

    .line 114
    add-int/lit8 v9, v6, 0x8

    const/4 v10, 0x0

    invoke-static {v0, v9, v8, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    new-instance v2, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v2, v9, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 117
    .local v2, exponent:Ljava/math/BigInteger;
    const-string v9, "SHA-1"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 118
    .local v7, sha1:Ljava/security/MessageDigest;
    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 120
    .local v4, hash:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v10, p1, v9

    .line 121
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x4

    invoke-static {v4, v9, p1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    const-string v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v9

    new-instance v10, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v10, v5, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v9, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 140
    .end local v0           #data:[B
    .end local v2           #exponent:Ljava/math/BigInteger;
    .end local v3           #exponentLength:I
    .end local v4           #hash:[B
    .end local v5           #modulus:Ljava/math/BigInteger;
    .end local v6           #modulusLength:I
    .end local v7           #sha1:Ljava/security/MessageDigest;
    .end local v8           #temp:[B
    :goto_0
    return-object v9

    .line 136
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 137
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 138
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 139
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v9, "GoogleLoginService.PasswordEncrypter"

    const-string v10, "received bad google_login_public_key: "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static encryptPassword(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "resolver"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->encryptPassword(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encryptPassword(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "username"
    .parameter "password"
    .parameter "resolver"
    .parameter "publicKeyData"

    .prologue
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, combined:Ljava/lang/String;
    invoke-static {v0, p2, p3}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->encryptString(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static encryptString(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "plain"
    .parameter "resolver"
    .parameter "publicKeyData"

    .prologue
    .line 175
    if-eqz p2, :cond_1

    move-object p1, p2

    .line 178
    .end local p2
    .local p1, keyStr:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_0

    .line 179
    const-string p1, "GoogleLoginService.PasswordEncrypter"

    .end local p1           #keyStr:Ljava/lang/String;
    const-string p2, "no public key available, using default"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string p1, "AAAAgMom/1a/v0lblO2Ubrt60J2gcuXSljGFQXgcyZWveWLEwo6prwgi3iJIZdodyhKZQrNWp5nKJ3srRXcUW+F1BD3baEVGcmEgqaLZUNBjm057pKRI16kB0YppeGx5qIQ5QjKzsR8ETQbKLNWgRY0QRNVz34kMJR3P/LgHax/6rmf5AAAAAwEAAQ=="

    .line 183
    .restart local p1       #keyStr:Ljava/lang/String;
    :cond_0
    const/4 p2, 0x5

    new-array v0, p2, [B

    .line 184
    .local v0, ciphertextHeader:[B
    invoke-static {p1, v0}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->createKeyFromString(Ljava/lang/String;[B)Ljava/security/PublicKey;

    move-result-object v4

    .line 186
    .local v4, publicKey:Ljava/security/PublicKey;
    if-nez v4, :cond_2

    const/4 p0, 0x0

    .line 222
    .end local p0
    .end local p1           #keyStr:Ljava/lang/String;
    :goto_1
    return-object p0

    .line 175
    .end local v0           #ciphertextHeader:[B
    .end local v4           #publicKey:Ljava/security/PublicKey;
    .restart local p0
    .local p1, resolver:Landroid/content/ContentResolver;
    .restart local p2
    :cond_1
    const-string p2, "google_login_public_key"

    .end local p2
    invoke-static {p1, p2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 188
    .restart local v0       #ciphertextHeader:[B
    .restart local v4       #publicKey:Ljava/security/PublicKey;
    .local p1, keyStr:Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string p1, "RSA/ECB/OAEPWITHSHA1ANDMGF1PADDING"

    .end local p1           #keyStr:Ljava/lang/String;
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 190
    .local p1, c:Ljavax/crypto/Cipher;
    const-string p2, "UTF-8"

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 191
    .local v3, plaintext:[B
    array-length p0, v3

    .end local p0
    const/4 p2, 0x1

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x56

    add-int/lit8 p0, p0, 0x1

    .line 195
    .local p0, chunks:I
    mul-int/lit16 p2, p0, 0x85

    new-array v2, p2, [B

    .line 197
    .local v2, output:[B
    const/4 p2, 0x0

    .local p2, i:I
    move v1, p2

    .end local p2           #i:I
    .local v1, i:I
    :goto_2
    if-ge v1, p0, :cond_4

    .line 198
    const/4 p2, 0x1

    invoke-virtual {p1, p2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 199
    mul-int/lit8 p2, v1, 0x56

    const/4 v5, 0x1

    sub-int v5, p0, v5

    if-ne v1, v5, :cond_3

    array-length v5, v3

    mul-int/lit8 v6, v1, 0x56

    sub-int/2addr v5, v6

    :goto_3
    invoke-virtual {p1, v3, p2, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p2

    .line 203
    .local p2, ciphertext:[B
    const/4 v5, 0x0

    mul-int/lit16 v6, v1, 0x85

    array-length v7, v0

    invoke-static {v0, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    const/4 v5, 0x0

    mul-int/lit16 v6, v1, 0x85

    array-length v7, v0

    add-int/2addr v6, v7

    array-length v7, p2

    invoke-static {p2, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    add-int/lit8 p2, v1, 0x1

    .end local v1           #i:I
    .local p2, i:I
    move v1, p2

    .end local p2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 199
    :cond_3
    const/16 v5, 0x56

    goto :goto_3

    .line 208
    :cond_4
    const/16 p0, 0xa

    invoke-static {v2, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5

    .end local p0           #chunks:I
    move-result-object p0

    goto :goto_1

    .line 209
    .end local v1           #i:I
    .end local v2           #output:[B
    .end local v3           #plaintext:[B
    .end local p1           #c:Ljavax/crypto/Cipher;
    :catch_0
    move-exception p0

    .line 210
    .local p0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 211
    .end local p0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception p0

    .line 212
    .local p0, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 213
    .end local p0           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception p0

    .line 214
    .local p0, e:Ljavax/crypto/BadPaddingException;
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 215
    .end local p0           #e:Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception p0

    .line 216
    .local p0, e:Ljava/io/UnsupportedEncodingException;
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 217
    .end local p0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception p0

    .line 218
    .local p0, e:Ljavax/crypto/IllegalBlockSizeException;
    const-string p1, "GoogleLoginService.PasswordEncrypter"

    const-string p2, "error encrypting password: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    const/4 p0, 0x0

    goto :goto_1

    .line 220
    .end local p0           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception p0

    .line 221
    .local p0, e:Ljava/security/InvalidKeyException;
    const-string p1, "GoogleLoginService.PasswordEncrypter"

    const-string p2, "received bad google_login_public_key: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    const/4 p0, 0x0

    goto/16 :goto_1
.end method

.method public static hashPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "username"
    .parameter "password"

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const-string v3, "GoogleLoginService.PasswordEncrypter"

    const-string v4, "attempt to hash null username"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    const-string v3, "GoogleLoginService.PasswordEncrypter"

    const-string v4, "attempt to hash \"null\" username"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    if-nez p1, :cond_2

    .line 68
    const-string v3, "GoogleLoginService.PasswordEncrypter"

    const-string v4, "attempt to hash null password"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_2
    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    const-string v3, "GoogleLoginService.PasswordEncrypter"

    const-string v4, "attempt to hash \"null\" password"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, input:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->computeSha1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, hash:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "AAAAgMom/1a/v0lblO2Ubrt60J2gcuXSljGFQXgcyZWveWLEwo6prwgi3iJIZdodyhKZQrNWp5nKJ3srRXcUW+F1BD3baEVGcmEgqaLZUNBjm057pKRI16kB0YppeGx5qIQ5QjKzsR8ETQbKLNWgRY0QRNVz34kMJR3P/LgHax/6rmf5AAAAAwEAAQ=="

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->encryptString(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, crypt:Ljava/lang/String;
    if-nez v0, :cond_4

    move-object v3, v1

    .line 79
    :goto_0
    return-object v3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static readInt([BI)I
    .locals 2
    .parameter "src"
    .parameter "offset"

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 231
    .local v0, i:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 232
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 233
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 234
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 235
    return v0
.end method
