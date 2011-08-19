.class final Lcom/google/protobuf/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# static fields
.field public static final COMPLETE:I = 0x0

.field public static final MALFORMED:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static incompleteStateFor(I)I
    .locals 1
    .parameter

    .prologue
    .line 294
    const/16 v0, -0xc

    if-le p0, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    move v0, p0

    goto :goto_0
.end method

.method private static incompleteStateFor(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 299
    const/16 v0, -0xc

    if-gt p0, v0, :cond_0

    const/16 v0, -0x41

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    goto :goto_0
.end method

.method private static incompleteStateFor(III)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, -0x41

    .line 305
    const/16 v0, -0xc

    if-gt p0, v0, :cond_0

    if-gt p1, v1, :cond_0

    if-le p2, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x10

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method private static incompleteStateFor([BII)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    const/4 v0, 0x1

    sub-int v0, p1, v0

    aget-byte v0, p0, v0

    .line 313
    sub-int v1, p2, p1

    packed-switch v1, :pswitch_data_0

    .line 317
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 314
    :pswitch_0
    invoke-static {v0}, Lcom/google/protobuf/Utf8;->incompleteStateFor(I)I

    move-result v0

    .line 316
    :goto_0
    return v0

    .line 315
    :pswitch_1
    aget-byte v1, p0, p1

    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v0

    goto :goto_0

    .line 316
    :pswitch_2
    aget-byte v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I

    move-result v0

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isValidUtf8([B)Z
    .locals 2
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method public static isValidUtf8([BII)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static partialIsValidUtf8(I[BII)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, -0x20

    const/16 v4, -0x60

    const/4 v6, -0x1

    const/16 v5, -0x41

    .line 116
    if-eqz p0, :cond_c

    .line 124
    if-lt p2, p3, :cond_0

    move v0, p0

    .line 199
    :goto_0
    return v0

    .line 127
    :cond_0
    int-to-byte v0, p0

    .line 129
    if-ge v0, v3, :cond_2

    .line 134
    const/16 v1, -0x3e

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    if-le v1, v5, :cond_d

    :cond_1
    move v0, v6

    .line 137
    goto :goto_0

    .line 139
    :cond_2
    const/16 v1, -0x10

    if-ge v0, v1, :cond_7

    .line 143
    shr-int/lit8 v1, p0, 0x8

    xor-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    .line 144
    if-nez v1, :cond_f

    .line 145
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    .line 146
    if-lt v1, p3, :cond_3

    .line 147
    invoke-static {v0, v2}, Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v0

    goto :goto_0

    :cond_3
    move v7, v2

    move v2, v1

    move v1, v7

    .line 150
    :goto_1
    if-gt v1, v5, :cond_6

    if-ne v0, v3, :cond_4

    if-lt v1, v4, :cond_6

    :cond_4
    const/16 v3, -0x13

    if-ne v0, v3, :cond_5

    if-ge v1, v4, :cond_6

    :cond_5
    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p1, v2

    if-le v1, v5, :cond_d

    :cond_6
    move v0, v6

    .line 157
    goto :goto_0

    .line 163
    :cond_7
    shr-int/lit8 v1, p0, 0x8

    xor-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    .line 164
    const/4 v2, 0x0

    .line 165
    if-nez v1, :cond_8

    .line 166
    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    .line 167
    if-lt v1, p3, :cond_e

    .line 168
    invoke-static {v0, v3}, Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v0

    goto :goto_0

    .line 171
    :cond_8
    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    move v3, p2

    move v7, v1

    move v1, v2

    move v2, v7

    .line 173
    :goto_2
    if-nez v1, :cond_a

    .line 174
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p1, v3

    .line 175
    if-lt v1, p3, :cond_9

    .line 176
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I

    move-result v0

    goto :goto_0

    :cond_9
    move v7, v3

    move v3, v1

    move v1, v7

    .line 184
    :cond_a
    if-gt v2, v5, :cond_b

    shl-int/lit8 v0, v0, 0x1c

    const/16 v4, -0x70

    sub-int/2addr v2, v4

    add-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_b

    if-gt v1, v5, :cond_b

    add-int/lit8 v0, v3, 0x1

    aget-byte v1, p1, v3

    if-le v1, v5, :cond_d

    :cond_b
    move v0, v6

    .line 194
    goto :goto_0

    :cond_c
    move v0, p2

    .line 199
    :cond_d
    invoke-static {p1, v0, p3}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result v0

    goto/16 :goto_0

    :cond_e
    move v7, v2

    move v2, v3

    move v3, v1

    move v1, v7

    goto :goto_2

    :cond_f
    move v2, p2

    goto :goto_1
.end method

.method public static partialIsValidUtf8([BII)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    move v0, p1

    .line 223
    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    if-ltz v1, :cond_0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    if-lt v0, p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8NonAscii([BII)I

    move-result v0

    goto :goto_1
.end method

.method private static partialIsValidUtf8NonAscii([BII)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, -0x20

    const/16 v6, -0x60

    const/4 v5, -0x1

    const/16 v4, -0x41

    move v0, p1

    .line 238
    :cond_0
    :goto_0
    if-lt v0, p2, :cond_2

    .line 239
    const/4 v0, 0x0

    .line 287
    :cond_1
    :goto_1
    return v0

    .line 241
    :cond_2
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    if-gez v0, :cond_c

    .line 243
    if-ge v0, v7, :cond_4

    .line 246
    if-ge v1, p2, :cond_1

    .line 252
    const/16 v2, -0x3e

    if-lt v0, v2, :cond_3

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    if-le v1, v4, :cond_0

    :cond_3
    move v0, v5

    .line 254
    goto :goto_1

    .line 256
    :cond_4
    const/16 v2, -0x10

    if-ge v0, v2, :cond_9

    .line 259
    const/4 v2, 0x1

    sub-int v2, p2, v2

    if-lt v1, v2, :cond_5

    .line 260
    invoke-static {p0, v1, p2}, Lcom/google/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result v0

    goto :goto_1

    .line 262
    :cond_5
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    if-gt v1, v4, :cond_8

    if-ne v0, v7, :cond_6

    if-lt v1, v6, :cond_8

    :cond_6
    const/16 v3, -0x13

    if-ne v0, v3, :cond_7

    if-ge v1, v6, :cond_8

    :cond_7
    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p0, v2

    if-le v1, v4, :cond_0

    :cond_8
    move v0, v5

    .line 269
    goto :goto_1

    .line 274
    :cond_9
    const/4 v2, 0x2

    sub-int v2, p2, v2

    if-lt v1, v2, :cond_a

    .line 275
    invoke-static {p0, v1, p2}, Lcom/google/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result v0

    goto :goto_1

    .line 277
    :cond_a
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    if-gt v1, v4, :cond_b

    shl-int/lit8 v0, v0, 0x1c

    const/16 v3, -0x70

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_b

    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p0, v2

    if-gt v1, v4, :cond_b

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    if-le v0, v4, :cond_c

    :cond_b
    move v0, v5

    .line 287
    goto :goto_1

    :cond_c
    move v0, v1

    goto :goto_0
.end method
