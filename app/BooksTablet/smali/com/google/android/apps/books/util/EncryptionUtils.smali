.class public Lcom/google/android/apps/books/util/EncryptionUtils;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;,
        Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;,
        Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
    }
.end annotation


# static fields
.field private static final IV_LENGTH:I = 0x10

.field public static final SEPARATOR:[B = null

.field private static final TAG:Ljava/lang/String; = "EncryptionUtils"

.field public static final UPGRADE_SEPARATOR:[B

.field private static sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

.field private static sRANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, ":"

    invoke-static {v0}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    .line 48
    const-string v0, ","

    invoke-static {v0}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/util/EncryptionUtils;->UPGRADE_SEPARATOR:[B

    .line 53
    new-instance v0, Lcom/google/android/apps/books/util/PlatformK_rStorage;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/PlatformK_rStorage;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    .line 57
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/util/EncryptionUtils;->sRANDOM:Ljava/util/Random;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method

.method private static D_r([B)[B
    .locals 8
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 167
    sget-object v5, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    invoke-interface {v5}, Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;->getK_r()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 168
    .local v0, K_r:Ljavax/crypto/SecretKey;
    sget-object v5, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    invoke-interface {v5}, Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;->getK_rVersion()I

    move-result v1

    .line 172
    .local v1, K_rVersion:I
    sget-object v5, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    invoke-static {p0, v6, v5}, Lcom/google/android/apps/books/util/ByteArrayUtils;->bufferIndexOf([BI[B)I

    move-result v3

    .line 173
    .local v3, offset:I
    invoke-static {p0, v6, v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readIntString([B)I

    move-result v4

    .line 174
    .local v4, version:I
    sget-object v5, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    array-length v5, v5

    add-int/2addr v5, v3

    invoke-static {p0, v5}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object p0

    .line 176
    if-eq v4, v1, :cond_0

    .line 177
    new-instance v5, Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected K_r \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' (expecting \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'); recoverable by refreshing with server."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 182
    :cond_0
    const/16 v5, 0xb

    invoke-static {p0, v5}, Lcom/google/android/apps/books/util/Base64;->decode([BI)[B

    move-result-object p0

    .line 183
    invoke-static {p0, v6, v7}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v2

    .line 184
    .local v2, iv:[B
    invoke-static {p0, v7}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object p0

    .line 187
    invoke-static {v0, v2, p0}, Lcom/google/android/apps/books/util/EncryptionUtils;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    return-object v5
.end method

.method public static D_s([B[BLjava/lang/String;)[B
    .locals 11
    .parameter "payload"
    .parameter "encryptedK_sClause"
    .parameter "expectedK_sVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x0

    .line 198
    invoke-static {p1}, Lcom/google/android/apps/books/util/EncryptionUtils;->D_r([B)[B

    move-result-object v1

    .line 202
    .local v1, K_sClause:[B
    sget-object v6, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    invoke-static {v1, v9, v6}, Lcom/google/android/apps/books/util/ByteArrayUtils;->bufferIndexOf([BI[B)I

    move-result v4

    .line 203
    .local v4, offset:I
    sget-object v6, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    array-length v6, v6

    add-int/2addr v6, v4

    invoke-static {v1, v6}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object v1

    .line 206
    sget-object v6, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    invoke-static {v1, v9, v6}, Lcom/google/android/apps/books/util/ByteArrayUtils;->bufferIndexOf([BI[B)I

    move-result v4

    .line 207
    invoke-static {v1, v9, v4}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, K_sVersion:Ljava/lang/String;
    sget-object v6, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    array-length v6, v6

    add-int/2addr v6, v4

    invoke-static {v1, v6}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object v1

    .line 210
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected session key \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' (expecting \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\')."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 215
    invoke-static {v1}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/books/util/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object v0

    .line 216
    .local v0, K_s:[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 219
    .local v5, sessionKey:Ljavax/crypto/SecretKey;
    invoke-static {p0, v9, v10}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v3

    .line 220
    .local v3, iv:[B
    invoke-static {p0, v10}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object p0

    .line 223
    invoke-static {v5, v3, p0}, Lcom/google/android/apps/books/util/EncryptionUtils;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v6

    return-object v6
.end method

.method public static E_r([B)[B
    .locals 8
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 141
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    invoke-interface {v3}, Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;->getK_r()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 142
    .local v0, K_r:Ljavax/crypto/SecretKey;
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    invoke-interface {v3}, Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;->getK_rVersion()I

    move-result v1

    .line 143
    .local v1, K_rVersion:I
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->generateRandomIv()[B

    move-result-object v2

    .line 146
    .local v2, iv:[B
    invoke-static {v0, v2, p0}, Lcom/google/android/apps/books/util/EncryptionUtils;->encrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object p0

    .line 147
    new-array v3, v7, [[B

    aput-object v2, v3, v5

    aput-object p0, v3, v6

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers([[B)[B

    move-result-object p0

    .line 148
    const/16 v3, 0xb

    invoke-static {p0, v3}, Lcom/google/android/apps/books/util/Base64;->encode([BI)[B

    move-result-object p0

    .line 149
    const/4 v3, 0x3

    new-array v3, v3, [[B

    invoke-static {v1}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeIntString(I)[B

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    aput-object v4, v3, v6

    aput-object p0, v3, v7

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers([[B)[B

    move-result-object v3

    return-object v3
.end method

.method private static decrypt(Ljavax/crypto/SecretKey;[B[B)[B
    .locals 6
    .parameter "key"
    .parameter "iv"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 119
    invoke-static {p2, v5, v4}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readIntLittle([B)I

    move-result v2

    .line 120
    .local v2, length:I
    invoke-static {p2, v4}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object p2

    .line 122
    const-string v3, "AES/CBC/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 123
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v3, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 124
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 128
    .local v1, decrypted:[B
    array-length v3, v1

    if-gt v2, v3, :cond_0

    array-length v3, v1

    sub-int/2addr v3, v2

    const/16 v4, 0x10

    if-le v3, v4, :cond_1

    .line 129
    :cond_0
    new-instance v3, Ljava/security/GeneralSecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid expected mesg length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " decrypted length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_1
    invoke-static {v1, v5, v2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v3

    return-object v3
.end method

.method private static encrypt(Ljavax/crypto/SecretKey;[B[B)[B
    .locals 6
    .parameter "key"
    .parameter "iv"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 104
    const-string v3, "AES/CBC/ZeroBytePadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 105
    .local v0, cipher:Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v5, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 106
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 109
    .local v1, encrypted:[B
    array-length v3, p2

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeIntLittle(I)[B

    move-result-object v2

    .line 110
    .local v2, lengthRaw:[B
    const/4 v3, 0x2

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers([[B)[B

    move-result-object v3

    return-object v3
.end method

.method public static extractK_sMetadata([B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    .locals 5
    .parameter "encryptedK_sClause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 232
    new-instance v1, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;

    invoke-direct {v1}, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;-><init>()V

    .line 235
    .local v1, meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    invoke-static {p0}, Lcom/google/android/apps/books/util/EncryptionUtils;->D_r([B)[B

    move-result-object v0

    .line 239
    .local v0, K_sClause:[B
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    invoke-static {v0, v4, v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->bufferIndexOf([BI[B)I

    move-result v2

    .line 240
    .local v2, offset:I
    invoke-static {v0, v4, v2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->nonce:[B

    .line 241
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    array-length v3, v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object v0

    .line 244
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    invoke-static {v0, v4, v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->bufferIndexOf([BI[B)I

    move-result v2

    .line 245
    invoke-static {v0, v4, v2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_sVersion:Ljava/lang/String;

    .line 246
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    invoke-interface {v3}, Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;->getK_rVersion()I

    move-result v3

    iput v3, v1, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_rVersion:I

    .line 248
    return-object v1
.end method

.method public static generateAppInfo(Landroid/content/Context;)[B
    .locals 6
    .parameter "context"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    .line 81
    .local v1, config:Lcom/google/android/apps/books/util/Config;
    invoke-virtual {v1}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, source:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 84
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "android_id"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, androidId:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeString(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4
.end method

.method public static generateNonce()J
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getSecureRandom()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static generateRandomIv()[B
    .locals 2

    .prologue
    .line 94
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 95
    .local v0, iv:[B
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getSecureRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 96
    return-object v0
.end method

.method public static getK_rVersion()I
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    invoke-interface {v0}, Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;->getK_rVersion()I

    move-result v0

    return v0
.end method

.method private static getSecureRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/apps/books/util/EncryptionUtils;->sRANDOM:Ljava/util/Random;

    return-object v0
.end method

.method public static setK_rStorage(Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;)V
    .locals 0
    .parameter "value"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 62
    sput-object p0, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    .line 63
    return-void
.end method

.method public static setRandom(Ljava/util/Random;)V
    .locals 0
    .parameter "random"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 67
    sput-object p0, Lcom/google/android/apps/books/util/EncryptionUtils;->sRANDOM:Ljava/util/Random;

    .line 68
    return-void
.end method
