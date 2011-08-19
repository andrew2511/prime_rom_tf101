.class Ljava/util/ComparableTimSort;
.super Ljava/lang/Object;
.source "ComparableTimSort.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/Object;)V
    .registers 6
    .parameter "a"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v3, 0x7

    iput v3, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 92
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 109
    iput-object p1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 112
    array-length v0, p1

    .line 114
    .local v0, len:I
    const/16 v3, 0x200

    if-ge v0, v3, :cond_25

    ushr-int/lit8 v3, v0, 0x1

    :goto_12
    new-array v1, v3, [Ljava/lang/Object;

    .line 116
    .local v1, newArray:[Ljava/lang/Object;
    iput-object v1, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 128
    const/16 v3, 0x78

    if-ge v0, v3, :cond_28

    const/4 v3, 0x5

    move v2, v3

    .line 131
    .local v2, stackLen:I
    :goto_1c
    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runBase:[I

    .line 132
    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    .line 133
    return-void

    .line 114
    .end local v1           #newArray:[Ljava/lang/Object;
    .end local v2           #stackLen:I
    :cond_25
    const/16 v3, 0x100

    goto :goto_12

    .line 128
    .restart local v1       #newArray:[Ljava/lang/Object;
    :cond_28
    const/16 v3, 0x606

    if-ge v0, v3, :cond_30

    const/16 v3, 0xa

    move v2, v3

    goto :goto_1c

    :cond_30
    const v3, 0x1d16f

    if-ge v0, v3, :cond_39

    const/16 v3, 0x13

    move v2, v3

    goto :goto_1c

    :cond_39
    const/16 v3, 0x28

    move v2, v3

    goto :goto_1c
.end method

.method private static binarySort([Ljava/lang/Object;III)V
    .registers 11
    .parameter "a"
    .parameter "lo"
    .parameter "hi"
    .parameter "start"

    .prologue
    .line 211
    if-ne p3, p1, :cond_4

    .line 212
    add-int/lit8 p3, p3, 0x1

    .line 213
    :cond_4
    :goto_4
    if-ge p3, p2, :cond_3d

    .line 215
    aget-object v3, p0, p3

    check-cast v3, Ljava/lang/Comparable;

    .line 218
    .local v3, pivot:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    move v0, p1

    .line 219
    .local v0, left:I
    move v4, p3

    .line 226
    .local v4, right:I
    :goto_c
    if-ge v0, v4, :cond_1f

    .line 227
    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    .line 228
    .local v1, mid:I
    aget-object v5, p0, v1

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1c

    .line 229
    move v4, v1

    goto :goto_c

    .line 231
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    goto :goto_c

    .line 242
    .end local v1           #mid:I
    :cond_1f
    sub-int v2, p3, v0

    .line 244
    .local v2, n:I
    packed-switch v2, :pswitch_data_3e

    .line 248
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    :goto_29
    aput-object v3, p0, v0

    .line 213
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 245
    :pswitch_2e
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p0, v6

    aput-object v6, p0, v5

    .line 246
    :pswitch_36
    add-int/lit8 v5, v0, 0x1

    aget-object v6, p0, v0

    aput-object v6, p0, v5

    goto :goto_29

    .line 252
    .end local v0           #left:I
    .end local v2           #n:I
    .end local v3           #pivot:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .end local v4           #right:I
    :cond_3d
    return-void

    .line 244
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_36
        :pswitch_2e
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .registers 8
    .parameter "a"
    .parameter "lo"
    .parameter "hi"

    .prologue
    const/4 v4, 0x1

    .line 281
    add-int/lit8 v0, p1, 0x1

    .line 282
    .local v0, runHi:I
    if-ne v0, p2, :cond_7

    move v2, v4

    .line 295
    :goto_6
    return v2

    .line 286
    :cond_7
    add-int/lit8 v1, v0, 0x1

    .end local v0           #runHi:I
    .local v1, runHi:I
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    aget-object v3, p0, p1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_42

    move v0, v1

    .line 287
    .end local v1           #runHi:I
    .restart local v0       #runHi:I
    :goto_16
    if-ge v0, p2, :cond_29

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    sub-int v3, v0, v4

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_29

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 289
    :cond_29
    invoke-static {p0, p1, v0}, Ljava/util/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    .line 295
    :cond_2c
    sub-int v2, v0, p1

    goto :goto_6

    .line 291
    :goto_2f
    if-ge v0, p2, :cond_2c

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    sub-int v3, v0, v4

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2c

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0           #runHi:I
    .restart local v1       #runHi:I
    :cond_42
    move v0, v1

    .end local v1           #runHi:I
    .restart local v0       #runHi:I
    goto :goto_2f
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .registers 5
    .parameter "minCapacity"

    .prologue
    .line 849
    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v2, p1, :cond_1e

    .line 851
    move v1, p1

    .line 852
    .local v1, newSize:I
    shr-int/lit8 v2, v1, 0x1

    or-int/2addr v1, v2

    .line 853
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    .line 854
    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    .line 855
    shr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    .line 856
    shr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    .line 857
    add-int/lit8 v1, v1, 0x1

    .line 859
    if-gez v1, :cond_21

    .line 860
    move v1, p1

    .line 865
    :goto_1a
    new-array v0, v1, [Ljava/lang/Object;

    .line 866
    .local v0, newArray:[Ljava/lang/Object;
    iput-object v0, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 868
    .end local v0           #newArray:[Ljava/lang/Object;
    .end local v1           #newSize:I
    :cond_1e
    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    .line 862
    .restart local v1       #newSize:I
    :cond_21
    iget-object v2, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v2, v2

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1a
.end method

.method private static gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .registers 11
    .parameter
    .parameter "a"
    .parameter "base"
    .parameter "len"
    .parameter "hint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 474
    .local v0, lastOfs:I
    const/4 v3, 0x1

    .line 475
    .local v3, ofs:I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_40

    .line 477
    sub-int v2, p3, p4

    .line 478
    .local v2, maxOfs:I
    :cond_e
    :goto_e
    if-ge v3, v2, :cond_24

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_24

    .line 479
    move v0, v3

    .line 480
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 481
    if-gtz v3, :cond_e

    .line 482
    move v3, v2

    goto :goto_e

    .line 484
    :cond_24
    if-le v3, v2, :cond_27

    .line 485
    move v3, v2

    .line 488
    :cond_27
    add-int/2addr v0, p4

    .line 489
    add-int/2addr v3, p4

    .line 514
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 515
    :goto_2b
    if-ge v0, v3, :cond_63

    .line 516
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 518
    .local v1, m:I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_61

    .line 519
    add-int/lit8 v0, v1, 0x1

    goto :goto_2b

    .line 492
    .end local v1           #m:I
    .end local v2           #maxOfs:I
    :cond_40
    add-int/lit8 v2, p4, 0x1

    .line 493
    .restart local v2       #maxOfs:I
    :cond_42
    :goto_42
    if-ge v3, v2, :cond_58

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_58

    .line 494
    move v0, v3

    .line 495
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 496
    if-gtz v3, :cond_42

    .line 497
    move v3, v2

    goto :goto_42

    .line 499
    :cond_58
    if-le v3, v2, :cond_5b

    .line 500
    move v3, v2

    .line 503
    :cond_5b
    move v4, v0

    .line 504
    .local v4, tmp:I
    sub-int v0, p4, v3

    .line 505
    sub-int v3, p4, v4

    goto :goto_29

    .line 521
    .end local v4           #tmp:I
    .restart local v1       #m:I
    :cond_61
    move v3, v1

    goto :goto_2b

    .line 524
    .end local v1           #m:I
    :cond_63
    return v3
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .registers 11
    .parameter
    .parameter "a"
    .parameter "base"
    .parameter "len"
    .parameter "hint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    .line 544
    .local v3, ofs:I
    const/4 v0, 0x0

    .line 545
    .local v0, lastOfs:I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_42

    .line 547
    add-int/lit8 v2, p4, 0x1

    .line 548
    .local v2, maxOfs:I
    :cond_e
    :goto_e
    if-ge v3, v2, :cond_24

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_24

    .line 549
    move v0, v3

    .line 550
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 551
    if-gtz v3, :cond_e

    .line 552
    move v3, v2

    goto :goto_e

    .line 554
    :cond_24
    if-le v3, v2, :cond_27

    .line 555
    move v3, v2

    .line 558
    :cond_27
    move v4, v0

    .line 559
    .local v4, tmp:I
    sub-int v0, p4, v3

    .line 560
    sub-int v3, p4, v4

    .line 584
    .end local v4           #tmp:I
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    .line 585
    :goto_2e
    if-ge v0, v3, :cond_63

    .line 586
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 588
    .local v1, m:I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_60

    .line 589
    move v3, v1

    goto :goto_2e

    .line 563
    .end local v1           #m:I
    .end local v2           #maxOfs:I
    :cond_42
    sub-int v2, p3, p4

    .line 564
    .restart local v2       #maxOfs:I
    :cond_44
    :goto_44
    if-ge v3, v2, :cond_5a

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_5a

    .line 565
    move v0, v3

    .line 566
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 567
    if-gtz v3, :cond_44

    .line 568
    move v3, v2

    goto :goto_44

    .line 570
    :cond_5a
    if-le v3, v2, :cond_5d

    .line 571
    move v3, v2

    .line 574
    :cond_5d
    add-int/2addr v0, p4

    .line 575
    add-int/2addr v3, p4

    goto :goto_2c

    .line 591
    .restart local v1       #m:I
    :cond_60
    add-int/lit8 v0, v1, 0x1

    goto :goto_2e

    .line 594
    .end local v1           #m:I
    :cond_63
    return v3
.end method

.method private mergeAt(I)V
    .registers 12
    .parameter "i"

    .prologue
    const/4 v9, 0x1

    .line 405
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    aget v0, v5, p1

    .line 406
    .local v0, base1:I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v3, v5, p1

    .line 407
    .local v3, len1:I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x1

    aget v1, v5, v6

    .line 408
    .local v1, base2:I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x1

    aget v4, v5, v6

    .line 417
    .local v4, len2:I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int v6, v3, v4

    aput v6, v5, p1

    .line 418
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    if-ne p1, v5, :cond_39

    .line 419
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v8, p1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    .line 420
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v8, p1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    .line 422
    :cond_39
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    sub-int/2addr v5, v9

    iput v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 428
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v3, v7}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    .line 430
    .local v2, k:I
    add-int/2addr v0, v2

    .line 431
    sub-int/2addr v3, v2

    .line 432
    if-nez v3, :cond_50

    .line 450
    :cond_4f
    :goto_4f
    return-void

    .line 439
    :cond_50
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int v6, v0, v3

    sub-int/2addr v6, v9

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    sub-int v7, v4, v9

    invoke-static {v5, v6, v1, v4, v7}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v4

    .line 442
    if-eqz v4, :cond_4f

    .line 446
    if-gt v3, v4, :cond_69

    .line 447
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeLo(IIII)V

    goto :goto_4f

    .line 449
    :cond_69
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeHi(IIII)V

    goto :goto_4f
.end method

.method private mergeCollapse()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 365
    :goto_1
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    if-le v1, v5, :cond_43

    .line 366
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x2

    sub-int v0, v1, v2

    .line 367
    .local v0, n:I
    if-lez v0, :cond_33

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    sub-int v2, v0, v5

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_33

    .line 368
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    sub-int v2, v0, v5

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_2f

    .line 369
    add-int/lit8 v0, v0, -0x1

    .line 370
    :cond_2f
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_1

    .line 371
    :cond_33
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_43

    .line 372
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_1

    .line 377
    .end local v0           #n:I
    :cond_43
    return-void
.end method

.method private mergeForceCollapse()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 384
    :goto_1
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    if-le v1, v4, :cond_20

    .line 385
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x2

    sub-int v0, v1, v2

    .line 386
    .local v0, n:I
    if-lez v0, :cond_1c

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    sub-int v2, v0, v4

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_1c

    .line 387
    add-int/lit8 v0, v0, -0x1

    .line 388
    :cond_1c
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_1

    .line 390
    .end local v0           #n:I
    :cond_20
    return-void
.end method

.method private mergeHi(IIII)V
    .registers 23
    .parameter "base1"
    .parameter "len1"
    .parameter "base2"
    .parameter "len2"

    .prologue
    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    move-object v5, v0

    .line 736
    .local v5, a:[Ljava/lang/Object;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v15

    .line 737
    .local v15, tmp:[Ljava/lang/Object;
    const/16 v16, 0x0

    move-object v0, v5

    move/from16 v1, p3

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    add-int v16, p1, p2

    const/16 v17, 0x1

    sub-int v8, v16, v17

    .line 740
    .local v8, cursor1:I
    const/16 v16, 0x1

    sub-int v10, p4, v16

    .line 741
    .local v10, cursor2:I
    add-int v16, p3, p4

    const/16 v17, 0x1

    sub-int v12, v16, v17

    .line 744
    .local v12, dest:I
    add-int/lit8 v13, v12, -0x1

    .end local v12           #dest:I
    .local v13, dest:I
    add-int/lit8 v9, v8, -0x1

    .end local v8           #cursor1:I
    .local v9, cursor1:I
    aget-object v16, v5, v8

    aput-object v16, v5, v12

    .line 745
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_4c

    .line 746
    const/16 v16, 0x0

    const/16 v17, 0x1

    sub-int v17, p4, v17

    sub-int v17, v13, v17

    move-object v0, v15

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v3, v17

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v8, v9

    .line 838
    .end local v9           #cursor1:I
    .end local p3
    .restart local v8       #cursor1:I
    :goto_4b
    return-void

    .line 749
    .end local v8           #cursor1:I
    .end local v12           #dest:I
    .restart local v9       #cursor1:I
    .restart local v13       #dest:I
    .restart local p3
    :cond_4c
    const/16 v16, 0x1

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_6c

    .line 750
    sub-int v12, v13, p2

    .line 751
    .end local v13           #dest:I
    .restart local v12       #dest:I
    sub-int v8, v9, p2

    .line 752
    .end local v9           #cursor1:I
    .restart local v8       #cursor1:I
    add-int/lit8 v16, v8, 0x1

    add-int/lit8 v17, v12, 0x1

    move-object v0, v5

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v3, v17

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
    aget-object v16, v15, v10

    aput-object v16, v5, v12

    goto :goto_4b

    .line 757
    .end local v8           #cursor1:I
    .end local v12           #dest:I
    .restart local v9       #cursor1:I
    .restart local v13       #dest:I
    :cond_6c
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ComparableTimSort;->minGallop:I

    move v14, v0

    .local v14, minGallop:I
    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v8, v9

    .line 760
    .end local v9           #cursor1:I
    .end local p3
    .restart local v8       #cursor1:I
    :goto_73
    const/4 v6, 0x0

    .line 761
    .local v6, count1:I
    const/4 v7, 0x0

    .line 769
    .local v7, count2:I
    :cond_75
    aget-object p3, v15, v10

    check-cast p3, Ljava/lang/Comparable;

    aget-object v16, v5, v8

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v16

    if-gez v16, :cond_c5

    .line 770
    add-int/lit8 v13, v12, -0x1

    .end local v12           #dest:I
    .restart local v13       #dest:I
    add-int/lit8 v9, v8, -0x1

    .end local v8           #cursor1:I
    .restart local v9       #cursor1:I
    aget-object v16, v5, v8

    aput-object v16, v5, v12

    .line 771
    add-int/lit8 v6, v6, 0x1

    .line 772
    const/4 v7, 0x0

    .line 773
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_1c1

    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v8, v9

    .line 822
    .end local v9           #cursor1:I
    .restart local v8       #cursor1:I
    :cond_96
    :goto_96
    const/16 v16, 0x1

    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_197

    const/16 v16, 0x1

    :goto_9f
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/ComparableTimSort;->minGallop:I

    .line 824
    const/16 v16, 0x1

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_19b

    .line 826
    sub-int v12, v12, p2

    .line 827
    sub-int v8, v8, p2

    .line 828
    add-int/lit8 v16, v8, 0x1

    add-int/lit8 v17, v12, 0x1

    move-object v0, v5

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v3, v17

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    aget-object v16, v15, v10

    aput-object v16, v5, v12

    goto :goto_4b

    .line 776
    :cond_c5
    add-int/lit8 v13, v12, -0x1

    .end local v12           #dest:I
    .restart local v13       #dest:I
    add-int/lit8 v11, v10, -0x1

    .end local v10           #cursor2:I
    .local v11, cursor2:I
    aget-object v16, v15, v10

    aput-object v16, v5, v12

    .line 777
    add-int/lit8 v7, v7, 0x1

    .line 778
    const/4 v6, 0x0

    .line 779
    add-int/lit8 p4, p4, -0x1

    const/16 v16, 0x1

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_dd

    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v10, v11

    .line 780
    .end local v11           #cursor2:I
    .restart local v10       #cursor2:I
    goto :goto_96

    .end local v10           #cursor2:I
    .end local v12           #dest:I
    .restart local v11       #cursor2:I
    .restart local v13       #dest:I
    :cond_dd
    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v10, v11

    .line 782
    .end local v11           #cursor2:I
    .restart local v10       #cursor2:I
    :goto_df
    or-int v16, v6, v7

    move/from16 v0, v16

    move v1, v14

    if-lt v0, v1, :cond_75

    .line 791
    :goto_e6
    aget-object p3, v15, v10

    check-cast p3, Ljava/lang/Comparable;

    const/16 v16, 0x1

    sub-int v16, p2, v16

    move-object/from16 v0, p3

    move-object v1, v5

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v16

    sub-int v6, p2, v16

    .line 792
    if-eqz v6, :cond_113

    .line 793
    sub-int/2addr v12, v6

    .line 794
    sub-int/2addr v8, v6

    .line 795
    sub-int p2, p2, v6

    .line 796
    add-int/lit8 v16, v8, 0x1

    add-int/lit8 v17, v12, 0x1

    move-object v0, v5

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v3, v17

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 797
    if-eqz p2, :cond_96

    .line 800
    :cond_113
    add-int/lit8 v13, v12, -0x1

    .end local v12           #dest:I
    .restart local v13       #dest:I
    add-int/lit8 v11, v10, -0x1

    .end local v10           #cursor2:I
    .restart local v11       #cursor2:I
    aget-object v16, v15, v10

    aput-object v16, v5, v12

    .line 801
    add-int/lit8 p4, p4, -0x1

    const/16 v16, 0x1

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_129

    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v10, v11

    .line 802
    .end local v11           #cursor2:I
    .restart local v10       #cursor2:I
    goto/16 :goto_96

    .line 804
    .end local v10           #cursor2:I
    .end local v12           #dest:I
    .restart local v11       #cursor2:I
    .restart local v13       #dest:I
    :cond_129
    aget-object p3, v5, v8

    check-cast p3, Ljava/lang/Comparable;

    const/16 v16, 0x0

    const/16 v17, 0x1

    sub-int v17, p4, v17

    move-object/from16 v0, p3

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, p4

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v16

    sub-int v7, p4, v16

    .line 805
    if-eqz v7, :cond_1be

    .line 806
    sub-int v12, v13, v7

    .line 807
    .end local v13           #dest:I
    .restart local v12       #dest:I
    sub-int v10, v11, v7

    .line 808
    .end local v11           #cursor2:I
    .restart local v10       #cursor2:I
    sub-int p4, p4, v7

    .line 809
    add-int/lit8 v16, v10, 0x1

    add-int/lit8 v17, v12, 0x1

    move-object v0, v15

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v3, v17

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    const/16 v16, 0x1

    move/from16 v0, p4

    move/from16 v1, v16

    if-le v0, v1, :cond_96

    .line 813
    :goto_160
    add-int/lit8 v13, v12, -0x1

    .end local v12           #dest:I
    .restart local v13       #dest:I
    add-int/lit8 v9, v8, -0x1

    .end local v8           #cursor1:I
    .restart local v9       #cursor1:I
    aget-object v16, v5, v8

    aput-object v16, v5, v12

    .line 814
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_170

    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v8, v9

    .line 815
    .end local v9           #cursor1:I
    .restart local v8       #cursor1:I
    goto/16 :goto_96

    .line 816
    .end local v8           #cursor1:I
    .end local v12           #dest:I
    .restart local v9       #cursor1:I
    .restart local v13       #dest:I
    :cond_170
    add-int/lit8 v14, v14, -0x1

    .line 817
    const/16 v16, 0x7

    move v0, v6

    move/from16 v1, v16

    if-lt v0, v1, :cond_191

    const/16 v16, 0x1

    :goto_17b
    const/16 v17, 0x7

    move v0, v7

    move/from16 v1, v17

    if-lt v0, v1, :cond_194

    const/16 v17, 0x1

    :goto_184
    or-int v16, v16, v17

    if-nez v16, :cond_1ba

    .line 818
    if-gez v14, :cond_18b

    .line 819
    const/4 v14, 0x0

    .line 820
    :cond_18b
    add-int/lit8 v14, v14, 0x2

    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v8, v9

    .line 821
    .end local v9           #cursor1:I
    .restart local v8       #cursor1:I
    goto/16 :goto_73

    .line 817
    .end local v8           #cursor1:I
    .end local v12           #dest:I
    .restart local v9       #cursor1:I
    .restart local v13       #dest:I
    :cond_191
    const/16 v16, 0x0

    goto :goto_17b

    :cond_194
    const/16 v17, 0x0

    goto :goto_184

    .end local v9           #cursor1:I
    .end local v13           #dest:I
    .restart local v8       #cursor1:I
    .restart local v12       #dest:I
    :cond_197
    move/from16 v16, v14

    .line 822
    goto/16 :goto_9f

    .line 830
    :cond_19b
    if-nez p4, :cond_1a5

    .line 831
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Comparison method violates its general contract!"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 836
    :cond_1a5
    const/16 v16, 0x0

    const/16 v17, 0x1

    sub-int v17, p4, v17

    sub-int v17, v12, v17

    move-object v0, v15

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v3, v17

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4b

    .end local v8           #cursor1:I
    .end local v12           #dest:I
    .restart local v9       #cursor1:I
    .restart local v13       #dest:I
    :cond_1ba
    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v8, v9

    .end local v9           #cursor1:I
    .restart local v8       #cursor1:I
    goto/16 :goto_e6

    .end local v10           #cursor2:I
    .end local v12           #dest:I
    .restart local v11       #cursor2:I
    .restart local v13       #dest:I
    :cond_1be
    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v10, v11

    .end local v11           #cursor2:I
    .restart local v10       #cursor2:I
    goto :goto_160

    .end local v8           #cursor1:I
    .end local v12           #dest:I
    .restart local v9       #cursor1:I
    .restart local v13       #dest:I
    :cond_1c1
    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v8, v9

    .end local v9           #cursor1:I
    .restart local v8       #cursor1:I
    goto/16 :goto_df
.end method

.method private mergeLo(IIII)V
    .registers 23
    .parameter "base1"
    .parameter "len1"
    .parameter "base2"
    .parameter "len2"

    .prologue
    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    move-object v5, v0

    .line 619
    .local v5, a:[Ljava/lang/Object;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v15

    .line 620
    .local v15, tmp:[Ljava/lang/Object;
    const/16 v16, 0x0

    move-object v0, v5

    move/from16 v1, p1

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    const/4 v8, 0x0

    .line 623
    .local v8, cursor1:I
    move/from16 v10, p3

    .line 624
    .local v10, cursor2:I
    move/from16 v12, p1

    .line 627
    .local v12, dest:I
    add-int/lit8 v13, v12, 0x1

    .end local v12           #dest:I
    .local v13, dest:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #cursor2:I
    .local v11, cursor2:I
    aget-object v16, v5, v10

    aput-object v16, v5, v12

    .line 628
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_37

    .line 629
    move-object v0, v15

    move v1, v8

    move-object v2, v5

    move v3, v13

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v10, v11

    .line 717
    .end local v11           #cursor2:I
    .end local p1
    .restart local v10       #cursor2:I
    :goto_36
    return-void

    .line 632
    .end local v10           #cursor2:I
    .end local v12           #dest:I
    .restart local v11       #cursor2:I
    .restart local v13       #dest:I
    .restart local p1
    :cond_37
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_51

    .line 633
    move-object v0, v5

    move v1, v11

    move-object v2, v5

    move v3, v13

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    add-int v16, v13, p4

    aget-object v17, v15, v8

    aput-object v17, v5, v16

    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v10, v11

    .line 635
    .end local v11           #cursor2:I
    .restart local v10       #cursor2:I
    goto :goto_36

    .line 638
    .end local v10           #cursor2:I
    .end local v12           #dest:I
    .restart local v11       #cursor2:I
    .restart local v13       #dest:I
    :cond_51
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ComparableTimSort;->minGallop:I

    move v14, v0

    .local v14, minGallop:I
    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v10, v11

    .line 641
    .end local v11           #cursor2:I
    .end local p1
    .restart local v10       #cursor2:I
    :goto_58
    const/4 v6, 0x0

    .line 642
    .local v6, count1:I
    const/4 v7, 0x0

    .line 650
    .local v7, count2:I
    :cond_5a
    aget-object p1, v5, v10

    check-cast p1, Ljava/lang/Comparable;

    aget-object v16, v15, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v16

    if-gez v16, :cond_a2

    .line 651
    add-int/lit8 v13, v12, 0x1

    .end local v12           #dest:I
    .restart local v13       #dest:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #cursor2:I
    .restart local v11       #cursor2:I
    aget-object v16, v5, v10

    aput-object v16, v5, v12

    .line 652
    add-int/lit8 v7, v7, 0x1

    .line 653
    const/4 v6, 0x0

    .line 654
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_171

    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v10, v11

    .line 703
    .end local v11           #cursor2:I
    .restart local v10       #cursor2:I
    :cond_7b
    :goto_7b
    const/16 v16, 0x1

    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_151

    const/16 v16, 0x1

    :goto_84
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/ComparableTimSort;->minGallop:I

    .line 705
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_155

    .line 707
    move-object v0, v5

    move v1, v10

    move-object v2, v5

    move v3, v12

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    add-int v16, v12, p4

    aget-object v17, v15, v8

    aput-object v17, v5, v16

    goto :goto_36

    .line 657
    :cond_a2
    add-int/lit8 v13, v12, 0x1

    .end local v12           #dest:I
    .restart local v13       #dest:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #cursor1:I
    .local v9, cursor1:I
    aget-object v16, v15, v8

    aput-object v16, v5, v12

    .line 658
    add-int/lit8 v6, v6, 0x1

    .line 659
    const/4 v7, 0x0

    .line 660
    add-int/lit8 p2, p2, -0x1

    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_ba

    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v8, v9

    .line 661
    .end local v9           #cursor1:I
    .restart local v8       #cursor1:I
    goto :goto_7b

    .end local v8           #cursor1:I
    .end local v12           #dest:I
    .restart local v9       #cursor1:I
    .restart local v13       #dest:I
    :cond_ba
    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v8, v9

    .line 663
    .end local v9           #cursor1:I
    .restart local v8       #cursor1:I
    :goto_bc
    or-int v16, v6, v7

    move/from16 v0, v16

    move v1, v14

    if-lt v0, v1, :cond_5a

    .line 672
    :goto_c3
    aget-object p1, v5, v10

    check-cast p1, Ljava/lang/Comparable;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object v1, v15

    move v2, v8

    move/from16 v3, p2

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v6

    .line 673
    if-eqz v6, :cond_e6

    .line 674
    invoke-static {v15, v8, v5, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    add-int/2addr v12, v6

    .line 676
    add-int/2addr v8, v6

    .line 677
    sub-int p2, p2, v6

    .line 678
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-le v0, v1, :cond_7b

    .line 681
    :cond_e6
    add-int/lit8 v13, v12, 0x1

    .end local v12           #dest:I
    .restart local v13       #dest:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #cursor2:I
    .restart local v11       #cursor2:I
    aget-object v16, v5, v10

    aput-object v16, v5, v12

    .line 682
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_f5

    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v10, v11

    .line 683
    .end local v11           #cursor2:I
    .restart local v10       #cursor2:I
    goto :goto_7b

    .line 685
    .end local v10           #cursor2:I
    .end local v12           #dest:I
    .restart local v11       #cursor2:I
    .restart local v13       #dest:I
    :cond_f5
    aget-object p1, v15, v8

    check-cast p1, Ljava/lang/Comparable;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v11

    move/from16 v3, p4

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v7

    .line 686
    if-eqz v7, :cond_16e

    .line 687
    invoke-static {v5, v11, v5, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    add-int v12, v13, v7

    .line 689
    .end local v13           #dest:I
    .restart local v12       #dest:I
    add-int v10, v11, v7

    .line 690
    .end local v11           #cursor2:I
    .restart local v10       #cursor2:I
    sub-int p4, p4, v7

    .line 691
    if-eqz p4, :cond_7b

    .line 694
    :goto_114
    add-int/lit8 v13, v12, 0x1

    .end local v12           #dest:I
    .restart local v13       #dest:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #cursor1:I
    .restart local v9       #cursor1:I
    aget-object v16, v15, v8

    aput-object v16, v5, v12

    .line 695
    add-int/lit8 p2, p2, -0x1

    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_12a

    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v8, v9

    .line 696
    .end local v9           #cursor1:I
    .restart local v8       #cursor1:I
    goto/16 :goto_7b

    .line 697
    .end local v8           #cursor1:I
    .end local v12           #dest:I
    .restart local v9       #cursor1:I
    .restart local v13       #dest:I
    :cond_12a
    add-int/lit8 v14, v14, -0x1

    .line 698
    const/16 v16, 0x7

    move v0, v6

    move/from16 v1, v16

    if-lt v0, v1, :cond_14b

    const/16 v16, 0x1

    :goto_135
    const/16 v17, 0x7

    move v0, v7

    move/from16 v1, v17

    if-lt v0, v1, :cond_14e

    const/16 v17, 0x1

    :goto_13e
    or-int v16, v16, v17

    if-nez v16, :cond_16a

    .line 699
    if-gez v14, :cond_145

    .line 700
    const/4 v14, 0x0

    .line 701
    :cond_145
    add-int/lit8 v14, v14, 0x2

    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v8, v9

    .line 702
    .end local v9           #cursor1:I
    .restart local v8       #cursor1:I
    goto/16 :goto_58

    .line 698
    .end local v8           #cursor1:I
    .end local v12           #dest:I
    .restart local v9       #cursor1:I
    .restart local v13       #dest:I
    :cond_14b
    const/16 v16, 0x0

    goto :goto_135

    :cond_14e
    const/16 v17, 0x0

    goto :goto_13e

    .end local v9           #cursor1:I
    .end local v13           #dest:I
    .restart local v8       #cursor1:I
    .restart local v12       #dest:I
    :cond_151
    move/from16 v16, v14

    .line 703
    goto/16 :goto_84

    .line 709
    :cond_155
    if-nez p2, :cond_15f

    .line 710
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Comparison method violates its general contract!"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 715
    :cond_15f
    move-object v0, v15

    move v1, v8

    move-object v2, v5

    move v3, v12

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_36

    .end local v8           #cursor1:I
    .end local v12           #dest:I
    .restart local v9       #cursor1:I
    .restart local v13       #dest:I
    :cond_16a
    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v8, v9

    .end local v9           #cursor1:I
    .restart local v8       #cursor1:I
    goto/16 :goto_c3

    .end local v10           #cursor2:I
    .end local v12           #dest:I
    .restart local v11       #cursor2:I
    .restart local v13       #dest:I
    :cond_16e
    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v10, v11

    .end local v11           #cursor2:I
    .restart local v10       #cursor2:I
    goto :goto_114

    .end local v10           #cursor2:I
    .end local v12           #dest:I
    .restart local v11       #cursor2:I
    .restart local v13       #dest:I
    :cond_171
    move v12, v13

    .end local v13           #dest:I
    .restart local v12       #dest:I
    move v10, v11

    .end local v11           #cursor2:I
    .restart local v10       #cursor2:I
    goto/16 :goto_bc
.end method

.method private static minRunLength(I)I
    .registers 3
    .parameter "n"

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, r:I
    :goto_1
    const/16 v1, 0x20

    if-lt p0, v1, :cond_b

    .line 335
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 336
    shr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 338
    :cond_b
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .registers 5
    .parameter "runBase"
    .parameter "runLen"

    .prologue
    .line 348
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runBase:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p1, v0, v1

    .line 349
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runLen:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p2, v0, v1

    .line 350
    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 351
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .registers 7
    .parameter "a"
    .parameter "lo"
    .parameter "hi"

    .prologue
    .line 306
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    .end local p2
    .local v0, hi:I
    move v1, p1

    .line 307
    .end local p1
    .local v1, lo:I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 308
    aget-object v2, p0, v1

    .line 309
    .local v2, t:Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    .end local v1           #lo:I
    .restart local p1
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 310
    add-int/lit8 p2, v0, -0x1

    .end local v0           #hi:I
    .restart local p2
    aput-object v2, p0, v0

    move v0, p2

    .end local p2
    .restart local v0       #hi:I
    move v1, p1

    .line 311
    .end local p1
    .restart local v1       #lo:I
    goto :goto_4

    .line 312
    .end local v2           #t:Ljava/lang/Object;
    :cond_15
    return-void
.end method

.method static sort([Ljava/lang/Object;)V
    .registers 3
    .parameter "a"

    .prologue
    .line 142
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    .line 143
    return-void
.end method

.method static sort([Ljava/lang/Object;II)V
    .registers 11
    .parameter "a"
    .parameter "lo"
    .parameter "hi"

    .prologue
    .line 146
    array-length v6, p0

    invoke-static {v6, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 147
    sub-int v3, p2, p1

    .line 148
    .local v3, nRemaining:I
    const/4 v6, 0x2

    if-ge v3, v6, :cond_a

    .line 189
    :goto_9
    return-void

    .line 152
    :cond_a
    const/16 v6, 0x20

    if-ge v3, v6, :cond_18

    .line 153
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v1

    .line 154
    .local v1, initRunLen:I
    add-int v6, p1, v1

    invoke-static {p0, p1, p2, v6}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    goto :goto_9

    .line 163
    .end local v1           #initRunLen:I
    :cond_18
    new-instance v5, Ljava/util/ComparableTimSort;

    invoke-direct {v5, p0}, Ljava/util/ComparableTimSort;-><init>([Ljava/lang/Object;)V

    .line 164
    .local v5, ts:Ljava/util/ComparableTimSort;
    invoke-static {v3}, Ljava/util/ComparableTimSort;->minRunLength(I)I

    move-result v2

    .line 167
    .local v2, minRun:I
    :cond_21
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v4

    .line 170
    .local v4, runLen:I
    if-ge v4, v2, :cond_32

    .line 171
    if-gt v3, v2, :cond_40

    move v0, v3

    .line 172
    .local v0, force:I
    :goto_2a
    add-int v6, p1, v0

    add-int v7, p1, v4

    invoke-static {p0, p1, v6, v7}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 173
    move v4, v0

    .line 177
    .end local v0           #force:I
    :cond_32
    invoke-direct {v5, p1, v4}, Ljava/util/ComparableTimSort;->pushRun(II)V

    .line 178
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeCollapse()V

    .line 181
    add-int/2addr p1, v4

    .line 182
    sub-int/2addr v3, v4

    .line 183
    if-nez v3, :cond_21

    .line 187
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeForceCollapse()V

    goto :goto_9

    :cond_40
    move v0, v2

    .line 171
    goto :goto_2a
.end method
