.class public Lorg/apache/harmony/luni/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final map:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/harmony/luni/util/Base64;->map:[B

    return-void

    :array_a
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static decode([B)[B
    .registers 2
    .parameter "in"

    .prologue
    .line 36
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/apache/harmony/luni/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .registers 13
    .parameter "in"
    .parameter "len"

    .prologue
    .line 41
    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 43
    .local v0, length:I
    if-nez v0, :cond_9

    .line 44
    sget-object p0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 125
    .end local v0           #length:I
    .end local p0
    :goto_8
    return-object p0

    .line 47
    .restart local v0       #length:I
    .restart local p0
    :cond_9
    new-array v4, v0, [B

    .line 49
    .local v4, out:[B
    const/4 v0, 0x0

    .local v0, pad:I
    move v7, v0

    .line 54
    .end local v0           #pad:I
    .local v7, pad:I
    :goto_d
    const/4 v0, 0x1

    sub-int v0, p1, v0

    aget-byte v1, p0, v0

    .line 56
    .local v1, chr:B
    const/16 v0, 0xa

    if-eq v1, v0, :cond_d7

    const/16 v0, 0xd

    if-eq v1, v0, :cond_d7

    const/16 v0, 0x20

    if-eq v1, v0, :cond_d7

    const/16 v0, 0x9

    if-ne v1, v0, :cond_27

    move v0, v7

    .line 53
    .end local v7           #pad:I
    .restart local v0       #pad:I
    :goto_23
    add-int/lit8 p1, p1, -0x1

    move v7, v0

    .end local v0           #pad:I
    .restart local v7       #pad:I
    goto :goto_d

    .line 60
    :cond_27
    const/16 v0, 0x3d

    if-ne v1, v0, :cond_2e

    .line 61
    add-int/lit8 v0, v7, 0x1

    .end local v7           #pad:I
    .restart local v0       #pad:I
    goto :goto_23

    .line 67
    .end local v0           #pad:I
    .restart local v7       #pad:I
    :cond_2e
    const/4 v5, 0x0

    .line 69
    .local v5, out_index:I
    const/4 v3, 0x0

    .line 71
    .local v3, in_index:I
    const/4 v0, 0x0

    .line 73
    .local v0, bits:I
    const/4 v6, 0x0

    .line 74
    .local v6, quantum:I
    const/4 v2, 0x0

    .local v2, i:I
    move v10, v6

    .end local v6           #quantum:I
    .local v10, quantum:I
    move v6, v5

    .end local v5           #out_index:I
    .local v6, out_index:I
    move v5, v10

    .end local v10           #quantum:I
    .local v5, quantum:I
    :goto_36
    if-ge v2, p1, :cond_a8

    .line 75
    aget-byte v1, p0, v2

    .line 77
    const/16 v8, 0xa

    if-eq v1, v8, :cond_d2

    const/16 v8, 0xd

    if-eq v1, v8, :cond_d2

    const/16 v8, 0x20

    if-eq v1, v8, :cond_d2

    const/16 v8, 0x9

    if-ne v1, v8, :cond_53

    move v10, v5

    .end local v5           #quantum:I
    .restart local v10       #quantum:I
    move v5, v6

    .end local v6           #out_index:I
    .local v5, out_index:I
    move v6, v10

    .line 74
    .end local v10           #quantum:I
    .local v6, quantum:I
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    move v10, v6

    .end local v6           #quantum:I
    .restart local v10       #quantum:I
    move v6, v5

    .end local v5           #out_index:I
    .local v6, out_index:I
    move v5, v10

    .end local v10           #quantum:I
    .local v5, quantum:I
    goto :goto_36

    .line 81
    :cond_53
    const/16 v0, 0x41

    if-lt v1, v0, :cond_7f

    .end local v0           #bits:I
    const/16 v0, 0x5a

    if-gt v1, v0, :cond_7f

    .line 85
    const/16 v0, 0x41

    sub-int v0, v1, v0

    .line 104
    .restart local v0       #bits:I
    :goto_5f
    shl-int/lit8 v5, v5, 0x6

    int-to-byte v8, v0

    or-int/2addr v8, v5

    .line 105
    .end local v5           #quantum:I
    .local v8, quantum:I
    rem-int/lit8 v5, v3, 0x4

    const/4 v9, 0x3

    if-ne v5, v9, :cond_d0

    .line 107
    add-int/lit8 v5, v6, 0x1

    .end local v6           #out_index:I
    .local v5, out_index:I
    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 108
    add-int/lit8 v6, v5, 0x1

    .end local v5           #out_index:I
    .restart local v6       #out_index:I
    shr-int/lit8 v9, v8, 0x8

    int-to-byte v9, v9

    aput-byte v9, v4, v5

    .line 109
    add-int/lit8 v5, v6, 0x1

    .end local v6           #out_index:I
    .restart local v5       #out_index:I
    int-to-byte v9, v8

    aput-byte v9, v4, v6

    .line 111
    :goto_7b
    add-int/lit8 v3, v3, 0x1

    move v6, v8

    .end local v8           #quantum:I
    .local v6, quantum:I
    goto :goto_4d

    .line 86
    .end local v0           #bits:I
    .local v5, quantum:I
    .local v6, out_index:I
    :cond_7f
    const/16 v0, 0x61

    if-lt v1, v0, :cond_8c

    const/16 v0, 0x7a

    if-gt v1, v0, :cond_8c

    .line 90
    const/16 v0, 0x47

    sub-int v0, v1, v0

    .restart local v0       #bits:I
    goto :goto_5f

    .line 91
    .end local v0           #bits:I
    :cond_8c
    const/16 v0, 0x30

    if-lt v1, v0, :cond_97

    const/16 v0, 0x39

    if-gt v1, v0, :cond_97

    .line 95
    add-int/lit8 v0, v1, 0x4

    .restart local v0       #bits:I
    goto :goto_5f

    .line 96
    .end local v0           #bits:I
    :cond_97
    const/16 v0, 0x2b

    if-ne v1, v0, :cond_9e

    .line 97
    const/16 v0, 0x3e

    .restart local v0       #bits:I
    goto :goto_5f

    .line 98
    .end local v0           #bits:I
    :cond_9e
    const/16 v0, 0x2f

    if-ne v1, v0, :cond_a5

    .line 99
    const/16 v0, 0x3f

    .restart local v0       #bits:I
    goto :goto_5f

    .line 101
    .end local v0           #bits:I
    :cond_a5
    const/4 p0, 0x0

    goto/16 :goto_8

    .line 113
    .restart local v0       #bits:I
    :cond_a8
    if-lez v7, :cond_cd

    .line 115
    mul-int/lit8 p0, v7, 0x6

    shl-int v1, v5, p0

    .line 117
    .end local v5           #quantum:I
    .local v1, quantum:I
    add-int/lit8 p0, v6, 0x1

    .end local v6           #out_index:I
    .local p0, out_index:I
    shr-int/lit8 v0, v1, 0x10

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 118
    .end local v0           #bits:I
    const/4 v0, 0x1

    if-ne v7, v0, :cond_cb

    .line 119
    add-int/lit8 v0, p0, 0x1

    .end local p0           #out_index:I
    .local v0, out_index:I
    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v4, p0

    .end local v2           #i:I
    move p0, v0

    .end local v0           #out_index:I
    .restart local p0       #out_index:I
    move v0, v1

    .line 123
    .end local v1           #quantum:I
    .local v0, quantum:I
    :goto_c1
    new-array v0, p0, [B

    .line 124
    .local v0, result:[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v4, v1, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 125
    goto/16 :goto_8

    .end local v0           #result:[B
    .restart local v1       #quantum:I
    .restart local v2       #i:I
    :cond_cb
    move v0, v1

    .end local v1           #quantum:I
    .local v0, quantum:I
    goto :goto_c1

    .local v0, bits:I
    .local v1, chr:B
    .restart local v5       #quantum:I
    .restart local v6       #out_index:I
    .local p0, in:[B
    :cond_cd
    move v0, v5

    .end local v5           #quantum:I
    .local v0, quantum:I
    move p0, v6

    .end local v6           #out_index:I
    .local p0, out_index:I
    goto :goto_c1

    .local v0, bits:I
    .restart local v6       #out_index:I
    .restart local v8       #quantum:I
    .local p0, in:[B
    :cond_d0
    move v5, v6

    .end local v6           #out_index:I
    .local v5, out_index:I
    goto :goto_7b

    .end local v8           #quantum:I
    .local v5, quantum:I
    .restart local v6       #out_index:I
    :cond_d2
    move v10, v5

    .end local v5           #quantum:I
    .restart local v10       #quantum:I
    move v5, v6

    .end local v6           #out_index:I
    .local v5, out_index:I
    move v6, v10

    .end local v10           #quantum:I
    .local v6, quantum:I
    goto/16 :goto_4d

    .end local v0           #bits:I
    .end local v2           #i:I
    .end local v3           #in_index:I
    .end local v5           #out_index:I
    .end local v6           #quantum:I
    :cond_d7
    move v0, v7

    .end local v7           #pad:I
    .local v0, pad:I
    goto/16 :goto_23
.end method

.method public static encode([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 13
    .parameter "in"
    .parameter "charset"

    .prologue
    const/16 v10, 0x3d

    .line 136
    array-length v7, p0

    mul-int/lit8 v7, v7, 0x4

    div-int/lit8 v5, v7, 0x3

    .line 137
    .local v5, length:I
    div-int/lit8 v7, v5, 0x4c

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v5, v7

    .line 138
    new-array v6, v5, [B

    .line 139
    .local v6, out:[B
    const/4 v3, 0x0

    .local v3, index:I
    const/4 v0, 0x0

    .local v0, crlr:I
    array-length v7, p0

    array-length v8, p0

    rem-int/lit8 v8, v8, 0x3

    sub-int v1, v7, v8

    .line 140
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, i:I
    move v4, v3

    .end local v3           #index:I
    .local v4, index:I
    :goto_18
    if-ge v2, v1, :cond_7a

    .line 141
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lorg/apache/harmony/luni/util/Base64;->map:[B

    aget-byte v8, p0, v2

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 142
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    sget-object v7, Lorg/apache/harmony/luni/util/Base64;->map:[B

    aget-byte v8, p0, v2

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 143
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lorg/apache/harmony/luni/util/Base64;->map:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v2, 0x2

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 144
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    sget-object v7, Lorg/apache/harmony/luni/util/Base64;->map:[B

    add-int/lit8 v8, v2, 0x2

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 145
    sub-int v7, v4, v0

    rem-int/lit8 v7, v7, 0x4c

    if-nez v7, :cond_e8

    if-eqz v4, :cond_e8

    .line 146
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v7, 0xa

    aput-byte v7, v6, v4

    .line 147
    add-int/lit8 v0, v0, 0x1

    .line 140
    :goto_76
    add-int/lit8 v2, v2, 0x3

    move v4, v3

    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_18

    .line 152
    :cond_7a
    array-length v7, p0

    rem-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_ea

    :goto_80
    move v3, v4

    .line 166
    .end local v4           #index:I
    .restart local v3       #index:I
    :goto_81
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v7

    .line 154
    .end local v3           #index:I
    .restart local v4       #index:I
    :pswitch_88
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lorg/apache/harmony/luni/util/Base64;->map:[B

    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 155
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    sget-object v7, Lorg/apache/harmony/luni/util/Base64;->map:[B

    aget-byte v8, p0, v1

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 156
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aput-byte v10, v6, v4

    .line 157
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aput-byte v10, v6, v3

    move v3, v4

    .line 158
    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_81

    .line 160
    .end local v3           #index:I
    .restart local v4       #index:I
    :pswitch_ae
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lorg/apache/harmony/luni/util/Base64;->map:[B

    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 161
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    sget-object v7, Lorg/apache/harmony/luni/util/Base64;->map:[B

    aget-byte v8, p0, v1

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v1, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 162
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lorg/apache/harmony/luni/util/Base64;->map:[B

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 163
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aput-byte v10, v6, v3

    goto :goto_80

    :cond_e8
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_76

    .line 152
    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_88
        :pswitch_ae
    .end packed-switch
.end method
