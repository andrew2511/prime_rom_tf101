.class public Lcom/asus/vibe2/mycloud/Utils_MyCloud;
.super Ljava/lang/Object;
.source "Utils_MyCloud.java"


# static fields
.field private static final cipherKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asus/vibe2/mycloud/Utils_MyCloud;->cipherKey:[B

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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFromBytes([B)[Ljava/lang/String;
    .locals 2
    .parameter "encrpytedBlock"

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, plainText:Ljava/lang/String;
    invoke-static {p0}, Lcom/asus/vibe2/mycloud/Utils_MyCloud;->decodeFromBytestoSting([B)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x0

    .line 112
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static decodeFromBytestoSting([B)Ljava/lang/String;
    .locals 8
    .parameter "encrpytedBlock"

    .prologue
    .line 82
    const/4 v4, 0x0

    .line 83
    .local v4, spec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v0, 0x0

    .line 84
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v2, 0x0

    .line 86
    .local v2, result:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v6, Lcom/asus/vibe2/mycloud/Utils_MyCloud;->cipherKey:[B

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 87
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .local v5, spec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_1
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 88
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 89
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

    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    move-object v4, v5

    .line 103
    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v2

    .line 91
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 92
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 94
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    :goto_2
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 96
    .local v1, e:Ljava/security/InvalidKeyException;
    :goto_3
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 98
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    :goto_4
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v6

    move-object v1, v6

    .line 100
    .local v1, e:Ljavax/crypto/BadPaddingException;
    :goto_5
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    .line 99
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

    .line 97
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_6
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_4

    .line 95
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_7
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_3

    .line 93
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_8
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_2

    .line 91
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

.method public static requestGetAccInfo(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.asus.webstorage.id"

    const-string v2, "com.asus.webstorage.id.AuthenticatingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string v1, "AccountInfo"

    const-string v2, "getInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const/16 v1, 0x99

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 25
    return-void
.end method

.method public static updateAccountInfoByReceiver(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 69
    const-string v1, "MyCloud"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    invoke-static {v2}, Lcom/asus/vibe2/Vibe;->setUsername(Ljava/lang/String;)V

    .line 72
    invoke-static {v2}, Lcom/asus/vibe2/Vibe;->setMd5password(Ljava/lang/String;)V

    .line 73
    invoke-static {v2}, Lcom/asus/vibe2/Vibe;->setVibeFreeToken(Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x1

    .line 76
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static updateAccountInfoByResult(ILandroid/content/Intent;)Z
    .locals 6
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    const/4 v2, 0x1

    .line 36
    .local v2, success:Z
    const/4 v1, 0x0

    .line 37
    .local v1, result:[Ljava/lang/String;
    const/4 v3, -0x1

    if-eq p0, v3, :cond_1

    .line 38
    const/4 v2, 0x0

    .line 53
    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    .line 54
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/asus/vibe2/Vibe;->setUsername(Ljava/lang/String;)V

    .line 55
    aget-object v3, v1, v5

    invoke-static {v3}, Lcom/asus/vibe2/Vibe;->setMd5password(Ljava/lang/String;)V

    .line 56
    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/asus/vibe2/Vibe;->setVibeFreeToken(Ljava/lang/String;)V

    .line 57
    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/asus/vibe2/Vibe;->setServiceGatewayAddress(Ljava/lang/String;)V

    .line 58
    const/4 v3, 0x6

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/asus/vibe2/Vibe;->setVibeFreeAddress(Ljava/lang/String;)V

    .line 65
    :goto_1
    return v2

    .line 39
    :cond_1
    if-nez p1, :cond_2

    .line 40
    const/4 v2, 0x0

    goto :goto_0

    .line 42
    :cond_2
    const-string v3, "AccountInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 43
    .local v0, accInfo:[B
    if-eqz v0, :cond_3

    array-length v3, v0

    if-ge v3, v5, :cond_4

    .line 44
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 46
    :cond_4
    invoke-static {v0}, Lcom/asus/vibe2/mycloud/Utils_MyCloud;->decodeFromBytes([B)[Ljava/lang/String;

    move-result-object v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    const/4 v2, 0x0

    goto :goto_0

    .line 61
    .end local v0           #accInfo:[B
    :cond_5
    invoke-static {v4}, Lcom/asus/vibe2/Vibe;->setUsername(Ljava/lang/String;)V

    .line 62
    invoke-static {v4}, Lcom/asus/vibe2/Vibe;->setMd5password(Ljava/lang/String;)V

    .line 63
    invoke-static {v4}, Lcom/asus/vibe2/Vibe;->setVibeFreeToken(Ljava/lang/String;)V

    goto :goto_1
.end method
