.class public Ljavax/crypto/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# static fields
.field public static final DECRYPT_MODE:I = 0x2

.field public static final ENCRYPT_MODE:I = 0x1

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field public static final PRIVATE_KEY:I = 0x2

.field public static final PUBLIC_KEY:I = 0x1

.field public static final SECRET_KEY:I = 0x3

.field private static final SERVICE:Ljava/lang/String; = "Cipher"

.field public static final UNWRAP_MODE:I = 0x4

.field public static final WRAP_MODE:I = 0x3

.field private static sec_rand:Ljava/security/SecureRandom;


# instance fields
.field private mode:I

.field private provider:Ljava/security/Provider;

.field private spiImpl:Ljavax/crypto/CipherSpi;

.field private transformation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 110
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "Cipher"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .parameter "cipherSpi"
    .parameter "provider"
    .parameter "transformation"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    if-nez p1, :cond_b

    .line 145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 147
    :cond_b
    instance-of v0, p1, Lorg/apache/harmony/crypto/internal/NullCipherSpi;

    if-nez v0, :cond_17

    if-nez p2, :cond_17

    .line 148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 150
    :cond_17
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    .line 151
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    .line 152
    iput-object p1, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    .line 153
    return-void
.end method

.method private checkMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 523
    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x4

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    .line 525
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_25
    return-void
.end method

