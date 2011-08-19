.class public Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;
.super Ljava/lang/Object;
.source "RC2Engine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static piTable:[B


# instance fields
.field private encrypting:Z

.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    return-void

    :array_a
    .array-data 0x1
        0xd9t
        0x78t
        0xf9t
        0xc4t
        0x19t
        0xddt
        0xb5t
        0xedt
        0x28t
        0xe9t
        0xfdt
        0x79t
        0x4at
        0xa0t
        0xd8t
        0x9dt
        0xc6t
        0x7et
        0x37t
        0x83t
        0x2bt
        0x76t
        0x53t
        0x8et
        0x62t
        0x4ct
        0x64t
        0x88t
        0x44t
        0x8bt
        0xfbt
        0xa2t
        0x17t
        0x9at
        0x59t
        0xf5t
        0x87t
        0xb3t
        0x4ft
        0x13t
        0x61t
        0x45t
        0x6dt
        0x8dt
        0x9t
        0x81t
        0x7dt
        0x32t
        0xbdt
        0x8ft
        0x40t
        0xebt
        0x86t
        0xb7t
        0x7bt
        0xbt
        0xf0t
        0x95t
        0x21t
        0x22t
        0x5ct
        0x6bt
        0x4et
        0x82t
        0x54t
        0xd6t
        0x65t
        0x93t
        0xcet
        0x60t
        0xb2t
        0x1ct
        0x73t
        0x56t
        0xc0t
        0x14t
        0xa7t
        0x8ct
        0xf1t
        0xdct
        0x12t
        0x75t
        0xcat
        0x1ft
        0x3bt
        0xbet
        0xe4t
        0xd1t
        0x42t
        0x3dt
        0xd4t
        0x30t
        0xa3t
        0x3ct
        0xb6t
        0x26t
        0x6ft
        0xbft
        0xet
        0xdat
        0x46t
        0x69t
        0x7t
        0x57t
        0x27t
        0xf2t
        0x1dt
        0x9bt
        0xbct
        0x94t
        0x43t
        0x3t
        0xf8t
        0x11t
        0xc7t
        0xf6t
        0x90t
        0xeft
        0x3et
        0xe7t
        0x6t
        0xc3t
        0xd5t
        0x2ft
        0xc8t
        0x66t
        0x1et
        0xd7t
        0x8t
        0xe8t
        0xeat
        0xdet
        0x80t
        0x52t
        0xeet
        0xf7t
        0x84t
        0xaat
        0x72t
        0xact
        0x35t
        0x4dt
        0x6at
        0x2at
        0x96t
        0x1at
        0xd2t
        0x71t
        0x5at
        0x15t
        0x49t
        0x74t
        0x4bt
        0x9ft
        0xd0t
        0x5et
        0x4t
        0x18t
        0xa4t
        0xect
        0xc2t
        0xe0t
        0x41t
        0x6et
        0xft
        0x51t
        0xcbt
        0xcct
        0x24t
        0x91t
        0xaft
        0x50t
        0xa1t
        0xf4t
        0x70t
        0x39t
        0x99t
        0x7ct
        0x3at
        0x85t
        0x23t
        0xb8t
        0xb4t
        0x7at
        0xfct
        0x2t
        0x36t
        0x5bt
        0x25t
        0x55t
        0x97t
        0x31t
        0x2dt
        0x5dt
        0xfat
        0x98t
        0xe3t
        0x8at
        0x92t
        0xaet
        0x5t
        0xdft
        0x29t
        0x10t
        0x67t
        0x6ct
        0xbat
        0xc9t
        0xd3t
        0x0t
        0xe6t
        0xcft
        0xe1t
        0x9et
        0xa8t
        0x2ct
        0x63t
        0x16t
        0x1t
        0x3ft
        0x58t
        0xe2t
        0x89t
        0xa9t
        0xdt
        0x38t
        0x34t
        0x1bt
        0xabt
        0x33t
        0xfft
        0xb0t
        0xbbt
        0x48t
        0xct
        0x5ft
        0xb9t
        0xb1t
        0xcdt
        0x2et
        0xc5t
        0xf3t
        0xdbt
        0x47t
        0xe5t
        0xa5t
        0x9ct
        0x77t
        0xat
        0xa6t
        0x20t
        0x68t
        0xfet
        0x7ft
        0xc1t
        0xadt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decryptBlock([BI[BI)V
    .registers 14
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 268
    add-int/lit8 v5, p2, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v4, v5, v6

    .line 269
    .local v4, x76:I
    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v3, v5, v6

    .line 270
    .local v3, x54:I
    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 271
    .local v2, x32:I
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v1, v5, v6

    .line 273
    .local v1, x10:I
    const/16 v0, 0x3c

    .local v0, i:I
    :goto_42
    const/16 v5, 0x2c

    if-lt v0, v5, :cond_9b

    .line 275
    const/16 v5, 0xb

    invoke-direct {p0, v4, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    and-int v7, v2, v3

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x3

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v4, v5, v6

    .line 276
    const/16 v5, 0xd

    invoke-direct {p0, v3, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v4

    and-int v7, v1, v2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 277
    const/16 v5, 0xe

    invoke-direct {p0, v2, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    and-int v7, v4, v1

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v2, v5, v6

    .line 278
    const/16 v5, 0xf

    invoke-direct {p0, v1, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v4, -0x1

    and-int/2addr v6, v2

    and-int v7, v3, v4

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v7, v7, v0

    add-int/2addr v6, v7

    sub-int v1, v5, v6

    .line 273
    add-int/lit8 v0, v0, -0x4

    goto :goto_42

    .line 281
    :cond_9b
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v3, 0x3f

    aget v5, v5, v6

    sub-int/2addr v4, v5

    .line 282
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v2, 0x3f

    aget v5, v5, v6

    sub-int/2addr v3, v5

    .line 283
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v1, 0x3f

    aget v5, v5, v6

    sub-int/2addr v2, v5

    .line 284
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    sub-int/2addr v1, v5

    .line 286
    const/16 v0, 0x28

    :goto_b9
    const/16 v5, 0x14

    if-lt v0, v5, :cond_112

    .line 288
    const/16 v5, 0xb

    invoke-direct {p0, v4, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    and-int v7, v2, v3

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x3

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v4, v5, v6

    .line 289
    const/16 v5, 0xd

    invoke-direct {p0, v3, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v4

    and-int v7, v1, v2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 290
    const/16 v5, 0xe

    invoke-direct {p0, v2, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    and-int v7, v4, v1

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v2, v5, v6

    .line 291
    const/16 v5, 0xf

    invoke-direct {p0, v1, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v4, -0x1

    and-int/2addr v6, v2

    and-int v7, v3, v4

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v7, v7, v0

    add-int/2addr v6, v7

    sub-int v1, v5, v6

    .line 286
    add-int/lit8 v0, v0, -0x4

    goto :goto_b9

    .line 294
    :cond_112
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v3, 0x3f

    aget v5, v5, v6

    sub-int/2addr v4, v5

    .line 295
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v2, 0x3f

    aget v5, v5, v6

    sub-int/2addr v3, v5

    .line 296
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v1, 0x3f

    aget v5, v5, v6

    sub-int/2addr v2, v5

    .line 297
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    sub-int/2addr v1, v5

    .line 299
    const/16 v0, 0x10

    :goto_130
    if-ltz v0, :cond_187

    .line 301
    const/16 v5, 0xb

    invoke-direct {p0, v4, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    and-int v7, v2, v3

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x3

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v4, v5, v6

    .line 302
    const/16 v5, 0xd

    invoke-direct {p0, v3, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v4

    and-int v7, v1, v2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 303
    const/16 v5, 0xe

    invoke-direct {p0, v2, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    and-int v7, v4, v1

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v2, v5, v6

    .line 304
    const/16 v5, 0xf

    invoke-direct {p0, v1, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v4, -0x1

    and-int/2addr v6, v2

    and-int v7, v3, v4

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v7, v7, v0

    add-int/2addr v6, v7

    sub-int v1, v5, v6

    .line 299
    add-int/lit8 v0, v0, -0x4

    goto :goto_130

    .line 307
    :cond_187
    add-int/lit8 v5, p4, 0x0

    int-to-byte v6, v1

    aput-byte v6, p3, v5

    .line 308
    add-int/lit8 v5, p4, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 309
    add-int/lit8 v5, p4, 0x2

    int-to-byte v6, v2

    aput-byte v6, p3, v5

    .line 310
    add-int/lit8 v5, p4, 0x3

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 311
    add-int/lit8 v5, p4, 0x4

    int-to-byte v6, v3

    aput-byte v6, p3, v5

    .line 312
    add-int/lit8 v5, p4, 0x5

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 313
    add-int/lit8 v5, p4, 0x6

    int-to-byte v6, v4

    aput-byte v6, p3, v5

    .line 314
    add-int/lit8 v5, p4, 0x7

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 315
    return-void
.end method

.method private encryptBlock([BI[BI)V
    .registers 13
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 211
    add-int/lit8 v5, p2, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v4, v5, v6

    .line 212
    .local v4, x76:I
    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v3, v5, v6

    .line 213
    .local v3, x54:I
    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 214
    .local v2, x32:I
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v1, v5, v6

    .line 216
    .local v1, x10:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_41
    const/16 v5, 0x10

    if-gt v0, v5, :cond_92

    .line 218
    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    add-int/2addr v5, v1

    and-int v6, v3, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v6, v6, v0

    add-int/2addr v5, v6

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    .line 219
    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    add-int/2addr v5, v2

    and-int v6, v4, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    .line 220
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v4

    add-int/2addr v5, v3

    and-int v6, v1, v2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    .line 221
    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    add-int/2addr v5, v4

    and-int v6, v2, v3

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    .line 216
    add-int/lit8 v0, v0, 0x4

    goto :goto_41

    .line 224
    :cond_92
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    add-int/2addr v1, v5

    .line 225
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v1, 0x3f

    aget v5, v5, v6

    add-int/2addr v2, v5

    .line 226
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v2, 0x3f

    aget v5, v5, v6

    add-int/2addr v3, v5

    .line 227
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v3, 0x3f

    aget v5, v5, v6

    add-int/2addr v4, v5

    .line 229
    const/16 v0, 0x14

    :goto_b0
    const/16 v5, 0x28

    if-gt v0, v5, :cond_101

    .line 231
    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    add-int/2addr v5, v1

    and-int v6, v3, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v6, v6, v0

    add-int/2addr v5, v6

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    .line 232
    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    add-int/2addr v5, v2

    and-int v6, v4, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    .line 233
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v4

    add-int/2addr v5, v3

    and-int v6, v1, v2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    .line 234
    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    add-int/2addr v5, v4

    and-int v6, v2, v3

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    .line 229
    add-int/lit8 v0, v0, 0x4

    goto :goto_b0

    .line 237
    :cond_101
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    add-int/2addr v1, v5

    .line 238
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v1, 0x3f

    aget v5, v5, v6

    add-int/2addr v2, v5

    .line 239
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v2, 0x3f

    aget v5, v5, v6

    add-int/2addr v3, v5

    .line 240
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v3, 0x3f

    aget v5, v5, v6

    add-int/2addr v4, v5

    .line 242
    const/16 v0, 0x2c

    :goto_11f
    const/16 v5, 0x40

    if-ge v0, v5, :cond_170

    .line 244
    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    add-int/2addr v5, v1

    and-int v6, v3, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v6, v6, v0

    add-int/2addr v5, v6

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    .line 245
    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    add-int/2addr v5, v2

    and-int v6, v4, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    .line 246
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v4

    add-int/2addr v5, v3

    and-int v6, v1, v2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    .line 247
    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    add-int/2addr v5, v4

    and-int v6, v2, v3

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    .line 242
    add-int/lit8 v0, v0, 0x4

    goto :goto_11f

    .line 250
    :cond_170
    add-int/lit8 v5, p4, 0x0

    int-to-byte v6, v1

    aput-byte v6, p3, v5

    .line 251
    add-int/lit8 v5, p4, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 252
    add-int/lit8 v5, p4, 0x2

    int-to-byte v6, v2

    aput-byte v6, p3, v5

    .line 253
    add-int/lit8 v5, p4, 0x3

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 254
    add-int/lit8 v5, p4, 0x4

    int-to-byte v6, v3

    aput-byte v6, p3, v5

    .line 255
    add-int/lit8 v5, p4, 0x5

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 256
    add-int/lit8 v5, p4, 0x6

    int-to-byte v6, v4

    aput-byte v6, p3, v5

    .line 257
    add-int/lit8 v5, p4, 0x7

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 258
    return-void
.end method

.method private generateWorkingKey([BI)[I
    .registers 15
    .parameter "key"
    .parameter "bits"

    .prologue
    .line 65
    const/16 v8, 0x80

    new-array v7, v8, [I

    .line 67
    .local v7, xKey:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v8, p1

    if-eq v0, v8, :cond_11

    .line 69
    aget-byte v8, p1, v0

    and-int/lit16 v8, v8, 0xff

    aput v8, v7, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 73
    :cond_11
    array-length v3, p1

    .line 75
    .local v3, len:I
    const/16 v8, 0x80

    if-ge v3, v8, :cond_32

    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, index:I
    const/4 v8, 0x1

    sub-int v8, v3, v8

    aget v6, v7, v8

    .line 83
    .local v6, x:I
    :goto_1c
    sget-object v8, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    aget v9, v7, v1

    add-int/2addr v9, v6

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    and-int/lit16 v6, v8, 0xff

    .line 84
    add-int/lit8 v4, v3, 0x1

    .end local v3           #len:I
    .local v4, len:I
    aput v6, v7, v3

    .line 86
    const/16 v8, 0x80

    if-lt v4, v8, :cond_80

    move v3, v4

    .line 90
    .end local v2           #index:I
    .end local v4           #len:I
    .end local v6           #x:I
    .restart local v3       #len:I
    :cond_32
    add-int/lit8 v8, p2, 0x7

    shr-int/lit8 v3, v8, 0x3

    .line 91
    sget-object v8, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    const/16 v9, 0x80

    sub-int/2addr v9, v3

    aget v9, v7, v9

    const/16 v10, 0xff

    neg-int v11, p2

    and-int/lit8 v11, v11, 0x7

    shr-int/2addr v10, v11

    and-int/2addr v9, v10

    aget-byte v8, v8, v9

    and-int/lit16 v6, v8, 0xff

    .line 92
    .restart local v6       #x:I
    const/16 v8, 0x80

    sub-int/2addr v8, v3

    aput v6, v7, v8

    .line 94
    const/16 v8, 0x80

    sub-int/2addr v8, v3

    const/4 v9, 0x1

    sub-int v0, v8, v9

    :goto_53
    if-ltz v0, :cond_65

    .line 96
    sget-object v8, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    add-int v9, v0, v3

    aget v9, v7, v9

    xor-int/2addr v9, v6

    aget-byte v8, v8, v9

    and-int/lit16 v6, v8, 0xff

    .line 97
    aput v6, v7, v0

    .line 94
    add-int/lit8 v0, v0, -0x1

    goto :goto_53

    .line 101
    :cond_65
    const/16 v8, 0x40

    new-array v5, v8, [I

    .line 103
    .local v5, newKey:[I
    const/4 v0, 0x0

    :goto_6a
    array-length v8, v5

    if-eq v0, v8, :cond_7f

    .line 105
    mul-int/lit8 v8, v0, 0x2

    aget v8, v7, v8

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v9, v7, v9

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v8, v9

    aput v8, v5, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 108
    :cond_7f
    return-object v5

    .end local v3           #len:I
    .end local v5           #newKey:[I
    .restart local v2       #index:I
    .restart local v4       #len:I
    :cond_80
    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    move v3, v4

    .end local v4           #len:I
    .restart local v3       #len:I
    goto :goto_1c
.end method

.method private rotateWordLeft(II)I
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 199
    const v0, 0xffff

    and-int/2addr p1, v0

    .line 200
    shl-int v0, p1, p2

    const/16 v1, 0x10

    sub-int/2addr v1, p2

    shr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    const-string v0, "RC2"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 156
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 9
    .parameter "encrypting"
    .parameter "params"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->encrypting:Z

    .line 125
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;

    if-eqz v3, :cond_19

    .line 127
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;

    move-object v2, v0

    .line 129
    .local v2, param:Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;->getKey()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;->getEffectiveKeyBits()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->generateWorkingKey([BI)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    .line 143
    .end local v2           #param:Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;
    .end local p2
    :goto_18
    return-void

    .line 132
    .restart local p2
    :cond_19
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v3, :cond_2d

    .line 134
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 136
    .local v1, key:[B
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {p0, v1, v3}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->generateWorkingKey([BI)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    goto :goto_18

    .line 140
    .end local v1           #key:[B
    .restart local p2
    :cond_2d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid parameter passed to RC2 init - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final processBlock([BI[BI)I
    .registers 7
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    if-nez v0, :cond_c

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RC2 engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_c
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_19

    .line 172
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_19
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_26

    .line 177
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_26
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->encrypting:Z

    if-eqz v0, :cond_30

    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->encryptBlock([BI[BI)V

    .line 189
    :goto_2d
    const/16 v0, 0x8

    return v0

    .line 186
    :cond_30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->decryptBlock([BI[BI)V

    goto :goto_2d
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 147
    return-void
.end method
