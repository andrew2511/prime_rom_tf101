.class public Lcom/mobipocket/common/util/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# static fields
.field private static final KEY_SIZE:I = 0x8


# instance fields
.field private final int_key:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mobipocket/common/util/Cipher;->int_key:[I

    return-void
.end method


# virtual methods
.method public code([B[BI[BIIZ)V
    .locals 13
    .parameter "key"
    .parameter "data"
    .parameter "dataOffset"
    .parameter "result"
    .parameter "resultOffset"
    .parameter "length"
    .parameter "decode"

    .prologue
    .line 60
    const/4 v7, 0x0

    .line 61
    .local v7, si:I
    const/4 v9, 0x0

    .line 62
    .local v9, x1a2:I
    const/4 v6, 0x0

    .line 65
    .local v6, key_xor:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v10, 0x8

    if-ge v3, v10, :cond_0

    .line 66
    iget-object v10, p0, Lcom/mobipocket/common/util/Cipher;->int_key:[I

    shl-int/lit8 v11, v3, 0x1

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x8

    const v12, 0xff00

    and-int/2addr v11, v12

    shl-int/lit8 v12, v3, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v11, v12

    aput v11, v10, v3

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_0
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    move v0, v5

    move/from16 v1, p6

    if-ge v0, v1, :cond_5

    .line 73
    const/4 v8, 0x0

    .line 74
    .local v8, x1a0:I
    const/4 v4, 0x0

    .line 76
    .local v4, inter:I
    const/4 v3, 0x0

    :goto_2
    const/16 v10, 0x8

    if-ge v3, v10, :cond_1

    .line 78
    iget-object v10, p0, Lcom/mobipocket/common/util/Cipher;->int_key:[I

    aget v10, v10, v3

    xor-int/2addr v8, v10

    .line 79
    add-int/2addr v9, v3

    .line 82
    mul-int/lit16 v10, v9, 0x4e35

    add-int v9, v10, v7

    .line 83
    mul-int/lit16 v7, v8, 0x15a

    .line 84
    add-int/2addr v9, v7

    .line 86
    mul-int/lit16 v8, v8, 0x4e35

    .line 87
    add-int/lit8 v8, v8, 0x1

    .line 90
    xor-int v10, v8, v9

    xor-int/2addr v4, v10

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 94
    :cond_1
    add-int v10, v5, p3

    aget-byte v2, p2, v10

    .line 96
    .local v2, c:B
    if-nez p7, :cond_2

    .line 97
    and-int/lit16 v10, v2, 0xff

    mul-int/lit16 v6, v10, 0x101

    .line 99
    :cond_2
    shr-int/lit8 v10, v4, 0x8

    xor-int/2addr v10, v2

    xor-int/2addr v10, v4

    and-int/lit16 v10, v10, 0xff

    int-to-byte v2, v10

    .line 101
    if-eqz p7, :cond_3

    .line 102
    and-int/lit16 v10, v2, 0xff

    mul-int/lit16 v6, v10, 0x101

    .line 104
    :cond_3
    const/4 v3, 0x0

    :goto_3
    const/16 v10, 0x8

    if-ge v3, v10, :cond_4

    .line 105
    iget-object v10, p0, Lcom/mobipocket/common/util/Cipher;->int_key:[I

    aget v11, v10, v3

    xor-int/2addr v11, v6

    aput v11, v10, v3

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 108
    :cond_4
    add-int v10, v5, p5

    aput-byte v2, p4, v10

    .line 69
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 111
    .end local v2           #c:B
    .end local v4           #inter:I
    .end local v8           #x1a0:I
    :cond_5
    return-void
.end method

.method public code([B[BZ)[B
    .locals 8
    .parameter "key"
    .parameter "data"
    .parameter "decode"

    .prologue
    const/4 v3, 0x0

    .line 39
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p2

    move v5, v3

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/mobipocket/common/util/Cipher;->code([B[BI[BIIZ)V

    .line 40
    return-object p2
.end method
