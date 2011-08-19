.class public LSQLite/StringEncoder;
.super Ljava/lang/Object;
.source "StringEncoder.java"


# static fields
.field static final xdigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 216
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, LSQLite/StringEncoder;->xdigits:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteCopy([BII[B)[B
    .registers 7
    .parameter "source"
    .parameter "offset"
    .parameter "count"
    .parameter "target"

    .prologue
    .line 209
    move v0, p1

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    add-int v2, p1, p2

    if-ge v0, v2, :cond_f

    .line 210
    aget-byte v2, p0, v0

    aput-byte v2, p3, v1

    .line 209
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 212
    :cond_f
    return-object p3
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 8
    .parameter "s"

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 106
    .local v0, a:[C
    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_9e

    const/4 v1, 0x0

    aget-char v1, v0, v1

    const/16 v2, 0x58

    if-ne v1, v2, :cond_9e

    const/4 v1, 0x1

    aget-char v1, v0, v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_9e

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-char v1, v0, v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_9e

    .line 109
    array-length p0, v0

    .end local p0
    const/4 v1, 0x3

    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x2

    new-array v2, p0, [B

    .line 110
    .local v2, result:[B
    const/4 p0, 0x2

    .local p0, i:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_28
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge p0, v3, :cond_9b

    .line 112
    aget-char v3, v0, p0

    sparse-switch v3, :sswitch_data_10a

    .line 135
    const/4 v3, 0x0

    .line 137
    .local v3, tmp:B
    :goto_33
    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 138
    .end local v3           #tmp:B
    add-int/lit8 v3, p0, 0x1

    aget-char v3, v0, v3

    sparse-switch v3, :sswitch_data_164

    .line 161
    const/4 v3, 0x0

    .line 163
    .restart local v3       #tmp:B
    :goto_40
    aget-byte v4, v2, v1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 110
    .end local v3           #tmp:B
    add-int/lit8 p0, p0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 113
    :sswitch_4b
    const/4 v3, 0x0

    .restart local v3       #tmp:B
    goto :goto_33

    .line 114
    .end local v3           #tmp:B
    :sswitch_4d
    const/4 v3, 0x1

    .restart local v3       #tmp:B
    goto :goto_33

    .line 115
    .end local v3           #tmp:B
    :sswitch_4f
    const/4 v3, 0x2

    .restart local v3       #tmp:B
    goto :goto_33

    .line 116
    .end local v3           #tmp:B
    :sswitch_51
    const/4 v3, 0x3

    .restart local v3       #tmp:B
    goto :goto_33

    .line 117
    .end local v3           #tmp:B
    :sswitch_53
    const/4 v3, 0x4

    .restart local v3       #tmp:B
    goto :goto_33

    .line 118
    .end local v3           #tmp:B
    :sswitch_55
    const/4 v3, 0x5

    .restart local v3       #tmp:B
    goto :goto_33

    .line 119
    .end local v3           #tmp:B
    :sswitch_57
    const/4 v3, 0x6

    .restart local v3       #tmp:B
    goto :goto_33

    .line 120
    .end local v3           #tmp:B
    :sswitch_59
    const/4 v3, 0x7

    .restart local v3       #tmp:B
    goto :goto_33

    .line 121
    .end local v3           #tmp:B
    :sswitch_5b
    const/16 v3, 0x8

    .restart local v3       #tmp:B
    goto :goto_33

    .line 122
    .end local v3           #tmp:B
    :sswitch_5e
    const/16 v3, 0x9

    .restart local v3       #tmp:B
    goto :goto_33

    .line 124
    .end local v3           #tmp:B
    :sswitch_61
    const/16 v3, 0xa

    .restart local v3       #tmp:B
    goto :goto_33

    .line 126
    .end local v3           #tmp:B
    :sswitch_64
    const/16 v3, 0xb

    .restart local v3       #tmp:B
    goto :goto_33

    .line 128
    .end local v3           #tmp:B
    :sswitch_67
    const/16 v3, 0xc

    .restart local v3       #tmp:B
    goto :goto_33

    .line 130
    .end local v3           #tmp:B
    :sswitch_6a
    const/16 v3, 0xd

    .restart local v3       #tmp:B
    goto :goto_33

    .line 132
    .end local v3           #tmp:B
    :sswitch_6d
    const/16 v3, 0xe

    .restart local v3       #tmp:B
    goto :goto_33

    .line 134
    .end local v3           #tmp:B
    :sswitch_70
    const/16 v3, 0xf

    .restart local v3       #tmp:B
    goto :goto_33

    .line 139
    .end local v3           #tmp:B
    :sswitch_73
    const/4 v3, 0x0

    .restart local v3       #tmp:B
    goto :goto_40

    .line 140
    .end local v3           #tmp:B
    :sswitch_75
    const/4 v3, 0x1

    .restart local v3       #tmp:B
    goto :goto_40

    .line 141
    .end local v3           #tmp:B
    :sswitch_77
    const/4 v3, 0x2

    .restart local v3       #tmp:B
    goto :goto_40

    .line 142
    .end local v3           #tmp:B
    :sswitch_79
    const/4 v3, 0x3

    .restart local v3       #tmp:B
    goto :goto_40

    .line 143
    .end local v3           #tmp:B
    :sswitch_7b
    const/4 v3, 0x4

    .restart local v3       #tmp:B
    goto :goto_40

    .line 144
    .end local v3           #tmp:B
    :sswitch_7d
    const/4 v3, 0x5

    .restart local v3       #tmp:B
    goto :goto_40

    .line 145
    .end local v3           #tmp:B
    :sswitch_7f
    const/4 v3, 0x6

    .restart local v3       #tmp:B
    goto :goto_40

    .line 146
    .end local v3           #tmp:B
    :sswitch_81
    const/4 v3, 0x7

    .restart local v3       #tmp:B
    goto :goto_40

    .line 147
    .end local v3           #tmp:B
    :sswitch_83
    const/16 v3, 0x8

    .restart local v3       #tmp:B
    goto :goto_40

    .line 148
    .end local v3           #tmp:B
    :sswitch_86
    const/16 v3, 0x9

    .restart local v3       #tmp:B
    goto :goto_40

    .line 150
    .end local v3           #tmp:B
    :sswitch_89
    const/16 v3, 0xa

    .restart local v3       #tmp:B
    goto :goto_40

    .line 152
    .end local v3           #tmp:B
    :sswitch_8c
    const/16 v3, 0xb

    .restart local v3       #tmp:B
    goto :goto_40

    .line 154
    .end local v3           #tmp:B
    :sswitch_8f
    const/16 v3, 0xc

    .restart local v3       #tmp:B
    goto :goto_40

    .line 156
    .end local v3           #tmp:B
    :sswitch_92
    const/16 v3, 0xd

    .restart local v3       #tmp:B
    goto :goto_40

    .line 158
    .end local v3           #tmp:B
    :sswitch_95
    const/16 v3, 0xe

    .restart local v3       #tmp:B
    goto :goto_40

    .line 160
    .end local v3           #tmp:B
    :sswitch_98
    const/16 v3, 0xf

    .restart local v3       #tmp:B
    goto :goto_40

    .end local v3           #tmp:B
    :cond_9b
    move-object v0, v2

    .end local v2           #result:[B
    .local v0, result:[B
    move-object v1, v2

    .line 194
    .end local v0           #result:[B
    .end local v1           #k:I
    :goto_9d
    return-object v1

    .line 168
    .local v0, a:[C
    .local p0, s:Ljava/lang/String;
    :cond_9e
    array-length v0, v0

    .end local v0           #a:[C
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v4, v0, [B

    .line 169
    .local v4, result:[B
    const/4 v0, 0x0

    .line 170
    .local v0, i:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 171
    .local v5, shift:I
    const/4 v0, 0x0

    .local v0, j:I
    move v3, v0

    .end local v0           #j:I
    .local v3, j:I
    move v0, v1

    .line 172
    .end local v1           #i:I
    .local v0, i:I
    :goto_ad
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_f8

    .line 174
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_c7

    .line 175
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d2

    .line 176
    const/4 v0, 0x0

    move v1, v2

    .line 187
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_c7
    :goto_c7
    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .local v2, j:I
    add-int/2addr v0, v5

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    .end local v0           #c:I
    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    move v0, v1

    .line 188
    .end local v1           #i:I
    .local v0, i:I
    goto :goto_ad

    .line 177
    .local v0, c:I
    .local v2, i:I
    :cond_d2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d8

    .line 178
    const/4 v0, 0x1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_c7

    .line 179
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_d8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_df

    .line 180
    const/16 v0, 0x27

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_c7

    .line 182
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_df
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #s:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #c:I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid string passed to decoder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 189
    .end local v2           #i:I
    .local v0, i:I
    .restart local p0       #s:Ljava/lang/String;
    :cond_f8
    move p0, v3

    .line 191
    .local p0, outLen:I
    array-length v1, v4

    if-eq v1, p0, :cond_108

    .line 192
    const/4 v1, 0x0

    new-array v2, p0, [B

    invoke-static {v4, v1, p0, v2}, LSQLite/StringEncoder;->byteCopy([BII[B)[B

    move-result-object p0

    .end local v4           #result:[B
    .local p0, result:[B
    :goto_103
    move-object v1, p0

    .end local p0           #result:[B
    .local v1, result:[B
    move-object v6, p0

    .end local v1           #result:[B
    .local v6, result:[B
    move p0, v0

    .end local v0           #i:I
    .local p0, i:I
    move-object v0, v6

    .line 194
    .end local v6           #result:[B
    .local v0, result:[B
    goto :goto_9d

    .local v0, i:I
    .restart local v4       #result:[B
    .local p0, outLen:I
    :cond_108
    move-object p0, v4

    .end local v4           #result:[B
    .local p0, result:[B
    goto :goto_103

    .line 112
    :sswitch_data_10a
    .sparse-switch
        0x30 -> :sswitch_4b
        0x31 -> :sswitch_4d
        0x32 -> :sswitch_4f
        0x33 -> :sswitch_51
        0x34 -> :sswitch_53
        0x35 -> :sswitch_55
        0x36 -> :sswitch_57
        0x37 -> :sswitch_59
        0x38 -> :sswitch_5b
        0x39 -> :sswitch_5e
        0x41 -> :sswitch_61
        0x42 -> :sswitch_64
        0x43 -> :sswitch_67
        0x44 -> :sswitch_6a
        0x45 -> :sswitch_6d
        0x46 -> :sswitch_70
        0x61 -> :sswitch_61
        0x62 -> :sswitch_64
        0x63 -> :sswitch_67
        0x64 -> :sswitch_6a
        0x65 -> :sswitch_6d
        0x66 -> :sswitch_70
    .end sparse-switch

    .line 138
    :sswitch_data_164
    .sparse-switch
        0x30 -> :sswitch_73
        0x31 -> :sswitch_75
        0x32 -> :sswitch_77
        0x33 -> :sswitch_79
        0x34 -> :sswitch_7b
        0x35 -> :sswitch_7d
        0x36 -> :sswitch_7f
        0x37 -> :sswitch_81
        0x38 -> :sswitch_83
        0x39 -> :sswitch_86
        0x41 -> :sswitch_89
        0x42 -> :sswitch_8c
        0x43 -> :sswitch_8f
        0x44 -> :sswitch_92
        0x45 -> :sswitch_95
        0x46 -> :sswitch_98
        0x61 -> :sswitch_89
        0x62 -> :sswitch_8c
        0x63 -> :sswitch_8f
        0x64 -> :sswitch_92
        0x65 -> :sswitch_95
        0x66 -> :sswitch_98
    .end sparse-switch
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 14
    .parameter "a"

    .prologue
    const/16 v12, 0x100

    const/16 v11, 0x27

    const/4 v10, 0x1

    .line 44
    if-eqz p0, :cond_a

    array-length v8, p0

    if-nez v8, :cond_d

    .line 46
    :cond_a
    const-string v8, "x"

    .line 91
    :goto_c
    return-object v8

    .line 49
    :cond_d
    new-array v1, v12, [I

    .line 50
    .local v1, cnt:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    array-length v8, p0

    if-ge v2, v8, :cond_20

    .line 51
    aget-byte v8, p0, v2

    and-int/lit16 v8, v8, 0xff

    aget v9, v1, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v8

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 54
    :cond_20
    const/4 v6, 0x1

    .line 55
    .local v6, shift:I
    array-length v3, p0

    .line 56
    .local v3, nEscapes:I
    const/4 v2, 0x1

    :goto_23
    if-ge v2, v12, :cond_41

    .line 57
    if-ne v2, v11, :cond_2a

    .line 56
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 60
    :cond_2a
    aget v8, v1, v2

    add-int/lit8 v9, v2, 0x1

    and-int/lit16 v9, v9, 0xff

    aget v9, v1, v9

    add-int/2addr v8, v9

    add-int/lit8 v9, v2, 0x27

    and-int/lit16 v9, v9, 0xff

    aget v9, v1, v9

    add-int v7, v8, v9

    .line 61
    .local v7, sum:I
    if-ge v7, v3, :cond_27

    .line 62
    move v3, v7

    .line 63
    move v6, v2

    .line 64
    if-nez v3, :cond_27

    .line 71
    .end local v7           #sum:I
    :cond_41
    array-length v8, p0

    add-int/2addr v8, v3

    add-int/lit8 v5, v8, 0x1

    .line 72
    .local v5, outLen:I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 73
    .local v4, out:Ljava/lang/StringBuffer;
    int-to-char v8, v6

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    const/4 v2, 0x0

    :goto_4f
    array-length v8, p0

    if-ge v2, v8, :cond_7b

    .line 76
    aget-byte v8, p0, v2

    sub-int/2addr v8, v6

    and-int/lit16 v8, v8, 0xff

    int-to-char v0, v8

    .line 78
    .local v0, c:C
    if-nez v0, :cond_63

    .line 79
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 81
    :cond_63
    if-ne v0, v10, :cond_6d

    .line 82
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_60

    .line 84
    :cond_6d
    if-ne v0, v11, :cond_77

    .line 85
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_60

    .line 88
    :cond_77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_60

    .line 91
    .end local v0           #c:C
    :cond_7b
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_c
.end method

.method public static encodeX([B)Ljava/lang/String;
    .registers 7
    .parameter "a"

    .prologue
    const/16 v5, 0x27

    .line 230
    if-eqz p0, :cond_7

    array-length v3, p0

    if-nez v3, :cond_a

    .line 231
    :cond_7
    const-string v3, "X\'\'"

    .line 242
    :goto_9
    return-object v3

    .line 233
    :cond_a
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v3, 0x3

    .line 234
    .local v2, outLen:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 235
    .local v1, out:Ljava/lang/StringBuffer;
    const/16 v3, 0x58

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    array-length v3, p0

    if-ge v0, v3, :cond_3b

    .line 238
    sget-object v3, LSQLite/StringEncoder;->xdigits:[C

    aget-byte v4, p0, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 239
    sget-object v3, LSQLite/StringEncoder;->xdigits:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 241
    :cond_3b
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9
.end method
