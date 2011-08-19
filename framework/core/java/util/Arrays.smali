.class public Ljava/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Arrays$ArrayList;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Ljava/util/Arrays;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/util/Arrays;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    new-instance v0, Ljava/util/Arrays$ArrayList;

    invoke-direct {v0, p0}, Ljava/util/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static binarySearch([BB)I
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 177
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([BIIB)I

    move-result v0

    return v0
.end method

.method public static binarySearch([BIIB)I
    .registers 10
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 197
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 198
    move v1, p1

    .line 199
    .local v1, lo:I
    sub-int v0, p2, v5

    .line 201
    .local v0, hi:I
    :goto_8
    if-gt v1, v0, :cond_1c

    .line 202
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 203
    .local v2, mid:I
    aget-byte v3, p0, v2

    .line 205
    .local v3, midVal:B
    if-ge v3, p3, :cond_15

    .line 206
    add-int/lit8 v1, v2, 0x1

    goto :goto_8

    .line 207
    :cond_15
    if-le v3, p3, :cond_1a

    .line 208
    sub-int v0, v2, v5

    goto :goto_8

    :cond_1a
    move v4, v2

    .line 213
    .end local v2           #mid:I
    .end local v3           #midVal:B
    :goto_1b
    return v4

    :cond_1c
    xor-int/lit8 v4, v1, -0x1

    goto :goto_1b
.end method

.method public static binarySearch([CC)I
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 227
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([CIIC)I

    move-result v0

    return v0
.end method

.method public static binarySearch([CIIC)I
    .registers 10
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 247
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 248
    move v1, p1

    .line 249
    .local v1, lo:I
    sub-int v0, p2, v5

    .line 251
    .local v0, hi:I
    :goto_8
    if-gt v1, v0, :cond_1c

    .line 252
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 253
    .local v2, mid:I
    aget-char v3, p0, v2

    .line 255
    .local v3, midVal:C
    if-ge v3, p3, :cond_15

    .line 256
    add-int/lit8 v1, v2, 0x1

    goto :goto_8

    .line 257
    :cond_15
    if-le v3, p3, :cond_1a

    .line 258
    sub-int v0, v2, v5

    goto :goto_8

    :cond_1a
    move v4, v2

    .line 263
    .end local v2           #mid:I
    .end local v3           #midVal:C
    :goto_1b
    return v4

    :cond_1c
    xor-int/lit8 v4, v1, -0x1

    goto :goto_1b
.end method

.method public static binarySearch([DD)I
    .registers 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 277
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([DIID)I

    move-result v0

    return v0
.end method

.method public static binarySearch([DIID)I
    .registers 11
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    .line 297
    array-length v0, p0

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 298
    move v0, p1

    .line 299
    .local v0, lo:I
    const/4 p1, 0x1

    sub-int p1, p2, p1

    .local p1, hi:I
    move p2, v0

    .line 301
    .end local v0           #lo:I
    .local p2, lo:I
    :goto_9
    if-gt p2, p1, :cond_45

    .line 302
    add-int v0, p2, p1

    ushr-int/lit8 v0, v0, 0x1

    .line 303
    .local v0, mid:I
    aget-wide v1, p0, v0

    .line 305
    .local v1, midVal:D
    cmpg-double v3, v1, p3

    if-gez v3, :cond_18

    .line 306
    add-int/lit8 p2, v0, 0x1

    goto :goto_9

    .line 307
    :cond_18
    cmpl-double v3, v1, p3

    if-lez v3, :cond_20

    .line 308
    const/4 p1, 0x1

    sub-int p1, v0, p1

    goto :goto_9

    .line 309
    :cond_20
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_2c

    cmpl-double v3, v1, p3

    if-nez v3, :cond_2c

    move p0, v0

    .line 324
    .end local v0           #mid:I
    .end local v1           #midVal:D
    .end local p0
    .end local p1           #hi:I
    :goto_2b
    return p0

    .line 312
    .restart local v0       #mid:I
    .restart local v1       #midVal:D
    .restart local p0
    .restart local p1       #hi:I
    :cond_2c
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 313
    .local v1, midValBits:J
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 315
    .local v3, valueBits:J
    cmp-long v5, v1, v3

    if-gez v5, :cond_3b

    .line 316
    add-int/lit8 p2, v0, 0x1

    goto :goto_9

    .line 317
    :cond_3b
    cmp-long p1, v1, v3

    if-lez p1, :cond_43

    .line 318
    .end local p1           #hi:I
    const/4 p1, 0x1

    sub-int p1, v0, p1

    .restart local p1       #hi:I
    goto :goto_9

    .end local p1           #hi:I
    :cond_43
    move p0, v0

    .line 320
    goto :goto_2b

    .line 324
    .end local v0           #mid:I
    .end local v1           #midValBits:J
    .end local v3           #valueBits:J
    .restart local p1       #hi:I
    :cond_45
    xor-int/lit8 p0, p2, -0x1

    goto :goto_2b
.end method

.method public static binarySearch([FF)I
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 338
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([FIIF)I

    move-result v0

    return v0
.end method

.method public static binarySearch([FIIF)I
    .registers 12
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    .line 358
    array-length v6, p0

    invoke-static {p1, p2, v6}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 359
    move v1, p1

    .line 360
    .local v1, lo:I
    sub-int v0, p2, v7

    .line 362
    .local v0, hi:I
    :goto_8
    if-gt v1, v0, :cond_3d

    .line 363
    add-int v6, v1, v0

    ushr-int/lit8 v2, v6, 0x1

    .line 364
    .local v2, mid:I
    aget v3, p0, v2

    .line 366
    .local v3, midVal:F
    cmpg-float v6, v3, p3

    if-gez v6, :cond_17

    .line 367
    add-int/lit8 v1, v2, 0x1

    goto :goto_8

    .line 368
    :cond_17
    cmpl-float v6, v3, p3

    if-lez v6, :cond_1e

    .line 369
    sub-int v0, v2, v7

    goto :goto_8

    .line 370
    :cond_1e
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_29

    cmpl-float v6, v3, p3

    if-nez v6, :cond_29

    move v6, v2

    .line 385
    .end local v2           #mid:I
    .end local v3           #midVal:F
    :goto_28
    return v6

    .line 373
    .restart local v2       #mid:I
    .restart local v3       #midVal:F
    :cond_29
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 374
    .local v4, midValBits:I
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    .line 376
    .local v5, valueBits:I
    if-ge v4, v5, :cond_36

    .line 377
    add-int/lit8 v1, v2, 0x1

    goto :goto_8

    .line 378
    :cond_36
    if-le v4, v5, :cond_3b

    .line 379
    sub-int v0, v2, v7

    goto :goto_8

    :cond_3b
    move v6, v2

    .line 381
    goto :goto_28

    .line 385
    .end local v2           #mid:I
    .end local v3           #midVal:F
    .end local v4           #midValBits:I
    .end local v5           #valueBits:I
    :cond_3d
    xor-int/lit8 v6, v1, -0x1

    goto :goto_28
.end method

.method public static binarySearch([II)I
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 399
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public static binarySearch([IIII)I
    .registers 10
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 419
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 420
    move v1, p1

    .line 421
    .local v1, lo:I
    sub-int v0, p2, v5

    .line 423
    .local v0, hi:I
    :goto_8
    if-gt v1, v0, :cond_1c

    .line 424
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 425
    .local v2, mid:I
    aget v3, p0, v2

    .line 427
    .local v3, midVal:I
    if-ge v3, p3, :cond_15

    .line 428
    add-int/lit8 v1, v2, 0x1

    goto :goto_8

    .line 429
    :cond_15
    if-le v3, p3, :cond_1a

    .line 430
    sub-int v0, v2, v5

    goto :goto_8

    :cond_1a
    move v4, v2

    .line 435
    .end local v2           #mid:I
    .end local v3           #midVal:I
    :goto_1b
    return v4

    :cond_1c
    xor-int/lit8 v4, v1, -0x1

    goto :goto_1b
.end method

.method public static binarySearch([JIIJ)I
    .registers 12
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    .line 469
    array-length v5, p0

    invoke-static {p1, p2, v5}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 470
    move v1, p1

    .line 471
    .local v1, lo:I
    sub-int v0, p2, v6

    .line 473
    .local v0, hi:I
    :goto_8
    if-gt v1, v0, :cond_20

    .line 474
    add-int v5, v1, v0

    ushr-int/lit8 v2, v5, 0x1

    .line 475
    .local v2, mid:I
    aget-wide v3, p0, v2

    .line 477
    .local v3, midVal:J
    cmp-long v5, v3, p3

    if-gez v5, :cond_17

    .line 478
    add-int/lit8 v1, v2, 0x1

    goto :goto_8

    .line 479
    :cond_17
    cmp-long v5, v3, p3

    if-lez v5, :cond_1e

    .line 480
    sub-int v0, v2, v6

    goto :goto_8

    :cond_1e
    move v5, v2

    .line 485
    .end local v2           #mid:I
    .end local v3           #midVal:J
    :goto_1f
    return v5

    :cond_20
    xor-int/lit8 v5, v1, -0x1

    goto :goto_1f
.end method

.method public static binarySearch([JJ)I
    .registers 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 449
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
    .registers 10
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 525
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 526
    move v1, p1

    .line 527
    .local v1, lo:I
    sub-int v0, p2, v5

    .line 529
    .local v0, hi:I
    :goto_8
    if-gt v1, v0, :cond_22

    .line 530
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 532
    .local v2, mid:I
    aget-object v4, p0, v2

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v4, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 534
    .local v3, midValCmp:I
    if-gez v3, :cond_1b

    .line 535
    add-int/lit8 v1, v2, 0x1

    goto :goto_8

    .line 536
    :cond_1b
    if-lez v3, :cond_20

    .line 537
    sub-int v0, v2, v5

    goto :goto_8

    :cond_20
    move v4, v2

    .line 542
    .end local v2           #mid:I
    .end local v3           #midValCmp:I
    :goto_21
    return v4

    :cond_22
    xor-int/lit8 v4, v1, -0x1

    goto :goto_21
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .registers 11
    .parameter
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p3, value:Ljava/lang/Object;,"TT;"
    .local p4, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const/4 v5, 0x1

    .line 587
    if-nez p4, :cond_8

    .line 588
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v4

    .line 607
    :goto_7
    return v4

    .line 591
    :cond_8
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 592
    move v1, p1

    .line 593
    .local v1, lo:I
    sub-int v0, p2, v5

    .line 595
    .local v0, hi:I
    :goto_f
    if-gt v1, v0, :cond_27

    .line 596
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 597
    .local v2, mid:I
    aget-object v4, p0, v2

    invoke-interface {p4, v4, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 599
    .local v3, midValCmp:I
    if-gez v3, :cond_20

    .line 600
    add-int/lit8 v1, v2, 0x1

    goto :goto_f

    .line 601
    :cond_20
    if-lez v3, :cond_25

    .line 602
    sub-int v0, v2, v5

    goto :goto_f

    :cond_25
    move v4, v2

    .line 604
    goto :goto_7

    .line 607
    .end local v2           #mid:I
    .end local v3           #midValCmp:I
    :cond_27
    xor-int/lit8 v4, v1, -0x1

    goto :goto_7
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 502
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([SIIS)I
    .registers 10
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 641
    array-length v4, p0

    invoke-static {p1, p2, v4}, Ljava/util/Arrays;->checkBinarySearchBounds(III)V

    .line 642
    move v1, p1

    .line 643
    .local v1, lo:I
    sub-int v0, p2, v5

    .line 645
    .local v0, hi:I
    :goto_8
    if-gt v1, v0, :cond_1c

    .line 646
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 647
    .local v2, mid:I
    aget-short v3, p0, v2

    .line 649
    .local v3, midVal:S
    if-ge v3, p3, :cond_15

    .line 650
    add-int/lit8 v1, v2, 0x1

    goto :goto_8

    .line 651
    :cond_15
    if-le v3, p3, :cond_1a

    .line 652
    sub-int v0, v2, v5

    goto :goto_8

    :cond_1a
    move v4, v2

    .line 657
    .end local v2           #mid:I
    .end local v3           #midVal:S
    :goto_1b
    return v4

    :cond_1c
    xor-int/lit8 v4, v1, -0x1

    goto :goto_1b
.end method

.method public static binarySearch([SS)I
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 621
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/Arrays;->binarySearch([SIIS)I

    move-result v0

    return v0
.end method

.method private static checkBinarySearchBounds(III)V
    .registers 4
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "length"

    .prologue
    .line 661
    if-le p0, p1, :cond_8

    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 664
    :cond_8
    if-ltz p0, :cond_c

    if-le p1, p2, :cond_12

    .line 665
    :cond_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 667
    :cond_12
    return-void
.end method

.method public static checkOffsetAndCount(III)V
    .registers 6
    .parameter "arrayLength"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 1739
    or-int v0, p1, p2

    if-ltz v0, :cond_a

    if-gt p1, p0, :cond_a

    sub-int v0, p0, p1

    if-ge v0, p2, :cond_37

    .line 1740
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1743
    :cond_37
    return-void
.end method

.method public static checkStartAndEnd(III)V
    .registers 6
    .parameter "arrayLength"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1752
    if-le p1, p2, :cond_25

    .line 1753
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start > end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1755
    :cond_25
    if-gez p1, :cond_40

    .line 1756
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1758
    :cond_40
    if-le p2, p0, :cond_65

    .line 1759
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end > array length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1762
    :cond_65
    return-void
.end method

.method public static copyOf([BI)[B
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2546
    if-gez p1, :cond_8

    .line 2547
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2549
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([CI)[C
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2565
    if-gez p1, :cond_8

    .line 2566
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2568
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([DI)[D
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2584
    if-gez p1, :cond_8

    .line 2585
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2587
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([FI)[F
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2603
    if-gez p1, :cond_8

    .line 2604
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2606
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([II)[I
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2622
    if-gez p1, :cond_8

    .line 2623
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2625
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([JI)[J
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2641
    if-gez p1, :cond_8

    .line 2642
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2644
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter "newLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 2679
    .local p0, original:[Ljava/lang/Object;,"[TT;"
    if-nez p0, :cond_8

    .line 2680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2682
    :cond_8
    if-gez p1, :cond_10

    .line 2683
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2685
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter "newLength"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 2704
    .local p0, original:[Ljava/lang/Object;,"[TU;"
    .local p2, newType:Ljava/lang/Class;,"Ljava/lang/Class<+[TT;>;"
    if-gez p1, :cond_8

    .line 2705
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2707
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([SI)[S
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2660
    if-gez p1, :cond_8

    .line 2661
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2663
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([SII)[S

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .registers 3
    .parameter "original"
    .parameter "newLength"

    .prologue
    .line 2527
    if-gez p1, :cond_8

    .line 2528
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2530
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([ZII)[Z

    move-result-object v0

    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2756
    if-le p1, p2, :cond_8

    .line 2757
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2759
    :cond_8
    array-length v1, p0

    .line 2760
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2761
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2763
    :cond_13
    sub-int v3, p2, p1

    .line 2764
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2765
    .local v0, copyLength:I
    new-array v2, v3, [B

    .line 2766
    .local v2, result:[B
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2767
    return-object v2
.end method

.method public static copyOfRange([CII)[C
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2786
    if-le p1, p2, :cond_8

    .line 2787
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2789
    :cond_8
    array-length v1, p0

    .line 2790
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2791
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2793
    :cond_13
    sub-int v3, p2, p1

    .line 2794
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2795
    .local v0, copyLength:I
    new-array v2, v3, [C

    .line 2796
    .local v2, result:[C
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2797
    return-object v2
.end method

.method public static copyOfRange([DII)[D
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2816
    if-le p1, p2, :cond_8

    .line 2817
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2819
    :cond_8
    array-length v1, p0

    .line 2820
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2821
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2823
    :cond_13
    sub-int v3, p2, p1

    .line 2824
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2825
    .local v0, copyLength:I
    new-array v2, v3, [D

    .line 2826
    .local v2, result:[D
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2827
    return-object v2
.end method

.method public static copyOfRange([FII)[F
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2846
    if-le p1, p2, :cond_8

    .line 2847
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2849
    :cond_8
    array-length v1, p0

    .line 2850
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2851
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2853
    :cond_13
    sub-int v3, p2, p1

    .line 2854
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2855
    .local v0, copyLength:I
    new-array v2, v3, [F

    .line 2856
    .local v2, result:[F
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2857
    return-object v2
.end method

.method public static copyOfRange([III)[I
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2876
    if-le p1, p2, :cond_8

    .line 2877
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2879
    :cond_8
    array-length v1, p0

    .line 2880
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2881
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2883
    :cond_13
    sub-int v3, p2, p1

    .line 2884
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2885
    .local v0, copyLength:I
    new-array v2, v3, [I

    .line 2886
    .local v2, result:[I
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2887
    return-object v2
.end method

.method public static copyOfRange([JII)[J
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2906
    if-le p1, p2, :cond_8

    .line 2907
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2909
    :cond_8
    array-length v1, p0

    .line 2910
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2911
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2913
    :cond_13
    sub-int v3, p2, p1

    .line 2914
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2915
    .local v0, copyLength:I
    new-array v2, v3, [J

    .line 2916
    .local v2, result:[J
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2917
    return-object v2
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 2967
    .local p0, original:[Ljava/lang/Object;,"[TT;"
    array-length v2, p0

    .line 2968
    .local v2, originalLength:I
    if-le p1, p2, :cond_9

    .line 2969
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 2971
    :cond_9
    if-ltz p1, :cond_d

    if-le p1, v2, :cond_13

    .line 2972
    :cond_d
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2974
    :cond_13
    sub-int v4, p2, p1

    .line 2975
    .local v4, resultLength:I
    sub-int v5, v2, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2976
    .local v1, copyLength:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 2977
    .local v3, result:[Ljava/lang/Object;,"[TT;"
    const/4 v5, 0x0

    invoke-static {p0, p1, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2978
    return-object v3
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 2999
    .local p0, original:[Ljava/lang/Object;,"[TU;"
    .local p3, newType:Ljava/lang/Class;,"Ljava/lang/Class<+[TT;>;"
    if-le p1, p2, :cond_8

    .line 3000
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 3002
    :cond_8
    array-length v2, p0

    .line 3003
    .local v2, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v2, :cond_13

    .line 3004
    :cond_d
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 3006
    :cond_13
    sub-int v4, p2, p1

    .line 3007
    .local v4, resultLength:I
    sub-int v5, v2, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3008
    .local v1, copyLength:I
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 3009
    .local v3, result:[Ljava/lang/Object;,"[TT;"
    const/4 v5, 0x0

    invoke-static {p0, p1, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3010
    return-object v3
.end method

.method public static copyOfRange([SII)[S
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2936
    if-le p1, p2, :cond_8

    .line 2937
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2939
    :cond_8
    array-length v1, p0

    .line 2940
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2941
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2943
    :cond_13
    sub-int v3, p2, p1

    .line 2944
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2945
    .local v0, copyLength:I
    new-array v2, v3, [S

    .line 2946
    .local v2, result:[S
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2947
    return-object v2
.end method

.method public static copyOfRange([ZII)[Z
    .registers 8
    .parameter "original"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2726
    if-le p1, p2, :cond_8

    .line 2727
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2729
    :cond_8
    array-length v1, p0

    .line 2730
    .local v1, originalLength:I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 2731
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2733
    :cond_13
    sub-int v3, p2, p1

    .line 2734
    .local v3, resultLength:I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2735
    .local v0, copyLength:I
    new-array v2, v3, [Z

    .line 2736
    .local v2, result:[Z
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2737
    return-object v2
.end method

.method public static deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1635
    if-ne p0, p1, :cond_6

    move v3, v6

    .line 1648
    :goto_5
    return v3

    .line 1638
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_10

    :cond_e
    move v3, v5

    .line 1639
    goto :goto_5

    .line 1641
    :cond_10
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_23

    .line 1642
    aget-object v0, p0, v2

    .local v0, e1:Ljava/lang/Object;
    aget-object v1, p1, v2

    .line 1644
    .local v1, e2:Ljava/lang/Object;
    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    move v3, v5

    .line 1645
    goto :goto_5

    .line 1641
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .end local v0           #e1:Ljava/lang/Object;
    .end local v1           #e2:Ljava/lang/Object;
    :cond_23
    move v3, v6

    .line 1648
    goto :goto_5
.end method

.method private static deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"

    .prologue
    const/4 v3, 0x0

    .line 1654
    if-ne p0, p1, :cond_5

    .line 1655
    const/4 v2, 0x1

    .line 1701
    .end local p0
    .end local p1
    :goto_4
    return v2

    .line 1658
    .restart local p0
    .restart local p1
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v2, v3

    .line 1659
    goto :goto_4

    .line 1662
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1663
    .local v0, cl1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1665
    .local v1, cl2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_1f

    move v2, v3

    .line 1666
    goto :goto_4

    .line 1669
    :cond_1f
    if-nez v0, :cond_26

    .line 1670
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .line 1676
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_39

    .line 1677
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .line 1680
    .restart local p0
    .restart local p1
    :cond_39
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1681
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    check-cast p1, [I

    .end local p1
    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_4

    .line 1683
    .restart local p0
    .restart local p1
    :cond_4e
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1684
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    check-cast p1, [C

    .end local p1
    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    goto :goto_4

    .line 1686
    .restart local p0
    .restart local p1
    :cond_63
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1687
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    check-cast p1, [Z

    .end local p1
    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    goto :goto_4

    .line 1689
    .restart local p0
    .restart local p1
    :cond_78
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 1690
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto/16 :goto_4

    .line 1692
    .restart local p0
    .restart local p1
    :cond_8e
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 1693
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    check-cast p1, [J

    .end local p1
    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    goto/16 :goto_4

    .line 1695
    .restart local p0
    .restart local p1
    :cond_a4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 1696
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    check-cast p1, [F

    .end local p1
    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    goto/16 :goto_4

    .line 1698
    .restart local p0
    .restart local p1
    :cond_ba
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1699
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    check-cast p1, [D

    .end local p1
    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    goto/16 :goto_4

    .line 1701
    .restart local p0
    .restart local p1
    :cond_d0
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    check-cast p1, [S

    .end local p1
    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v2

    goto/16 :goto_4
.end method

.method public static deepHashCode([Ljava/lang/Object;)I
    .registers 8
    .parameter "array"

    .prologue
    .line 1304
    if-nez p0, :cond_4

    .line 1305
    const/4 v6, 0x0

    .line 1312
    :goto_3
    return v6

    .line 1307
    :cond_4
    const/4 v3, 0x1

    .line 1308
    .local v3, hashCode:I
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_17

    aget-object v1, v0, v4

    .line 1309
    .local v1, element:Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->deepHashCodeElement(Ljava/lang/Object;)I

    move-result v2

    .line 1310
    .local v2, elementHashCode:I
    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    .line 1308
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .end local v1           #element:Ljava/lang/Object;
    .end local v2           #elementHashCode:I
    :cond_17
    move v6, v3

    .line 1312
    goto :goto_3
.end method

.method private static deepHashCodeElement(Ljava/lang/Object;)I
    .registers 3
    .parameter "element"

    .prologue
    .line 1317
    if-nez p0, :cond_4

    .line 1318
    const/4 v1, 0x0

    .line 1354
    .end local p0
    :goto_3
    return v1

    .line 1321
    .restart local p0
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1323
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_13

    .line 1324
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    .line 1330
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_22

    .line 1331
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_3

    .line 1333
    .restart local p0
    :cond_22
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1334
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    goto :goto_3

    .line 1336
    .restart local p0
    :cond_33
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1337
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    goto :goto_3

    .line 1339
    .restart local p0
    :cond_44
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1340
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    goto :goto_3

    .line 1342
    .restart local p0
    :cond_55
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1343
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_3

    .line 1345
    .restart local p0
    :cond_66
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1346
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    goto :goto_3

    .line 1348
    .restart local p0
    :cond_77
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1349
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    goto/16 :goto_3

    .line 1351
    .restart local p0
    :cond_89
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1352
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    goto/16 :goto_3

    .line 1354
    .restart local p0
    :cond_9b
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v1

    goto/16 :goto_3
.end method

.method public static deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2396
    if-nez p0, :cond_5

    .line 2397
    const-string v1, "null"

    .line 2402
    :goto_4
    return-object v1

    .line 2400
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2401
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 2402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method private static deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 12
    .parameter "array"
    .parameter "origArrays"
    .parameter "sb"

    .prologue
    const/4 v8, 0x0

    .line 2421
    if-nez p0, :cond_9

    .line 2422
    const-string v7, "null"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2488
    :goto_8
    return-void

    .line 2426
    :cond_9
    const/16 v7, 0x5b

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2428
    const/4 v4, 0x0

    .local v4, i:I
    :goto_f
    array-length v7, p0

    if-ge v4, v7, :cond_11b

    .line 2429
    if-eqz v4, :cond_19

    .line 2430
    const-string v7, ", "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2433
    :cond_19
    aget-object v1, p0, v4

    .line 2434
    .local v1, elem:Ljava/lang/Object;
    if-nez v1, :cond_25

    .line 2436
    const-string v7, "null"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    .end local v1           #elem:Ljava/lang/Object;
    :goto_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 2439
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2440
    .local v2, elemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_114

    .line 2444
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 2445
    .local v3, elemElemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_e2

    .line 2447
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 2448
    check-cast v1, [Z

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 2449
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_4d
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 2450
    check-cast v1, [B

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 2451
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_61
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 2452
    check-cast v1, [C

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [C

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 2453
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_75
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 2454
    check-cast v1, [D

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 2455
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_89
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 2456
    check-cast v1, [F

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 2457
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_9d
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b2

    .line 2458
    check-cast v1, [I

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_22

    .line 2459
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_b2
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c7

    .line 2460
    check-cast v1, [J

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_22

    .line 2461
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_c7
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dc

    .line 2462
    check-cast v1, [S

    .end local v1           #elem:Ljava/lang/Object;
    check-cast v1, [S

    invoke-static {v1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_22

    .line 2465
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_dc
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2469
    :cond_e2
    sget-boolean v7, Ljava/util/Arrays;->$assertionsDisabled:Z

    if-nez v7, :cond_f0

    instance-of v7, v1, [Ljava/lang/Object;

    if-nez v7, :cond_f0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2470
    :cond_f0
    invoke-static {p1, v1}, Ljava/util/Arrays;->deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fd

    .line 2471
    const-string v7, "[...]"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_22

    .line 2473
    :cond_fd
    check-cast v1, [Ljava/lang/Object;

    .end local v1           #elem:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 2474
    .local v5, newArray:[Ljava/lang/Object;
    array-length v7, p1

    add-int/lit8 v7, v7, 0x1

    new-array v6, v7, [Ljava/lang/Object;

    .line 2475
    .local v6, newOrigArrays:[Ljava/lang/Object;
    array-length v7, p1

    invoke-static {p1, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2477
    array-length v7, p1

    aput-object v5, v6, v7

    .line 2479
    invoke-static {v5, v6, p2}, Ljava/util/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto/16 :goto_22

    .line 2483
    .end local v3           #elemElemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #newArray:[Ljava/lang/Object;
    .end local v6           #newOrigArrays:[Ljava/lang/Object;
    .restart local v1       #elem:Ljava/lang/Object;
    :cond_114
    aget-object v7, p0, v4

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_22

    .line 2487
    .end local v1           #elem:Ljava/lang/Object;
    .end local v2           #elemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_11b
    const/16 v7, 0x5d

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8
.end method

.method private static deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .parameter "origArrays"
    .parameter "array"

    .prologue
    const/4 v5, 0x0

    .line 2503
    if-eqz p0, :cond_6

    array-length v4, p0

    if-nez v4, :cond_8

    :cond_6
    move v4, v5

    .line 2511
    :goto_7
    return v4

    .line 2506
    :cond_8
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_b
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .line 2507
    .local v1, element:Ljava/lang/Object;
    if-ne v1, p1, :cond_13

    .line 2508
    const/4 v4, 0x1

    goto :goto_7

    .line 2506
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .end local v1           #element:Ljava/lang/Object;
    :cond_16
    move v4, v5

    .line 2511
    goto :goto_7
.end method

.method public static equals([B[B)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1369
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 1380
    :goto_5
    return v1

    .line 1372
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v3

    .line 1373
    goto :goto_5

    .line 1375
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    .line 1376
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1c

    move v1, v3

    .line 1377
    goto :goto_5

    .line 1375
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    move v1, v4

    .line 1380
    goto :goto_5
.end method

.method public static equals([C[C)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1421
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 1432
    :goto_5
    return v1

    .line 1424
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v3

    .line 1425
    goto :goto_5

    .line 1427
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    .line 1428
    aget-char v1, p0, v0

    aget-char v2, p1, v0

    if-eq v1, v2, :cond_1c

    move v1, v3

    .line 1429
    goto :goto_5

    .line 1427
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    move v1, v4

    .line 1432
    goto :goto_5
.end method

.method public static equals([D[D)Z
    .registers 9
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1530
    if-ne p0, p1, :cond_6

    move v1, v6

    .line 1542
    :goto_5
    return v1

    .line 1533
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v5

    .line 1534
    goto :goto_5

    .line 1536
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_29

    .line 1537
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    aget-wide v3, p1, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_26

    move v1, v5

    .line 1539
    goto :goto_5

    .line 1536
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_29
    move v1, v6

    .line 1542
    goto :goto_5
.end method

.method public static equals([F[F)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1501
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 1513
    :goto_5
    return v1

    .line 1504
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v3

    .line 1505
    goto :goto_5

    .line 1507
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_27

    .line 1508
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_24

    move v1, v3

    .line 1510
    goto :goto_5

    .line 1507
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_27
    move v1, v4

    .line 1513
    goto :goto_5
.end method

.method public static equals([I[I)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1447
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 1458
    :goto_5
    return v1

    .line 1450
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v3

    .line 1451
    goto :goto_5

    .line 1453
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    .line 1454
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_1c

    move v1, v3

    .line 1455
    goto :goto_5

    .line 1453
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    move v1, v4

    .line 1458
    goto :goto_5
.end method

.method public static equals([J[J)Z
    .registers 9
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1473
    if-ne p0, p1, :cond_6

    move v1, v6

    .line 1484
    :goto_5
    return v1

    .line 1476
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v5

    .line 1477
    goto :goto_5

    .line 1479
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_21

    .line 1480
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1e

    move v1, v5

    .line 1481
    goto :goto_5

    .line 1479
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_21
    move v1, v6

    .line 1484
    goto :goto_5
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1583
    if-ne p0, p1, :cond_6

    move v3, v6

    .line 1595
    :goto_5
    return v3

    .line 1586
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_10

    :cond_e
    move v3, v5

    .line 1587
    goto :goto_5

    .line 1589
    :cond_10
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_27

    .line 1590
    aget-object v0, p0, v2

    .local v0, e1:Ljava/lang/Object;
    aget-object v1, p1, v2

    .line 1591
    .local v1, e2:Ljava/lang/Object;
    if-nez v0, :cond_1f

    if-nez v1, :cond_25

    .line 1589
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1591
    :cond_1f
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_25
    move v3, v5

    .line 1592
    goto :goto_5

    .end local v0           #e1:Ljava/lang/Object;
    .end local v1           #e2:Ljava/lang/Object;
    :cond_27
    move v3, v6

    .line 1595
    goto :goto_5
.end method

.method public static equals([S[S)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1395
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 1406
    :goto_5
    return v1

    .line 1398
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v3

    .line 1399
    goto :goto_5

    .line 1401
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    .line 1402
    aget-short v1, p0, v0

    aget-short v2, p1, v0

    if-eq v1, v2, :cond_1c

    move v1, v3

    .line 1403
    goto :goto_5

    .line 1401
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    move v1, v4

    .line 1406
    goto :goto_5
.end method

.method public static equals([Z[Z)Z
    .registers 7
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1557
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 1568
    :goto_5
    return v1

    .line 1560
    :cond_6
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    :cond_e
    move v1, v3

    .line 1561
    goto :goto_5

    .line 1563
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    .line 1564
    aget-boolean v1, p0, v0

    aget-boolean v2, p1, v0

    if-eq v1, v2, :cond_1c

    move v1, v3

    .line 1565
    goto :goto_5

    .line 1563
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1f
    move v1, v4

    .line 1568
    goto :goto_5
.end method

.method public static fill([BB)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 678
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 679
    aput-byte p1, p0, v0

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 681
    :cond_9
    return-void
.end method

.method public static fill([BIIB)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 700
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 701
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 702
    aput-byte p3, p0, v0

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 704
    :cond_c
    return-void
.end method

.method public static fill([CC)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 752
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 753
    aput-char p1, p0, v0

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 755
    :cond_9
    return-void
.end method

.method public static fill([CIIC)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 774
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 775
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 776
    aput-char p3, p0, v0

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 778
    :cond_c
    return-void
.end method

.method public static fill([DD)V
    .registers 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 900
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 901
    aput-wide p1, p0, v0

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 903
    :cond_9
    return-void
.end method

.method public static fill([DIID)V
    .registers 7
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 922
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 923
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 924
    aput-wide p3, p0, v0

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 926
    :cond_c
    return-void
.end method

.method public static fill([FF)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 863
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 864
    aput p1, p0, v0

    .line 863
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 866
    :cond_9
    return-void
.end method

.method public static fill([FIIF)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 885
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 886
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 887
    aput p3, p0, v0

    .line 886
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 889
    :cond_c
    return-void
.end method

.method public static fill([II)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 789
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 790
    aput p1, p0, v0

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 792
    :cond_9
    return-void
.end method

.method public static fill([IIII)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 811
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 812
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 813
    aput p3, p0, v0

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 815
    :cond_c
    return-void
.end method

.method public static fill([JIIJ)V
    .registers 7
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 848
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 849
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 850
    aput-wide p3, p0, v0

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 852
    :cond_c
    return-void
.end method

.method public static fill([JJ)V
    .registers 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 826
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 827
    aput-wide p1, p0, v0

    .line 826
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 829
    :cond_9
    return-void
.end method

.method public static fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 996
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 997
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 998
    aput-object p3, p0, v0

    .line 997
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1000
    :cond_c
    return-void
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 974
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 975
    aput-object p1, p0, v0

    .line 974
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 977
    :cond_9
    return-void
.end method

.method public static fill([SIIS)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 737
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 738
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 739
    aput-short p3, p0, v0

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 741
    :cond_c
    return-void
.end method

.method public static fill([SS)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 715
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 716
    aput-short p1, p0, v0

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 718
    :cond_9
    return-void
.end method

.method public static fill([ZIIZ)V
    .registers 6
    .parameter "array"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 959
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 960
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 961
    aput-boolean p3, p0, v0

    .line 960
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 963
    :cond_c
    return-void
.end method

.method public static fill([ZZ)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 937
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 938
    aput-boolean p1, p0, v0

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 940
    :cond_9
    return-void
.end method

.method public static hashCode([B)I
    .registers 7
    .parameter "array"

    .prologue
    .line 1131
    if-nez p0, :cond_4

    .line 1132
    const/4 v5, 0x0

    .line 1139
    :goto_3
    return v5

    .line 1134
    :cond_4
    const/4 v2, 0x1

    .line 1135
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_13

    aget-byte v1, v0, v3

    .line 1137
    .local v1, element:B
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1135
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .end local v1           #element:B
    :cond_13
    move v5, v2

    .line 1139
    goto :goto_3
.end method

.method public static hashCode([C)I
    .registers 7
    .parameter "array"

    .prologue
    .line 1103
    if-nez p0, :cond_4

    .line 1104
    const/4 v5, 0x0

    .line 1111
    :goto_3
    return v5

    .line 1106
    :cond_4
    const/4 v2, 0x1

    .line 1107
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_13

    aget-char v1, v0, v3

    .line 1109
    .local v1, element:C
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1107
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .end local v1           #element:C
    :cond_13
    move v5, v2

    .line 1111
    goto :goto_3
.end method

.method public static hashCode([D)I
    .registers 12
    .parameter "array"

    .prologue
    .line 1222
    if-nez p0, :cond_4

    .line 1223
    const/4 v8, 0x0

    .line 1235
    :goto_3
    return v8

    .line 1225
    :cond_4
    const/4 v3, 0x1

    .line 1227
    .local v3, hashCode:I
    move-object v0, p0

    .local v0, arr$:[D
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_1d

    aget-wide v1, v0, v4

    .line 1228
    .local v1, element:D
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 1233
    .local v6, v:J
    mul-int/lit8 v8, v3, 0x1f

    const/16 v9, 0x20

    ushr-long v9, v6, v9

    xor-long/2addr v9, v6

    long-to-int v9, v9

    add-int v3, v8, v9

    .line 1227
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .end local v1           #element:D
    .end local v6           #v:J
    :cond_1d
    move v8, v3

    .line 1235
    goto :goto_3
.end method

.method public static hashCode([F)I
    .registers 8
    .parameter "array"

    .prologue
    .line 1191
    if-nez p0, :cond_4

    .line 1192
    const/4 v5, 0x0

    .line 1202
    :goto_3
    return v5

    .line 1194
    :cond_4
    const/4 v2, 0x1

    .line 1195
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[F
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_17

    aget v1, v0, v3

    .line 1200
    .local v1, element:F
    mul-int/lit8 v5, v2, 0x1f

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int v2, v5, v6

    .line 1195
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .end local v1           #element:F
    :cond_17
    move v5, v2

    .line 1202
    goto :goto_3
.end method

.method public static hashCode([I)I
    .registers 7
    .parameter "array"

    .prologue
    .line 1047
    if-nez p0, :cond_4

    .line 1048
    const/4 v5, 0x0

    .line 1055
    :goto_3
    return v5

    .line 1050
    :cond_4
    const/4 v2, 0x1

    .line 1051
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_13

    aget v1, v0, v3

    .line 1053
    .local v1, element:I
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1051
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .end local v1           #element:I
    :cond_13
    move v5, v2

    .line 1055
    goto :goto_3
.end method

.method public static hashCode([J)I
    .registers 10
    .parameter "array"

    .prologue
    .line 1159
    if-nez p0, :cond_4

    .line 1160
    const/4 v6, 0x0

    .line 1171
    :goto_3
    return v6

    .line 1162
    :cond_4
    const/4 v3, 0x1

    .line 1163
    .local v3, hashCode:I
    move-object v0, p0

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_19

    aget-wide v1, v0, v4

    .line 1168
    .local v1, elementValue:J
    mul-int/lit8 v6, v3, 0x1f

    const/16 v7, 0x20

    ushr-long v7, v1, v7

    xor-long/2addr v7, v1

    long-to-int v7, v7

    add-int v3, v6, v7

    .line 1163
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .end local v1           #elementValue:J
    :cond_19
    move v6, v3

    .line 1171
    goto :goto_3
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 8
    .parameter "array"

    .prologue
    .line 1259
    if-nez p0, :cond_4

    .line 1260
    const/4 v6, 0x0

    .line 1273
    :goto_3
    return v6

    .line 1262
    :cond_4
    const/4 v3, 0x1

    .line 1263
    .local v3, hashCode:I
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_8
    if-ge v4, v5, :cond_1b

    aget-object v1, v0, v4

    .line 1266
    .local v1, element:Ljava/lang/Object;
    if-nez v1, :cond_16

    .line 1267
    const/4 v2, 0x0

    .line 1271
    .local v2, elementHashCode:I
    :goto_f
    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    .line 1263
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1269
    .end local v2           #elementHashCode:I
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .restart local v2       #elementHashCode:I
    goto :goto_f

    .end local v1           #element:Ljava/lang/Object;
    .end local v2           #elementHashCode:I
    :cond_1b
    move v6, v3

    .line 1273
    goto :goto_3
.end method

.method public static hashCode([S)I
    .registers 7
    .parameter "array"

    .prologue
    .line 1075
    if-nez p0, :cond_4

    .line 1076
    const/4 v5, 0x0

    .line 1083
    :goto_3
    return v5

    .line 1078
    :cond_4
    const/4 v2, 0x1

    .line 1079
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[S
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_13

    aget-short v1, v0, v3

    .line 1081
    .local v1, element:S
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1079
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .end local v1           #element:S
    :cond_13
    move v5, v2

    .line 1083
    goto :goto_3
.end method

.method public static hashCode([Z)I
    .registers 8
    .parameter "array"

    .prologue
    .line 1019
    if-nez p0, :cond_4

    .line 1020
    const/4 v5, 0x0

    .line 1027
    :goto_3
    return v5

    .line 1022
    :cond_4
    const/4 v2, 0x1

    .line 1023
    .local v2, hashCode:I
    move-object v0, p0

    .local v0, arr$:[Z
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_1a

    aget-boolean v1, v0, v3

    .line 1025
    .local v1, element:Z
    mul-int/lit8 v5, v2, 0x1f

    if-eqz v1, :cond_17

    const/16 v6, 0x4cf

    :goto_12
    add-int v2, v5, v6

    .line 1023
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1025
    :cond_17
    const/16 v6, 0x4d5

    goto :goto_12

    .end local v1           #element:Z
    :cond_1a
    move v5, v2

    .line 1027
    goto :goto_3
.end method

.method public static sort([B)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1711
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([B)V

    .line 1712
    return-void
.end method

.method public static sort([BII)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1729
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 1730
    return-void
.end method

.method public static sort([C)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1771
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([C)V

    .line 1772
    return-void
.end method

.method public static sort([CII)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1789
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([CII)V

    .line 1790
    return-void
.end method

.method public static sort([D)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1800
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([D)V

    .line 1801
    return-void
.end method

.method public static sort([DII)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1820
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([DII)V

    .line 1821
    return-void
.end method

.method public static sort([F)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1831
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([F)V

    .line 1832
    return-void
.end method

.method public static sort([FII)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1851
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([FII)V

    .line 1852
    return-void
.end method

.method public static sort([I)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1861
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([I)V

    .line 1862
    return-void
.end method

.method public static sort([III)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1879
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([III)V

    .line 1880
    return-void
.end method

.method public static sort([J)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1889
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([J)V

    .line 1890
    return-void
.end method

.method public static sort([JII)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1907
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([JII)V

    .line 1908
    return-void
.end method

.method public static sort([Ljava/lang/Object;)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1987
    invoke-static {p0}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;)V

    .line 1989
    return-void
.end method

.method public static sort([Ljava/lang/Object;II)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2013
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    .line 2015
    return-void
.end method

.method public static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 4
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2085
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p3, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 2087
    return-void
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2103
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-static {p0, p1}, Ljava/util/TimSort;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2105
    return-void
.end method

.method public static sort([S)V
    .registers 1
    .parameter "array"

    .prologue
    .line 1917
    invoke-static {p0}, Ljava/util/DualPivotQuicksort;->sort([S)V

    .line 1918
    return-void
.end method

.method public static sort([SII)V
    .registers 3
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1935
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->sort([SII)V

    .line 1936
    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2150
    if-nez p0, :cond_5

    .line 2151
    const-string v2, "null"

    .line 2164
    :goto_4
    return-object v2

    .line 2153
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2154
    const-string v2, "[]"

    goto :goto_4

    .line 2156
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2157
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2158
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2159
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2160
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2163
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([C)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2180
    if-nez p0, :cond_5

    .line 2181
    const-string v2, "null"

    .line 2194
    :goto_4
    return-object v2

    .line 2183
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2184
    const-string v2, "[]"

    goto :goto_4

    .line 2186
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2187
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2188
    const/4 v2, 0x0

    aget-char v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2189
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2190
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2191
    aget-char v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2193
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([D)Ljava/lang/String;
    .registers 5
    .parameter "array"

    .prologue
    .line 2210
    if-nez p0, :cond_5

    .line 2211
    const-string v2, "null"

    .line 2224
    :goto_4
    return-object v2

    .line 2213
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2214
    const-string v2, "[]"

    goto :goto_4

    .line 2216
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2217
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2218
    const/4 v2, 0x0

    aget-wide v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2219
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2220
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2223
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([F)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2240
    if-nez p0, :cond_5

    .line 2241
    const-string v2, "null"

    .line 2254
    :goto_4
    return-object v2

    .line 2243
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2244
    const-string v2, "[]"

    goto :goto_4

    .line 2246
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2247
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2248
    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2249
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2250
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2253
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([I)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2270
    if-nez p0, :cond_5

    .line 2271
    const-string v2, "null"

    .line 2284
    :goto_4
    return-object v2

    .line 2273
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2274
    const-string v2, "[]"

    goto :goto_4

    .line 2276
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2277
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2278
    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2279
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2280
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2283
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([J)Ljava/lang/String;
    .registers 5
    .parameter "array"

    .prologue
    .line 2300
    if-nez p0, :cond_5

    .line 2301
    const-string v2, "null"

    .line 2314
    :goto_4
    return-object v2

    .line 2303
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2304
    const-string v2, "[]"

    goto :goto_4

    .line 2306
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2307
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2308
    const/4 v2, 0x0

    aget-wide v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2309
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2310
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2311
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2309
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2313
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2360
    if-nez p0, :cond_5

    .line 2361
    const-string v2, "null"

    .line 2374
    :goto_4
    return-object v2

    .line 2363
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2364
    const-string v2, "[]"

    goto :goto_4

    .line 2366
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2367
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2368
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2369
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2370
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2371
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2373
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([S)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2330
    if-nez p0, :cond_5

    .line 2331
    const-string v2, "null"

    .line 2344
    :goto_4
    return-object v2

    .line 2333
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2334
    const-string v2, "[]"

    goto :goto_4

    .line 2336
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2337
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2338
    const/4 v2, 0x0

    aget-short v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2339
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2340
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2341
    aget-short v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2343
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2344
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static toString([Z)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 2120
    if-nez p0, :cond_5

    .line 2121
    const-string v2, "null"

    .line 2134
    :goto_4
    return-object v2

    .line 2123
    :cond_5
    array-length v2, p0

    if-nez v2, :cond_b

    .line 2124
    const-string v2, "[]"

    goto :goto_4

    .line 2126
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2127
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2128
    const/4 v2, 0x0

    aget-boolean v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2129
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 2130
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2131
    aget-boolean v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2133
    :cond_2f
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method
