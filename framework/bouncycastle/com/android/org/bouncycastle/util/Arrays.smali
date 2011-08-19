.class public final Lcom/android/org/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static areEqual([B[B)Z
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 70
    :goto_5
    return v1

    .line 52
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move v1, v3

    .line 54
    goto :goto_5

    .line 57
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_12

    move v1, v3

    .line 59
    goto :goto_5

    .line 62
    :cond_12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    array-length v1, p0

    if-eq v0, v1, :cond_21

    .line 64
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1e

    move v1, v3

    .line 66
    goto :goto_5

    .line 62
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    move v1, v4

    .line 70
    goto :goto_5
.end method

.method public static areEqual([I[I)Z
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 137
    :goto_5
    return v1

    .line 119
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move v1, v3

    .line 121
    goto :goto_5

    .line 124
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_12

    move v1, v3

    .line 126
    goto :goto_5

    .line 129
    :cond_12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    array-length v1, p0

    if-eq v0, v1, :cond_21

    .line 131
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_1e

    move v1, v3

    .line 133
    goto :goto_5

    .line 129
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    move v1, v4

    .line 137
    goto :goto_5
.end method

.method public static areEqual([Z[Z)Z
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 40
    :goto_5
    return v1

    .line 22
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move v1, v3

    .line 24
    goto :goto_5

    .line 27
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_12

    move v1, v3

    .line 29
    goto :goto_5

    .line 32
    :cond_12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    array-length v1, p0

    if-eq v0, v1, :cond_21

    .line 34
    aget-boolean v1, p0, v0

    aget-boolean v2, p1, v0

    if-eq v1, v2, :cond_1e

    move v1, v3

    .line 36
    goto :goto_5

    .line 32
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    move v1, v4

    .line 40
    goto :goto_5
.end method

.method public static clone([B)[B
    .registers 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 191
    if-nez p0, :cond_5

    .line 193
    const/4 v1, 0x0

    .line 199
    :goto_4
    return-object v1

    .line 195
    :cond_5
    array-length v1, p0

    new-array v0, v1, [B

    .line 197
    .local v0, copy:[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 199
    goto :goto_4
.end method

.method public static clone([I)[I
    .registers 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 204
    if-nez p0, :cond_5

    .line 206
    const/4 v1, 0x0

    .line 212
    :goto_4
    return-object v1

    .line 208
    :cond_5
    array-length v1, p0

    new-array v0, v1, [I

    .line 210
    .local v0, copy:[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 212
    goto :goto_4
.end method

.method public static constantTimeAreEqual([B[B)Z
    .registers 8
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 107
    :goto_5
    return v2

    .line 90
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move v2, v4

    .line 92
    goto :goto_5

    .line 95
    :cond_c
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_12

    move v2, v4

    .line 97
    goto :goto_5

    .line 100
    :cond_12
    const/4 v1, 0x0

    .line 102
    .local v1, nonEqual:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    array-length v2, p0

    if-eq v0, v2, :cond_20

    .line 104
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 107
    :cond_20
    if-nez v1, :cond_24

    move v2, v5

    goto :goto_5

    :cond_24
    move v2, v4

    goto :goto_5
.end method

.method public static fill([BB)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 146
    aput-byte p1, p0, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_9
    return-void
.end method

.method public static fill([JJ)V
    .registers 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 156
    aput-wide p1, p0, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_9
    return-void
.end method

.method public static fill([SS)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 166
    aput-short p1, p0, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_9
    return-void
.end method

.method public static hashCode([B)I
    .registers 4
    .parameter "data"

    .prologue
    .line 172
    if-nez p0, :cond_4

    .line 174
    const/4 v2, 0x0

    .line 186
    :goto_3
    return v2

    .line 177
    :cond_4
    array-length v1, p0

    .line 178
    .local v1, i:I
    add-int/lit8 v0, v1, 0x1

    .line 180
    .local v0, hc:I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_11

    .line 182
    mul-int/lit16 v0, v0, 0x101

    .line 183
    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_7

    :cond_11
    move v2, v0

    .line 186
    goto :goto_3
.end method