.method private static checkTransformation(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 332
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    aput-object v5, v2, v7

    aput-object v5, v2, v6

    aput-object v5, v2, v4

    .line 334
    .local v2, transf:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 335
    .local v0, i:I
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "/"

    invoke-direct {v1, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, st:Ljava/util/StringTokenizer;
    :cond_15
    :goto_15
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 336
    if-le v0, v4, :cond_22

    .line 337
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v3

    throw v3

    .line 339
    :cond_22
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 340
    aget-object v3, v2, v0

    if-eqz v3, :cond_15

    .line 341
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 342
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 343
    aput-object v5, v2, v0

    .line 345
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 348
    :cond_41
    aget-object v3, v2, v7

    if-nez v3, :cond_4a

    .line 349
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v3

    throw v3

    .line 351
    :cond_4a
    aget-object v3, v2, v6

    if-nez v3, :cond_52

    aget-object v3, v2, v4

    if-eqz v3, :cond_5f

    :cond_52
    aget-object v3, v2, v6

    if-eqz v3, :cond_5a

    aget-object v3, v2, v4

    if-nez v3, :cond_5f

    .line 352
    :cond_5a
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object v3

    throw v3

    .line 354
    :cond_5f
    return-object v2
.end method

.method private static declared-synchronized getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .registers 14
    .parameter "transformation"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 259
    const-class v8, Ljavax/crypto/Cipher;

    monitor-enter v8

    if-eqz p0, :cond_b

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 260
    :cond_b
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    move-result-object p0

    .end local p0
    throw p0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_10

    .line 259
    .end local p1
    :catchall_10
    move-exception p0

    monitor-exit v8

    throw p0

    .line 263
    .restart local p0
    .restart local p1
    :cond_13
    :try_start_13
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, transf:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 266
    .local v4, needSetPadding:Z
    const/4 v3, 0x0

    .line 267
    .local v3, needSetMode:Z
    const/4 v0, 0x0

    .line 268
    .local v0, engineSpi:Ljava/lang/Object;
    move-object v1, p1

    .line 269
    .local v1, engineProvider:Ljava/security/Provider;
    const/4 v2, 0x1

    aget-object v2, v7, v2

    if-nez v2, :cond_50

    const/4 v2, 0x2

    aget-object v2, v7, v2

    if-nez v2, :cond_50

    .line 270
    if-nez p1, :cond_42

    .line 271
    sget-object p1, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    .end local p1
    const/4 v0, 0x0

    aget-object v0, v7, v0

    .end local v0           #engineSpi:Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    .end local v1           #engineProvider:Ljava/security/Provider;
    move-result-object p1

    .line 272
    .local p1, sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v0, p1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    .line 273
    .restart local v0       #engineSpi:Ljava/lang/Object;
    iget-object p1, p1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    .local p1, engineProvider:Ljava/security/Provider;
    move-object v1, p1

    .end local p1           #engineProvider:Ljava/security/Provider;
    .restart local v1       #engineProvider:Ljava/security/Provider;
    move v2, v3

    .end local v3           #needSetMode:Z
    .local v2, needSetMode:Z
    move v3, v4

    .line 313
    .end local v0           #engineSpi:Ljava/lang/Object;
    .end local v4           #needSetPadding:Z
    .local v3, needSetPadding:Z
    :goto_38
    if-eqz v0, :cond_3c

    if-nez v1, :cond_119

    .line 314
    :cond_3c
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {p1, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    .end local v2           #needSetMode:Z
    .restart local v0       #engineSpi:Ljava/lang/Object;
    .local v3, needSetMode:Z
    .restart local v4       #needSetPadding:Z
    .local p1, provider:Ljava/security/Provider;
    :cond_42
    sget-object v0, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    .end local v0           #engineSpi:Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v7, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, p1, v5}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .local p1, engineSpi:Ljava/lang/Object;
    move-object v0, p1

    move v2, v3

    .end local v3           #needSetMode:Z
    .restart local v2       #needSetMode:Z
    move v3, v4

    .end local v4           #needSetPadding:Z
    .local v3, needSetPadding:Z
    goto :goto_38

    .line 278
    .end local v2           #needSetMode:Z
    .restart local v0       #engineSpi:Ljava/lang/Object;
    .local v3, needSetMode:Z
    .restart local v4       #needSetPadding:Z
    .local p1, provider:Ljava/security/Provider;
    :cond_50
    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    const/4 v2, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    const/4 v2, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "//"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    const/4 v2, 0x3

    const/4 v5, 0x0

    aget-object v5, v7, v5

    aput-object v5, v6, v2

    .line 285
    .local v6, searchOrder:[Ljava/lang/String;
    const/4 v2, 0x0

    .end local v0           #engineSpi:Ljava/lang/Object;
    .local v2, i:I
    :goto_c7
    array-length v5, v6
    :try_end_c8
    .catchall {:try_start_13 .. :try_end_c8} :catchall_10

    if-ge v2, v5, :cond_14d

    .line 287
    if-nez p1, :cond_e3

    .line 288
    :try_start_cc
    sget-object v5, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    aget-object v9, v6, v2

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v5

    .line 289
    .local v5, sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v0, v5, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;
    :try_end_d7
    .catchall {:try_start_cc .. :try_end_d7} :catchall_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_cc .. :try_end_d7} :catch_ef

    .line 290
    .restart local v0       #engineSpi:Ljava/lang/Object;
    :try_start_d7
    iget-object p1, v5, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;
    :try_end_d9
    .catchall {:try_start_d7 .. :try_end_d9} :catchall_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d7 .. :try_end_d9} :catch_148

    .end local v1           #engineProvider:Ljava/security/Provider;
    .end local v5           #sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .local p1, engineProvider:Ljava/security/Provider;
    :goto_d9
    move-object v5, v0

    .line 301
    .end local v0           #engineSpi:Ljava/lang/Object;
    :goto_da
    packed-switch v2, :pswitch_data_150

    move-object v1, p1

    .end local p1           #engineProvider:Ljava/security/Provider;
    .restart local v1       #engineProvider:Ljava/security/Provider;
    move-object v0, v5

    move v2, v3

    .end local v3           #needSetMode:Z
    .local v2, needSetMode:Z
    move v3, v4

    .end local v4           #needSetPadding:Z
    .local v3, needSetPadding:Z
    goto/16 :goto_38

    .line 292
    .local v2, i:I
    .local v3, needSetMode:Z
    .restart local v4       #needSetPadding:Z
    .local p1, provider:Ljava/security/Provider;
    :cond_e3
    :try_start_e3
    sget-object v5, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    aget-object v9, v6, v2

    const/4 v10, 0x0

    invoke-virtual {v5, v9, p1, v10}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_eb
    .catchall {:try_start_e3 .. :try_end_eb} :catchall_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e3 .. :try_end_eb} :catch_ef

    move-result-object p1

    .local p1, engineSpi:Ljava/lang/Object;
    move-object v0, p1

    .end local p1           #engineSpi:Ljava/lang/Object;
    .restart local v0       #engineSpi:Ljava/lang/Object;
    move-object p1, v1

    .end local v1           #engineProvider:Ljava/security/Provider;
    .local p1, engineProvider:Ljava/security/Provider;
    goto :goto_d9

    .line 295
    .end local v0           #engineSpi:Ljava/lang/Object;
    .restart local v1       #engineProvider:Ljava/security/Provider;
    .local p1, provider:Ljava/security/Provider;
    :catch_ef
    move-exception v5

    move-object v11, v5

    move-object v5, v0

    move-object v0, v11

    .line 296
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    :goto_f3
    :try_start_f3
    array-length v0, v6

    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    const/4 v9, 0x1

    sub-int/2addr v0, v9

    if-ne v2, v0, :cond_fe

    .line 297
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    .end local p1           #provider:Ljava/security/Provider;
    invoke-direct {p1, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    .restart local p1       #provider:Ljava/security/Provider;
    :cond_fe
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    move-object v0, v5

    goto :goto_c7

    .line 303
    .end local v1           #engineProvider:Ljava/security/Provider;
    .local p1, engineProvider:Ljava/security/Provider;
    :pswitch_103
    const/4 v0, 0x1

    .end local v4           #needSetPadding:Z
    .local v0, needSetPadding:Z
    move-object v1, p1

    .end local p1           #engineProvider:Ljava/security/Provider;
    .restart local v1       #engineProvider:Ljava/security/Provider;
    move v2, v3

    .end local v3           #needSetMode:Z
    .local v2, needSetMode:Z
    move v3, v0

    .end local v0           #needSetPadding:Z
    .local v3, needSetPadding:Z
    move-object v0, v5

    .line 304
    goto/16 :goto_38

    .line 306
    .end local v1           #engineProvider:Ljava/security/Provider;
    .local v2, i:I
    .local v3, needSetMode:Z
    .restart local v4       #needSetPadding:Z
    .restart local p1       #engineProvider:Ljava/security/Provider;
    :pswitch_10a
    const/4 v0, 0x1

    .end local v3           #needSetMode:Z
    .local v0, needSetMode:Z
    move-object v1, p1

    .end local p1           #engineProvider:Ljava/security/Provider;
    .restart local v1       #engineProvider:Ljava/security/Provider;
    move v2, v0

    .end local v0           #needSetMode:Z
    .local v2, needSetMode:Z
    move v3, v4

    .end local v4           #needSetPadding:Z
    .local v3, needSetPadding:Z
    move-object v0, v5

    .line 307
    goto/16 :goto_38

    .line 309
    .end local v1           #engineProvider:Ljava/security/Provider;
    .local v2, i:I
    .local v3, needSetMode:Z
    .restart local v4       #needSetPadding:Z
    .restart local p1       #engineProvider:Ljava/security/Provider;
    :pswitch_111
    const/4 v1, 0x1

    .line 310
    .end local v4           #needSetPadding:Z
    .local v1, needSetPadding:Z
    const/4 v0, 0x1

    .end local v3           #needSetMode:Z
    .restart local v0       #needSetMode:Z
    move v2, v0

    .end local v0           #needSetMode:Z
    .local v2, needSetMode:Z
    move v3, v1

    .end local v1           #needSetPadding:Z
    .local v3, needSetPadding:Z
    move-object v1, p1

    .end local p1           #engineProvider:Ljava/security/Provider;
    .local v1, engineProvider:Ljava/security/Provider;
    move-object v0, v5

    goto/16 :goto_38

    .line 316
    .end local v6           #searchOrder:[Ljava/lang/String;
    :cond_119
    instance-of p1, v0, Ljavax/crypto/CipherSpi;

    if-nez p1, :cond_12b

    .line 317
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .end local p0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    .restart local p0
    :cond_12b
    check-cast v0, Ljavax/crypto/CipherSpi;

    .line 320
    .local v0, cspi:Ljavax/crypto/CipherSpi;
    new-instance p1, Ljavax/crypto/Cipher;

    invoke-direct {p1, v0, v1, p0}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 321
    .local p1, c:Ljavax/crypto/Cipher;
    if-eqz v2, :cond_13c

    .line 322
    iget-object p0, p1, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    .end local p0
    const/4 v0, 0x1

    aget-object v0, v7, v0

    .end local v0           #cspi:Ljavax/crypto/CipherSpi;
    invoke-virtual {p0, v0}, Ljavax/crypto/CipherSpi;->engineSetMode(Ljava/lang/String;)V

    .line 324
    :cond_13c
    if-eqz v3, :cond_146

    .line 325
    iget-object p0, p1, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v0, 0x2

    aget-object v0, v7, v0

    invoke-virtual {p0, v0}, Ljavax/crypto/CipherSpi;->engineSetPadding(Ljava/lang/String;)V
    :try_end_146
    .catchall {:try_start_f3 .. :try_end_146} :catchall_10

    .line 327
    :cond_146
    monitor-exit v8

    return-object p1

    .line 295
    .local v0, engineSpi:Ljava/lang/Object;
    .local v2, i:I
    .local v3, needSetMode:Z
    .restart local v4       #needSetPadding:Z
    .restart local v5       #sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .restart local v6       #searchOrder:[Ljava/lang/String;
    .restart local p0
    .local p1, provider:Ljava/security/Provider;
    :catch_148
    move-exception v5

    move-object v11, v5

    move-object v5, v0

    move-object v0, v11

    goto :goto_f3

    .end local v0           #engineSpi:Ljava/lang/Object;
    .end local v5           #sap:Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_14d
    move-object p1, v1

    .end local v1           #engineProvider:Ljava/security/Provider;
    .local p1, engineProvider:Ljava/security/Provider;
    move-object v5, v0

    goto :goto_da

    .line 301
    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_103
        :pswitch_10a
        :pswitch_111
    .end packed-switch
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 2
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 6
    .parameter "transformation"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 203
    if-nez p1, :cond_a

    .line 204
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_a
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 208
    .local v0, p:Ljava/security/Provider;
    if-nez v0, :cond_29

    .line 209
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_29
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .registers 5
    .parameter "transformation"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 235
    if-nez p1, :cond_a

    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_a
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 239
    .local v0, c:Ljavax/crypto/Cipher;
    return-object v0
.end method

.method public static final getMaxAllowedKeyLength(Ljava/lang/String;)I
    .registers 2
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1332
    if-nez p0, :cond_8

    .line 1333
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1335
    :cond_8
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 1337
    const v0, 0x7fffffff

    return v0
.end method

.method public static final getMaxAllowedParameterSpec(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1356
    if-nez p0, :cond_8

    .line 1357
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1359
    :cond_8
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 1361
    const/4 v0, 0x0

    return-object v0
.end method

.method private static invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;
    .registers 4
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transformation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 5
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1256
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 1257
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1259
    :cond_10
    if-ne p1, p2, :cond_1a

    .line 1260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :cond_1a
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final doFinal([BI)I
    .registers 9
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1073
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 1074
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1076
    :cond_11
    if-gez p2, :cond_1b

    .line 1077
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1079
    :cond_1b
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    move v3, v2

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[B)I
    .registers 11
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1178
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[BI)I
    .registers 12
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1216
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 1217
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1219
    :cond_10
    if-ltz p2, :cond_19

    if-ltz p3, :cond_19

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_21

    .line 1220
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect inputOffset/inputLen parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1222
    :cond_21
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1040
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 1041
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1043
    :cond_11
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([B)[B
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1102
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 1103
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1105
    :cond_10
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([BII)[B
    .registers 6
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1136
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 1137
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1139
    :cond_10
    if-ltz p2, :cond_19

    if-ltz p3, :cond_19

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_21

    .line 1140
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect inputOffset/inputLen parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1142
    :cond_21
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockSize()I
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetBlockSize()I

    move-result v0

    return v0
.end method

.method public final getExemptionMechanism()Ljavax/crypto/ExemptionMechanism;
    .registers 2

    .prologue
    .line 439
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIV()[B
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetIV()[B

    move-result-object v0

    return-object v0
.end method

.method public final getOutputSize(I)I
    .registers 4
    .parameter "inputLen"

    .prologue
    .line 398
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    if-nez v0, :cond_c

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher has not yet been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_c
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(ILjava/security/Key;)V
    .registers 4
    .parameter "opmode"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 472
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 476
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    .line 478
    :cond_b
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 479
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    .registers 5
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 654
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 655
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    .line 657
    :cond_b
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 658
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 6
    .parameter "opmode"
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
    .line 699
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    .line 706
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 707
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 708
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 5
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    .line 518
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 519
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 520
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 562
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 563
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    .line 565
    :cond_b
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 566
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
    .parameter "opmode"
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
    .line 608
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    .line 615
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 616
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 617
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;)V
    .registers 4
    .parameter "opmode"
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 744
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 745
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    .line 747
    :cond_b
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V

    .line 748
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V
    .registers 12
    .parameter "opmode"
    .parameter "certificate"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 787
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    .line 788
    instance-of v6, p2, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_5c

    .line 789
    move-object v0, p2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 790
    .local v1, ce:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 791
    .local v2, critical:Z
    if-eqz v1, :cond_5c

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5c

    .line 792
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 793
    .local v5, oid:Ljava/lang/String;
    const-string v6, "2.5.29.15"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 794
    const/4 v2, 0x1

    .line 798
    .end local v5           #oid:Ljava/lang/String;
    :cond_32
    if-eqz v2, :cond_5c

    .line 799
    move-object v0, p2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v4

    .line 815
    .local v4, keyUsage:[Z
    if-eqz v4, :cond_5c

    .line 816
    const/4 v6, 0x1

    if-ne p1, v6, :cond_4d

    aget-boolean v6, v4, v7

    if-nez v6, :cond_4d

    .line 817
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "The public key in the certificate cannot be used for ENCRYPT_MODE"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 819
    :cond_4d
    if-ne p1, v7, :cond_5c

    const/4 v6, 0x2

    aget-boolean v6, v4, v6

    if-nez v6, :cond_5c

    .line 820
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "The public key in the certificate cannot be used for WRAP_MODE"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 830
    .end local v1           #ce:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #critical:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #keyUsage:[Z
    :cond_5c
    iget-object v6, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v6, p1, v7, p3}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 831
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 832
    return-void
.end method

.method public final unwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 6
    .parameter "wrappedKey"
    .parameter "wrappedKeyAlgorithm"
    .parameter "wrappedKeyType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1311
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    .line 1312
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1314
    :cond_b
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 5
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 1013
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 1014
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1016
    :cond_10
    if-ne p1, p2, :cond_1a

    .line 1017
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_1a
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final update([BII[B)I
    .registers 11
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 929
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    return v0
.end method

.method public final update([BII[BI)I
    .registers 12
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 964
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 965
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 967
    :cond_10
    if-nez p1, :cond_1a

    .line 968
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_1a
    if-nez p4, :cond_24

    .line 971
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_24
    if-gez p5, :cond_2e

    .line 974
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_2e
    if-ltz p2, :cond_39

    if-ltz p3, :cond_39

    array-length v0, p1

    if-gt p3, v0, :cond_39

    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_41

    .line 978
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect inputOffset/inputLen parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_41
    array-length v0, p1

    if-nez v0, :cond_46

    .line 981
    const/4 v0, 0x0

    .line 983
    :goto_45
    return v0

    :cond_46
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    goto :goto_45
.end method

.method public final update([B)[B
    .registers 5
    .parameter "input"

    .prologue
    .line 849
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 850
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 852
    :cond_10
    if-nez p1, :cond_1a

    .line 853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_1a
    array-length v0, p1

    if-nez v0, :cond_1f

    .line 856
    const/4 v0, 0x0

    .line 858
    :goto_1e
    return-object v0

    :cond_1f
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    goto :goto_1e
.end method

.method public final update([BII)[B
    .registers 6
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 882
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 883
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 885
    :cond_10
    if-nez p1, :cond_1a

    .line 886
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_1a
    if-ltz p2, :cond_25

    if-ltz p3, :cond_25

    array-length v0, p1

    if-gt p3, v0, :cond_25

    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_2d

    .line 891
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect inputOffset/inputLen parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_2d
    array-length v0, p1

    if-nez v0, :cond_32

    .line 894
    const/4 v0, 0x0

    .line 896
    :goto_31
    return-object v0

    :cond_32
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    goto :goto_31
.end method

.method public final wrap(Ljava/security/Key;)[B
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1281
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    .line 1282
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1284
    :cond_b
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineWrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
