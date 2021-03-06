.class public Lcom/asus/cm/util/SimpleAES;
.super Ljava/lang/Object;
.source "SimpleAES.java"


# static fields
.field public static final ACCOUNT_INFO_SPLIT_PATTERN:Ljava/lang/String; = "\n"

.field private static final cipherKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asus/cm/util/SimpleAES;->cipherKey:[B

    return-void

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
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFromBytes([B)Ljava/lang/String;
    .locals 8
    .parameter "value"

    .prologue
    .line 37
    const/4 v4, 0x0

    .line 38
    .local v4, spec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v0, 0x0

    .line 39
    .local v0, cipher:Ljavax/crypto/Cipher;
    const-string v2, ""

    .line 41
    .local v2, rtn:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v6, Lcom/asus/cm/util/SimpleAES;->cipherKey:[B

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 42
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .local v5, spec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_1
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 43
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 44
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

    .line 58
    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v2

    .line 46
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 47
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 49
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    :goto_2
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 51
    .local v1, e:Ljava/security/InvalidKeyException;
    :goto_3
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 53
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    :goto_4
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v6

    move-object v1, v6

    .line 55
    .local v1, e:Ljavax/crypto/BadPaddingException;
    :goto_5
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    .line 54
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

    .line 52
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_6
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_4

    .line 50
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_7
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_3

    .line 48
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_8
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_2

    .line 46
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

.method public static getAccountInfo([B)[Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/asus/cm/util/SimpleAES;->decodeFromBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, accountInfo:Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
