.class public Lcom/mobipocket/common/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# static fields
.field private static final INSERTIONSORT_THRESHOLD:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToChar([B)[C
    .locals 3
    .parameter "a"

    .prologue
    .line 152
    const/4 v2, 0x0

    new-array v1, v2, [C

    .line 154
    .local v1, ret:[C
    if-nez p0, :cond_0

    .line 155
    const/4 v2, 0x0

    .line 165
    :goto_0
    return-object v2

    .line 157
    :cond_0
    array-length v2, p0

    if-lez v2, :cond_1

    .line 159
    array-length v2, p0

    new-array v1, v2, [C

    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 162
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_1
    move-object v2, v1

    .line 165
    goto :goto_0
.end method

.method public static charToByte([C)[B
    .locals 3
    .parameter "a"

    .prologue
    .line 126
    const/4 v2, 0x0

    new-array v1, v2, [B

    .line 128
    .local v1, ret:[B
    if-nez p0, :cond_0

    .line 129
    const/4 v2, 0x0

    .line 139
    :goto_0
    return-object v2

    .line 131
    :cond_0
    array-length v2, p0

    if-lez v2, :cond_1

    .line 133
    array-length v2, p0

    new-array v1, v2, [B

    .line 134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 136
    aget-char v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_1
    move-object v2, v1

    .line 139
    goto :goto_0
.end method

.method private static mergeSort([Lcom/mobipocket/common/util/Comparable;[Lcom/mobipocket/common/util/Comparable;III)V
    .locals 7
    .parameter "src"
    .parameter "dest"
    .parameter "low"
    .parameter "high"
    .parameter "off"

    .prologue
    .line 38
    sub-int v2, p3, p2

    .line 41
    .local v2, length:I
    const/4 v0, 0x7

    if-ge v2, v0, :cond_1

    .line 42
    move p0, p2

    .end local p4
    .local p0, i:I
    :goto_0
    if-ge p0, p3, :cond_2

    .line 43
    move p4, p0

    .line 44
    .local p4, j:I
    :goto_1
    if-le p4, p2, :cond_0

    const/4 v0, 0x1

    sub-int v0, p4, v0

    aget-object v0, p1, v0

    aget-object v1, p1, p4

    invoke-interface {v0, v1}, Lcom/mobipocket/common/util/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    const/4 v0, 0x1

    sub-int v0, p4, v0

    invoke-static {p1, p4, v0}, Lcom/mobipocket/common/util/Arrays;->swap([Ljava/lang/Object;II)V

    .line 44
    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 50
    .local p0, src:[Lcom/mobipocket/common/util/Comparable;
    .local p4, off:I
    :cond_1
    move v1, p2

    .line 51
    .local v1, destLow:I
    move v0, p3

    .line 52
    .local v0, destHigh:I
    add-int/2addr p2, p4

    .line 53
    add-int/2addr p3, p4

    .line 54
    add-int v3, p2, p3

    shr-int/lit8 v3, v3, 0x1

    .line 55
    .local v3, mid:I
    neg-int v4, p4

    invoke-static {p1, p0, p2, v3, v4}, Lcom/mobipocket/common/util/Arrays;->mergeSort([Lcom/mobipocket/common/util/Comparable;[Lcom/mobipocket/common/util/Comparable;III)V

    .line 56
    neg-int p4, p4

    invoke-static {p1, p0, v3, p3, p4}, Lcom/mobipocket/common/util/Arrays;->mergeSort([Lcom/mobipocket/common/util/Comparable;[Lcom/mobipocket/common/util/Comparable;III)V

    .line 60
    .end local p4           #off:I
    const/4 p4, 0x1

    sub-int p4, v3, p4

    aget-object p4, p0, p4

    aget-object v4, p0, v3

    invoke-interface {p4, v4}, Lcom/mobipocket/common/util/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p4

    if-gtz p4, :cond_3

    .line 61
    invoke-static {p0, p2, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .end local v0           #destHigh:I
    .end local v1           #destLow:I
    .end local v2           #length:I
    .end local v3           #mid:I
    .end local p0           #src:[Lcom/mobipocket/common/util/Comparable;
    :cond_2
    return-void

    .line 66
    .restart local v0       #destHigh:I
    .restart local v1       #destLow:I
    .restart local v2       #length:I
    .restart local v3       #mid:I
    .restart local p0       #src:[Lcom/mobipocket/common/util/Comparable;
    :cond_3
    move p4, v1

    .local p4, i:I
    move v1, p2

    .local v1, p:I
    move v2, v3

    .local v2, q:I
    move v4, v2

    .end local v2           #q:I
    .local v4, q:I
    move v2, v1

    .end local v1           #p:I
    .local v2, p:I
    :goto_2
    if-ge p4, v0, :cond_2

    .line 67
    if-ge v4, p3, :cond_4

    if-ge v2, v3, :cond_5

    aget-object v1, p0, v2

    aget-object v5, p0, v4

    invoke-interface {v1, v5}, Lcom/mobipocket/common/util/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_5

    .line 68
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .end local v2           #p:I
    .restart local v1       #p:I
    aget-object v2, p0, v2

    aput-object v2, p1, p4

    move v2, v4

    .line 66
    .end local v4           #q:I
    .local v2, q:I
    :goto_3
    add-int/lit8 p4, p4, 0x1

    move v4, v2

    .end local v2           #q:I
    .restart local v4       #q:I
    move v2, v1

    .end local v1           #p:I
    .local v2, p:I
    goto :goto_2

    .line 70
    :cond_5
    add-int/lit8 v1, v4, 0x1

    .end local v4           #q:I
    .local v1, q:I
    aget-object v4, p0, v4

    aput-object v4, p1, p4

    move v6, v1

    .end local v1           #q:I
    .local v6, q:I
    move v1, v2

    .end local v2           #p:I
    .local v1, p:I
    move v2, v6

    .end local v6           #q:I
    .local v2, q:I
    goto :goto_3
.end method

.method private static mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILcom/mobipocket/common/util/Comparator;)V
    .locals 16
    .parameter "src"
    .parameter "dest"
    .parameter "low"
    .parameter "high"
    .parameter "off"
    .parameter "comparator"

    .prologue
    .line 81
    sub-int v14, p3, p2

    .line 84
    .local v14, length:I
    const/4 v5, 0x7

    if-ge v14, v5, :cond_1

    .line 85
    move/from16 p0, p2

    .end local p4
    .local p0, i:I
    :goto_0
    move/from16 v0, p0

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    .line 86
    move/from16 p4, p0

    .local p4, j:I
    :goto_1
    move/from16 v0, p4

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    const/4 v5, 0x1

    sub-int v5, p4, v5

    aget-object v5, p1, v5

    aget-object v6, p1, p4

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/mobipocket/common/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_0

    .line 87
    const/4 v5, 0x1

    sub-int v5, p4, v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/util/Arrays;->swap([Ljava/lang/Object;II)V

    .line 86
    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    .line 85
    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 92
    .local p0, src:[Ljava/lang/Object;
    .local p4, off:I
    :cond_1
    move/from16 v13, p2

    .line 93
    .local v13, destLow:I
    move/from16 v12, p3

    .line 94
    .local v12, destHigh:I
    add-int p2, p2, p4

    .line 95
    add-int p3, p3, p4

    .line 96
    add-int v5, p2, p3

    shr-int/lit8 v8, v5, 0x1

    .line 97
    .local v8, mid:I
    move/from16 v0, p4

    neg-int v0, v0

    move v9, v0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lcom/mobipocket/common/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILcom/mobipocket/common/util/Comparator;)V

    .line 98
    move/from16 v0, p4

    neg-int v0, v0

    move v10, v0

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    move/from16 v9, p3

    move-object/from16 v11, p5

    invoke-static/range {v6 .. v11}, Lcom/mobipocket/common/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILcom/mobipocket/common/util/Comparator;)V

    .line 102
    const/16 p4, 0x1

    sub-int p4, v8, p4

    aget-object p4, p0, p4

    .end local p4           #off:I
    aget-object v5, p0, v8

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lcom/mobipocket/common/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p4

    if-gtz p4, :cond_3

    .line 103
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    .end local v8           #mid:I
    .end local v12           #destHigh:I
    .end local v13           #destLow:I
    .end local p0           #src:[Ljava/lang/Object;
    :cond_2
    return-void

    .line 108
    .restart local v8       #mid:I
    .restart local v12       #destHigh:I
    .restart local v13       #destLow:I
    .restart local p0       #src:[Ljava/lang/Object;
    :cond_3
    move/from16 p4, v13

    .local p4, i:I
    move/from16 v5, p2

    .local v5, p:I
    move v6, v8

    .local v6, q:I
    move v7, v6

    .end local v6           #q:I
    .local v7, q:I
    move v6, v5

    .end local v5           #p:I
    .local v6, p:I
    :goto_2
    move/from16 v0, p4

    move v1, v12

    if-ge v0, v1, :cond_2

    .line 109
    move v0, v7

    move/from16 v1, p3

    if-ge v0, v1, :cond_4

    if-ge v6, v8, :cond_5

    aget-object v5, p0, v6

    aget-object v9, p0, v7

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lcom/mobipocket/common/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5

    .line 110
    :cond_4
    add-int/lit8 v5, v6, 0x1

    .end local v6           #p:I
    .restart local v5       #p:I
    aget-object v6, p0, v6

    aput-object v6, p1, p4

    move v6, v7

    .line 108
    .end local v7           #q:I
    .local v6, q:I
    :goto_3
    add-int/lit8 p4, p4, 0x1

    move v7, v6

    .end local v6           #q:I
    .restart local v7       #q:I
    move v6, v5

    .end local v5           #p:I
    .local v6, p:I
    goto :goto_2

    .line 112
    :cond_5
    add-int/lit8 v5, v7, 0x1

    .end local v7           #q:I
    .local v5, q:I
    aget-object v7, p0, v7

    aput-object v7, p1, p4

    move v15, v5

    .end local v5           #q:I
    .local v15, q:I
    move v5, v6

    .end local v6           #p:I
    .local v5, p:I
    move v6, v15

    .end local v15           #q:I
    .local v6, q:I
    goto :goto_3
.end method

.method public static sort([Lcom/mobipocket/common/util/Comparable;)V
    .locals 3
    .parameter "a"

    .prologue
    const/4 v2, 0x0

    .line 12
    array-length v1, p0

    new-array v0, v1, [Lcom/mobipocket/common/util/Comparable;

    .line 13
    .local v0, aux:[Lcom/mobipocket/common/util/Comparable;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    array-length v1, p0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/mobipocket/common/util/Arrays;->mergeSort([Lcom/mobipocket/common/util/Comparable;[Lcom/mobipocket/common/util/Comparable;III)V

    .line 15
    return-void
.end method

.method public static sort([Ljava/lang/Object;Lcom/mobipocket/common/util/Comparator;)V
    .locals 6
    .parameter "a"
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 20
    array-length v1, p0

    new-array v0, v1, [Ljava/lang/Object;

    .line 21
    .local v0, aux:[Ljava/lang/Object;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    array-length v3, p0

    move-object v1, p0

    move v4, v2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/mobipocket/common/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILcom/mobipocket/common/util/Comparator;)V

    .line 23
    return-void
.end method

.method private static swap([Ljava/lang/Object;II)V
    .locals 2
    .parameter "x"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 27
    aget-object v0, p0, p1

    .line 28
    .local v0, t:Ljava/lang/Object;
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 29
    aput-object v0, p0, p2

    .line 30
    return-void
.end method
