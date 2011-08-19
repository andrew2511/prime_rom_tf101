.class public abstract Lcom/amazon/system/security/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final BASE34_MODIF:[C

.field private static final CRC_TABLE:[I

.field public static STORAGE_TYPE_CDROM:I

.field public static STORAGE_TYPE_FIXED:I

.field public static STORAGE_TYPE_RAMDISK:I

.field public static STORAGE_TYPE_REMOTE:I

.field public static STORAGE_TYPE_REMOVABLE:I

.field public static STORAGE_TYPE_UNKNOW:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 22
    const/4 v2, 0x0

    sput v2, Lcom/amazon/system/security/Security;->STORAGE_TYPE_UNKNOW:I

    .line 27
    const/4 v2, 0x1

    sput v2, Lcom/amazon/system/security/Security;->STORAGE_TYPE_CDROM:I

    .line 32
    const/4 v2, 0x2

    sput v2, Lcom/amazon/system/security/Security;->STORAGE_TYPE_REMOVABLE:I

    .line 37
    const/4 v2, 0x3

    sput v2, Lcom/amazon/system/security/Security;->STORAGE_TYPE_FIXED:I

    .line 42
    const/4 v2, 0x4

    sput v2, Lcom/amazon/system/security/Security;->STORAGE_TYPE_RAMDISK:I

    .line 47
    const/4 v2, 0x5

    sput v2, Lcom/amazon/system/security/Security;->STORAGE_TYPE_REMOTE:I

    .line 50
    const/16 v2, 0x22

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/amazon/system/security/Security;->BASE34_MODIF:[C

    .line 57
    const/16 v2, 0x100

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/system/security/Security;->CRC_TABLE:[I

    .line 61
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    sget-object v2, Lcom/amazon/system/security/Security;->CRC_TABLE:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 63
    sget-object v2, Lcom/amazon/system/security/Security;->CRC_TABLE:[I

    aput v0, v2, v0

    .line 64
    const/4 v1, 0x0

    .local v1, jj:I
    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 66
    sget-object v2, Lcom/amazon/system/security/Security;->CRC_TABLE:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 68
    sget-object v2, Lcom/amazon/system/security/Security;->CRC_TABLE:[I

    sget-object v3, Lcom/amazon/system/security/Security;->CRC_TABLE:[I

    aget v3, v3, v0

    ushr-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 64
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    :cond_0
    sget-object v2, Lcom/amazon/system/security/Security;->CRC_TABLE:[I

    const v3, -0x12477ce0

    sget-object v4, Lcom/amazon/system/security/Security;->CRC_TABLE:[I

    aget v4, v4, v0

    ushr-int/lit8 v4, v4, 0x1

    xor-int/2addr v3, v4

    aput v3, v2, v0

    goto :goto_2

    .line 61
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1           #jj:I
    :cond_2
    return-void

    .line 50
    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method protected static crc32([B)I
    .locals 4
    .parameter "buffer"

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 87
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 89
    sget-object v2, Lcom/amazon/system/security/Security;->CRC_TABLE:[I

    aget-byte v3, p0, v0

    xor-int/2addr v3, v1

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    ushr-int/lit8 v3, v1, 0x8

    xor-int v1, v2, v3

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return v1
.end method

.method public static generatePID(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .parameter "seed"
    .parameter "outLength"

    .prologue
    const/4 v10, 0x0

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v4, v8, [B

    .line 191
    .local v4, in:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 193
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v4, v3

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {v4}, Lcom/amazon/system/security/Security;->crc32([B)I

    move-result v0

    .line 201
    .local v0, bin_checksum:I
    new-array v5, p1, [B

    .line 203
    .local v5, out:[B
    const/4 v6, 0x0

    .local v6, outi:I
    :goto_1
    if-ge v6, p1, :cond_1

    .line 205
    aput-byte v10, v5, v6

    .line 203
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 208
    :cond_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 210
    aget-byte v8, v5, v6

    aget-byte v9, v4, v3

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    .line 211
    add-int/lit8 v6, v6, 0x1

    .line 212
    if-ne v6, p1, :cond_2

    const/4 v6, 0x0

    .line 208
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 216
    :cond_3
    const/4 v8, 0x4

    new-array v2, v8, [B

    .line 217
    .local v2, crcmixer:[B
    ushr-int/lit8 v8, v0, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v10

    .line 218
    const/4 v8, 0x1

    ushr-int/lit8 v9, v0, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 219
    const/4 v8, 0x2

    ushr-int/lit8 v9, v0, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 220
    const/4 v8, 0x3

    and-int/lit16 v9, v0, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 222
    const/4 v6, 0x0

    :goto_3
    if-ge v6, p1, :cond_4

    .line 224
    aget-byte v8, v5, v6

    and-int/lit8 v9, v6, 0x3

    aget-byte v9, v2, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    .line 222
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 227
    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 231
    .local v7, pid:Ljava/lang/String;
    const/4 v6, 0x0

    :goto_4
    if-ge v6, p1, :cond_5

    .line 233
    aget-byte v8, v5, v6

    and-int/lit16 v1, v8, 0xff

    .line 235
    .local v1, c:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/amazon/system/security/Security;->BASE34_MODIF:[C

    ushr-int/lit8 v10, v1, 0x7

    ushr-int/lit8 v11, v1, 0x5

    and-int/lit8 v11, v11, 0x3

    and-int/lit8 v12, v1, 0x1f

    xor-int/2addr v11, v12

    add-int/2addr v10, v11

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 231
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 238
    .end local v1           #c:I
    :cond_5
    return-object v7
.end method

.method public static getChecksumedPID(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 148
    if-nez p0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    move v1, v6

    .line 153
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_1
    invoke-static {v0}, Lcom/amazon/system/security/Security;->crc32([B)I

    move-result v0

    .line 162
    shr-int/lit8 v1, v0, 0x10

    .line 163
    xor-int/2addr v0, v1

    .line 164
    new-array v1, v7, [C

    move v2, v0

    move v0, v6

    .line 166
    :goto_2
    if-ge v0, v7, :cond_3

    .line 168
    and-int/lit16 v3, v2, 0xff

    .line 169
    sget-object v4, Lcom/amazon/system/security/Security;->BASE34_MODIF:[C

    array-length v4, v4

    div-int v4, v3, v4

    sget-object v5, Lcom/amazon/system/security/Security;->BASE34_MODIF:[C

    array-length v5, v5

    rem-int/2addr v3, v5

    xor-int/2addr v3, v4

    .line 171
    sget-object v4, Lcom/amazon/system/security/Security;->BASE34_MODIF:[C

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 172
    sget-object v4, Lcom/amazon/system/security/Security;->BASE34_MODIF:[C

    array-length v4, v4

    sub-int/2addr v3, v4

    .line 174
    :cond_2
    sget-object v4, Lcom/amazon/system/security/Security;->BASE34_MODIF:[C

    aget-char v3, v4, v3

    aput-char v3, v1, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 177
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-char v2, v1, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPid(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[B[[B)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 338
    const/4 v0, 0x0

    .line 339
    if-eqz p0, :cond_4

    .line 343
    if-eqz p2, :cond_0

    .line 345
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/amazon/system/security/IMessageDigest;->update([B)V

    .line 348
    :cond_0
    if-eqz p3, :cond_1

    .line 350
    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/amazon/system/security/IMessageDigest;->update([B)V

    .line 353
    :cond_1
    if-eqz p4, :cond_2

    .line 355
    invoke-interface {p0, p4}, Lcom/amazon/system/security/IMessageDigest;->update([B)V

    .line 358
    :cond_2
    if-eqz p5, :cond_3

    move v1, v2

    .line 360
    :goto_0
    array-length v2, p5

    if-ge v1, v2, :cond_3

    .line 362
    aget-object v2, p5, v1

    invoke-interface {p0, v2}, Lcom/amazon/system/security/IMessageDigest;->update([B)V

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :cond_3
    invoke-interface {p0}, Lcom/amazon/system/security/IMessageDigest;->digest()[B

    move-result-object v1

    .line 368
    invoke-interface {p1, v1}, Lcom/amazon/system/security/IBase64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 369
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 376
    :cond_4
    :goto_1
    return-object v0

    .line 371
    :catch_0
    move-exception v1

    .line 373
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1
.end method

.method public static getPids(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[B[[B)[Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 297
    if-eqz p4, :cond_2

    .line 298
    array-length v0, p4

    move v6, v0

    .line 300
    :goto_0
    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v6

    new-array v7, v0, [Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    .line 306
    aput-object p2, v7, v0

    .line 311
    const/4 p2, 0x0

    :goto_1
    if-ge p2, v6, :cond_0

    .line 313
    add-int/lit8 v8, v0, 0x1

    .line 314
    aget-object v3, p4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/amazon/system/security/Security;->getPid(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[B[[B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    .line 311
    add-int/lit8 p2, p2, 0x1

    move v0, v8

    goto :goto_1

    .line 320
    :cond_0
    add-int/lit8 p2, v0, 0x1

    .line 321
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/amazon/system/security/Security;->getPid(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[B[[B)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v7, p2

    .line 326
    const/4 p3, 0x0

    move v9, p3

    move p3, p2

    move p2, v9

    :goto_2
    if-ge p2, v6, :cond_1

    .line 328
    add-int/lit8 p3, p3, 0x1

    .line 329
    const/4 v2, 0x0

    aget-object v3, p4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/amazon/system/security/Security;->getPid(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[B[[B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, p3

    .line 326
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 332
    :cond_1
    return-object v7

    :cond_2
    move v6, v0

    goto :goto_0
.end method


# virtual methods
.method public customDrmOnly()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getAccountSecrets()[Ljava/lang/String;
.end method

.method public abstract getBase64()Lcom/amazon/system/security/IBase64;
.end method

.method public abstract getDeviceSerialNumber()Ljava/lang/String;
.end method

.method public abstract getPID()Ljava/lang/String;
.end method

.method public abstract getPassword(II)Ljava/lang/String;
.end method

.method public abstract getSHA1MessageDigest()Lcom/amazon/system/security/IMessageDigest;
.end method

.method public abstract getStorageSerialNumber(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStorageType(Ljava/lang/String;)I
.end method
