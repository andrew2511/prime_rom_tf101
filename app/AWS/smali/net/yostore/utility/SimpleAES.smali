.class public Lnet/yostore/utility/SimpleAES;
.super Ljava/lang/Object;
.source "SimpleAES.java"


# static fields
.field private static final cipherKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnet/yostore/utility/SimpleAES;->cipherKey:[B

    .line 19
    return-void

    .line 21
    :array_0
    .array-data 0x1
        0x11t
        0x34t
        0x4et
        0x80t
        0x89t
        0x6at
        0x75t
        0x98t
        0xfft
        0x6dt
        0xct
        0xfet
        0x75t
        0x20t
        0xfat
        0xa4t
        0x61t
        0x22t
        0x10t
        0x34t
        0x82t
        0xf6t
        0x3dt
        0x3ct
        0x52t
        0x54t
        0x57t
        0x6at
        0xat
        0x81t
        0x27t
        0xa3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFromBytes([B)Ljava/lang/String;
    .locals 8
    .parameter "value"

    .prologue
    .line 91
    const/4 v4, 0x0

    .line 92
    .local v4, spec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v0, 0x0

    .line 93
    .local v0, cipher:Ljavax/crypto/Cipher;
    const-string v2, ""

    .line 95
    .local v2, rtn:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v6, Lnet/yostore/utility/SimpleAES;->cipherKey:[B

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 96
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .local v5, spec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_1
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 97
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 98
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_5

    .end local v2           #rtn:Ljava/lang/String;
    .local v3, rtn:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #rtn:Ljava/lang/String;
    .restart local v2       #rtn:Ljava/lang/String;
    move-object v4, v5

    .line 112
    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v2

    .line 100
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 101
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 103
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    :goto_2
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 105
    .local v1, e:Ljava/security/InvalidKeyException;
    :goto_3
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 107
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    :goto_4
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v6

    move-object v1, v6

    .line 109
    .local v1, e:Ljavax/crypto/BadPaddingException;
    :goto_5
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v1           #e:Ljavax/crypto/BadPaddingException;
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_5
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_5

    .line 106
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_6
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_4

    .line 104
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_7
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_3

    .line 102
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_8
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_2

    .line 100
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_9
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_1
.end method

.method public static decodeFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 24
    invoke-static {p0}, Lnet/yostore/utility/SimpleAES;->getBytes(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/utility/SimpleAES;->decodeFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeFromString(Ljava/lang/String;)[B
    .locals 7
    .parameter "value"

    .prologue
    .line 67
    const/4 v2, 0x0

    check-cast v2, [B

    .line 68
    .local v2, rtn:[B
    const/4 v3, 0x0

    .line 69
    .local v3, spec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v0, 0x0

    .line 72
    .local v0, cipher:Ljavax/crypto/Cipher;
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v5, Lnet/yostore/utility/SimpleAES;->cipherKey:[B

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 73
    .end local v3           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .local v4, spec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_1
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 74
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v2

    move-object v3, v4

    .line 87
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v3       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v2

    .line 76
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 77
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 79
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    :goto_2
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 81
    .local v1, e:Ljava/security/InvalidKeyException;
    :goto_3
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 83
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    :goto_4
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v5

    move-object v1, v5

    .line 85
    .local v1, e:Ljavax/crypto/BadPaddingException;
    :goto_5
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v1           #e:Ljavax/crypto/BadPaddingException;
    .end local v3           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_5
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v3       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_5

    .line 82
    .end local v3           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_6
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v3       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_4

    .line 80
    .end local v3           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_7
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v3       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_3

    .line 78
    .end local v3           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_8
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v3       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_2

    .line 76
    .end local v3           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_9
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v3       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_1
.end method

.method public static encodeToFile([BLjava/io/File;)Z
    .locals 10
    .parameter "bytes"
    .parameter "file"

    .prologue
    .line 28
    const/4 v5, 0x0

    .line 29
    .local v5, rtn:Z
    const/4 v6, 0x0

    .line 30
    .local v6, spec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v0, 0x0

    .line 31
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x0

    .line 33
    .local v3, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v8, Lnet/yostore/utility/SimpleAES;->cipherKey:[B

    const-string v9, "AES"

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 34
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .local v7, spec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_1
    const-string v8, "AES"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 35
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 37
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 38
    .local v2, encBytes:[B
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 39
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f

    .line 40
    const/4 v5, 0x1

    .line 55
    if-eqz v4, :cond_2

    .line 57
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v6, v7

    .line 63
    .end local v2           #encBytes:[B
    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    :goto_0
    return v5

    .line 41
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 42
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    if-eqz v3, :cond_0

    .line 57
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 58
    :catch_1
    move-exception v1

    .line 59
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 44
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 55
    if-eqz v3, :cond_0

    .line 57
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 58
    :catch_3
    move-exception v1

    .line 59
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v8

    move-object v1, v8

    .line 46
    .local v1, e:Ljava/security/InvalidKeyException;
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 55
    if-eqz v3, :cond_0

    .line 57
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_0

    .line 58
    :catch_5
    move-exception v1

    .line 59
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v8

    move-object v1, v8

    .line 48
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    :goto_4
    :try_start_a
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 55
    if-eqz v3, :cond_0

    .line 57
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_0

    .line 58
    :catch_7
    move-exception v1

    .line 59
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v1           #e:Ljava/io/IOException;
    :catch_8
    move-exception v8

    move-object v1, v8

    .line 50
    .local v1, e:Ljavax/crypto/BadPaddingException;
    :goto_5
    :try_start_c
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 55
    if-eqz v3, :cond_0

    .line 57
    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_0

    .line 58
    :catch_9
    move-exception v1

    .line 59
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v1           #e:Ljava/io/IOException;
    :catch_a
    move-exception v8

    move-object v1, v8

    .line 52
    .restart local v1       #e:Ljava/io/IOException;
    :goto_6
    :try_start_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 55
    if-eqz v3, :cond_0

    .line 57
    :try_start_f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_0

    .line 58
    :catch_b
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 55
    :goto_7
    if-eqz v3, :cond_1

    .line 57
    :try_start_10
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 62
    :cond_1
    :goto_8
    throw v8

    .line 58
    :catch_c
    move-exception v1

    .line 59
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 58
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v2       #encBytes:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_d
    move-exception v1

    .line 59
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_0

    .line 54
    .end local v2           #encBytes:[B
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_7

    .end local v3           #out:Ljava/io/OutputStream;
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v2       #encBytes:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_7

    .line 51
    .end local v2           #encBytes:[B
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_e
    move-exception v8

    move-object v1, v8

    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_6

    .end local v3           #out:Ljava/io/OutputStream;
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v2       #encBytes:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_f
    move-exception v8

    move-object v1, v8

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_6

    .line 49
    .end local v2           #encBytes:[B
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_10
    move-exception v8

    move-object v1, v8

    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_5

    .end local v3           #out:Ljava/io/OutputStream;
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v2       #encBytes:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_11
    move-exception v8

    move-object v1, v8

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_5

    .line 47
    .end local v2           #encBytes:[B
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_12
    move-exception v8

    move-object v1, v8

    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_4

    .end local v3           #out:Ljava/io/OutputStream;
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v2       #encBytes:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_13
    move-exception v8

    move-object v1, v8

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_4

    .line 45
    .end local v2           #encBytes:[B
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_14
    move-exception v8

    move-object v1, v8

    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_3

    .end local v3           #out:Ljava/io/OutputStream;
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v2       #encBytes:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_15
    move-exception v8

    move-object v1, v8

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_3

    .line 43
    .end local v2           #encBytes:[B
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_16
    move-exception v8

    move-object v1, v8

    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto/16 :goto_2

    .end local v3           #out:Ljava/io/OutputStream;
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v2       #encBytes:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_17
    move-exception v8

    move-object v1, v8

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto/16 :goto_2

    .line 41
    .end local v2           #encBytes:[B
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_18
    move-exception v8

    move-object v1, v8

    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto/16 :goto_1

    .end local v3           #out:Ljava/io/OutputStream;
    .end local v6           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v2       #encBytes:[B
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v7       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_19
    move-exception v8

    move-object v1, v8

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v6       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto/16 :goto_1
.end method

.method private static getBytes(Ljava/io/File;)[B
    .locals 6
    .parameter "file"

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 117
    .local v2, Length:J
    long-to-int v5, v2

    new-array v0, v5, [B

    .line 120
    .local v0, B:[B
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 121
    .local v1, ImgIs:Ljava/io/FileInputStream;
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    .end local v1           #ImgIs:Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 123
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 125
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
