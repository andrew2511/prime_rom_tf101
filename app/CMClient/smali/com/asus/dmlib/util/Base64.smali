.class public Lcom/asus/dmlib/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final map:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asus/dmlib/util/Base64;->map:[B

    return-void

    :array_0
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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "inStr"

    .prologue
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 13
    .local v0, in:[B
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/asus/dmlib/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 15
    .local v1, result:[B
    if-nez v1, :cond_0

    .line 16
    const/4 v2, 0x0

    .line 18
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static decode([B)[B
    .locals 1
    .parameter "in"

    .prologue
    .line 22
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/asus/dmlib/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 11
    .parameter "in"
    .parameter "len"

    .prologue
    .line 27
    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 29
    .local v0, length:I
    if-nez v0, :cond_0

    .line 30
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 111
    .end local v0           #length:I
    .end local p0
    :goto_0
    return-object p0

    .line 33
    .restart local v0       #length:I
    .restart local p0
    :cond_0
    new-array v4, v0, [B

    .line 35
    .local v4, out:[B
    const/4 v0, 0x0

    .local v0, pad:I
    move v7, v0

    .line 40
    .end local v0           #pad:I
    .local v7, pad:I
    :goto_1
    const/4 v0, 0x1

    sub-int v0, p1, v0

    aget-byte v1, p0, v0

    .line 42
    .local v1, chr:B
    const/16 v0, 0xa

    if-eq v1, v0, :cond_e

    const/16 v0, 0xd

    if-eq v1, v0, :cond_e

    const/16 v0, 0x20

    if-eq v1, v0, :cond_e

    const/16 v0, 0x9

    if-ne v1, v0, :cond_1

    move v0, v7

    .line 39
    .end local v7           #pad:I
    .restart local v0       #pad:I
    :goto_2
    add-int/lit8 p1, p1, -0x1

    move v7, v0

    .end local v0           #pad:I
    .restart local v7       #pad:I
    goto :goto_1

    .line 46
    :cond_1
    const/16 v0, 0x3d

    if-ne v1, v0, :cond_2

    .line 47
    add-int/lit8 v0, v7, 0x1

    .end local v7           #pad:I
    .restart local v0       #pad:I
    goto :goto_2

    .line 53
    .end local v0           #pad:I
    .restart local v7       #pad:I
    :cond_2
    const/4 v5, 0x0

    .line 55
    .local v5, out_index:I
    const/4 v3, 0x0

    .line 57
    .local v3, in_index:I
    const/4 v0, 0x0

    .line 59
    .local v0, bits:I
    const/4 v6, 0x0

    .line 60
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
    :goto_3
    if-ge v2, p1, :cond_9

    .line 61
    aget-byte v1, p0, v2

    .line 63
    const/16 v8, 0xa

    if-eq v1, v8, :cond_d

    const/16 v8, 0xd

    if-eq v1, v8, :cond_d

    const/16 v8, 0x20

    if-eq v1, v8, :cond_d

    const/16 v8, 0x9

    if-ne v1, v8, :cond_3

    move v10, v5

    .end local v5           #quantum:I
    .restart local v10       #quantum:I
    move v5, v6

    .end local v6           #out_index:I
    .local v5, out_index:I
    move v6, v10

    .line 60
    .end local v10           #quantum:I
    .local v6, quantum:I
    :goto_4
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
    goto :goto_3

    .line 67
    :cond_3
    const/16 v0, 0x41

    if-lt v1, v0, :cond_4

    .end local v0           #bits:I
    const/16 v0, 0x5a

    if-gt v1, v0, :cond_4

    .line 71
    const/16 v0, 0x41

    sub-int v0, v1, v0

    .line 90
    .restart local v0       #bits:I
    :goto_5
    shl-int/lit8 v5, v5, 0x6

    int-to-byte v8, v0

    or-int/2addr v8, v5

    .line 91
    .end local v5           #quantum:I
    .local v8, quantum:I
    rem-int/lit8 v5, v3, 0x4

    const/4 v9, 0x3

    if-ne v5, v9, :cond_c

    .line 93
    add-int/lit8 v5, v6, 0x1

    .end local v6           #out_index:I
    .local v5, out_index:I
    const/high16 v9, 0xff

    and-int/2addr v9, v8

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 94
    add-int/lit8 v6, v5, 0x1

    .end local v5           #out_index:I
    .restart local v6       #out_index:I
    const v9, 0xff00

    and-int/2addr v9, v8

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v4, v5

    .line 95
    add-int/lit8 v5, v6, 0x1

    .end local v6           #out_index:I
    .restart local v5       #out_index:I
    and-int/lit16 v9, v8, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 97
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move v6, v8

    .end local v8           #quantum:I
    .local v6, quantum:I
    goto :goto_4

    .line 72
    .end local v0           #bits:I
    .local v5, quantum:I
    .local v6, out_index:I
    :cond_4
    const/16 v0, 0x61

    if-lt v1, v0, :cond_5

    const/16 v0, 0x7a

    if-gt v1, v0, :cond_5

    .line 76
    const/16 v0, 0x47

    sub-int v0, v1, v0

    .restart local v0       #bits:I
    goto :goto_5

    .line 77
    .end local v0           #bits:I
    :cond_5
    const/16 v0, 0x30

    if-lt v1, v0, :cond_6

    const/16 v0, 0x39

    if-gt v1, v0, :cond_6

    .line 81
    add-int/lit8 v0, v1, 0x4

    .restart local v0       #bits:I
    goto :goto_5

    .line 82
    .end local v0           #bits:I
    :cond_6
    const/16 v0, 0x2b

    if-ne v1, v0, :cond_7

    .line 83
    const/16 v0, 0x3e

    .restart local v0       #bits:I
    goto :goto_5

    .line 84
    .end local v0           #bits:I
    :cond_7
    const/16 v0, 0x2f

    if-ne v1, v0, :cond_8

    .line 85
    const/16 v0, 0x3f

    .restart local v0       #bits:I
    goto :goto_5

    .line 87
    .end local v0           #bits:I
    :cond_8
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 99
    .restart local v0       #bits:I
    :cond_9
    if-lez v7, :cond_b

    .line 101
    mul-int/lit8 p0, v7, 0x6

    shl-int v1, v5, p0

    .line 103
    .end local v5           #quantum:I
    .local v1, quantum:I
    add-int/lit8 p0, v6, 0x1

    .end local v6           #out_index:I
    .local p0, out_index:I
    const/high16 v0, 0xff

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 104
    .end local v0           #bits:I
    const/4 v0, 0x1

    if-ne v7, v0, :cond_a

    .line 105
    add-int/lit8 v0, p0, 0x1

    .end local p0           #out_index:I
    .local v0, out_index:I
    const v2, 0xff00

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v4, p0

    .end local v2           #i:I
    move p0, v0

    .end local v0           #out_index:I
    .restart local p0       #out_index:I
    move v0, v1

    .line 109
    .end local v1           #quantum:I
    .local v0, quantum:I
    :goto_7
    new-array v0, p0, [B

    .line 110
    .local v0, result:[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v4, v1, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 111
    goto/16 :goto_0

    .end local v0           #result:[B
    .restart local v1       #quantum:I
    .restart local v2       #i:I
    :cond_a
    move v0, v1

    .end local v1           #quantum:I
    .local v0, quantum:I
    goto :goto_7

    .local v0, bits:I
    .local v1, chr:B
    .restart local v5       #quantum:I
    .restart local v6       #out_index:I
    .local p0, in:[B
    :cond_b
    move v0, v5

    .end local v5           #quantum:I
    .local v0, quantum:I
    move p0, v6

    .end local v6           #out_index:I
    .local p0, out_index:I
    goto :goto_7

    .local v0, bits:I
    .restart local v6       #out_index:I
    .restart local v8       #quantum:I
    .local p0, in:[B
    :cond_c
    move v5, v6

    .end local v6           #out_index:I
    .local v5, out_index:I
    goto :goto_6

    .end local v8           #quantum:I
    .local v5, quantum:I
    .restart local v6       #out_index:I
    :cond_d
    move v10, v5

    .end local v5           #quantum:I
    .restart local v10       #quantum:I
    move v5, v6

    .end local v6           #out_index:I
    .local v5, out_index:I
    move v6, v10

    .end local v10           #quantum:I
    .local v6, quantum:I
    goto/16 :goto_4

    .end local v0           #bits:I
    .end local v2           #i:I
    .end local v3           #in_index:I
    .end local v5           #out_index:I
    .end local v6           #quantum:I
    :cond_e
    move v0, v7

    .end local v7           #pad:I
    .local v0, pad:I
    goto/16 :goto_2
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "inStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "inStr"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "in"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3d

    .line 130
    array-length v7, p0

    mul-int/lit8 v7, v7, 0x4

    div-int/lit8 v5, v7, 0x3

    .line 131
    .local v5, length:I
    div-int/lit8 v7, v5, 0x4c

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v5, v7

    .line 132
    new-array v6, v5, [B

    .line 133
    .local v6, out:[B
    const/4 v3, 0x0

    .local v3, index:I
    const/4 v0, 0x0

    .local v0, crlr:I
    array-length v7, p0

    array-length v8, p0

    rem-int/lit8 v8, v8, 0x3

    sub-int v1, v7, v8

    .line 134
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, i:I
    move v4, v3

    .end local v3           #index:I
    .local v4, index:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 135
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lcom/asus/dmlib/util/Base64;->map:[B

    aget-byte v8, p0, v2

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 136
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    sget-object v7, Lcom/asus/dmlib/util/Base64;->map:[B

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

    .line 138
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lcom/asus/dmlib/util/Base64;->map:[B

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

    .line 140
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    sget-object v7, Lcom/asus/dmlib/util/Base64;->map:[B

    add-int/lit8 v8, v2, 0x2

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 141
    sub-int v7, v4, v0

    rem-int/lit8 v7, v7, 0x4c

    if-nez v7, :cond_1

    if-eqz v4, :cond_1

    .line 142
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v7, 0xa

    aput-byte v7, v6, v4

    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 134
    :goto_1
    add-int/lit8 v2, v2, 0x3

    move v4, v3

    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_0

    .line 148
    :cond_0
    array-length v7, p0

    rem-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_0

    :goto_2
    move v3, v4

    .line 163
    .end local v4           #index:I
    .restart local v3       #index:I
    :goto_3
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v7

    .line 150
    .end local v3           #index:I
    .restart local v4       #index:I
    :pswitch_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lcom/asus/dmlib/util/Base64;->map:[B

    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 151
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    sget-object v7, Lcom/asus/dmlib/util/Base64;->map:[B

    aget-byte v8, p0, v1

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 152
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aput-byte v10, v6, v4

    .line 153
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aput-byte v10, v6, v3

    move v3, v4

    .line 154
    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_3

    .line 156
    .end local v3           #index:I
    .restart local v4       #index:I
    :pswitch_1
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lcom/asus/dmlib/util/Base64;->map:[B

    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 157
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    sget-object v7, Lcom/asus/dmlib/util/Base64;->map:[B

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

    .line 159
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lcom/asus/dmlib/util/Base64;->map:[B

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 160
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aput-byte v10, v6, v3

    goto :goto_2

    :cond_1
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_1

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
