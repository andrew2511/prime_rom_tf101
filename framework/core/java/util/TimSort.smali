.class Ljava/util/TimSort;
.super Ljava/lang/Object;
.source "TimSort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, this:Ljava/util/TimSort;,"Ljava/util/TimSort<TT;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    .local p2, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v3, 0x7

    iput v3, p0, Ljava/util/TimSort;->minGallop:I

    .line 117
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/TimSort;->stackSize:I

    .line 135
    iput-object p1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 136
    iput-object p2, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    .line 139
    array-length v0, p1

    .line 141
    .local v0, len:I
    const/16 v3, 0x200

    if-ge v0, v3, :cond_29

    ushr-int/lit8 v3, v0, 0x1

    :goto_14
    new-array v1, v3, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 143
    .local v1, newArray:[Ljava/lang/Object;,"[TT;"
    iput-object v1, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 155
    const/16 v3, 0x78

    if-ge v0, v3, :cond_2c

    const/4 v3, 0x5

    move v2, v3

    .line 158
    .local v2, stackLen:I
    :goto_20
    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/TimSort;->runBase:[I

    .line 159
    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/TimSort;->runLen:[I

    .line 160
    return-void

    .line 141
    .end local v1           #newArray:[Ljava/lang/Object;,"[TT;"
    .end local v2           #stackLen:I
    :cond_29
    const/16 v3, 0x100

    goto :goto_14

    .line 155
    .restart local v1       #newArray:[Ljava/lang/Object;,"[TT;"
    :cond_2c
    const/16 v3, 0x606

    if-ge v0, v3, :cond_34

    const/16 v3, 0xa

    move v2, v3

    goto :goto_20

    :cond_34
    const v3, 0x1d16f

    if-ge v0, v3, :cond_3d

    const/16 v3, 0x13

    move v2, v3

    goto :goto_20

    :cond_3d
    const/16 v3, 0x28

    move v2, v3

    goto :goto_20
.end method

.method private static binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .registers 12
    .parameter
    .parameter "lo"
    .parameter "hi"
    .parameter "start"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, a:[Ljava/lang/Object;,"[TT;"
    .local p4, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    if-ne p3, p1, :cond_4

    .line 246
    add-int/lit8 p3, p3, 0x1

    .line 247
    :cond_4
    :goto_4
    if-ge p3, p2, :cond_3b

    .line 248
    aget-object v3, p0, p3

    .line 251
    .local v3, pivot:Ljava/lang/Object;,"TT;"
    move v0, p1

    .line 252
    .local v0, left:I
    move v4, p3

    .line 259
    .local v4, right:I
    :goto_a
    if-ge v0, v4, :cond_1d

    .line 260
    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    .line 261
    .local v1, mid:I
    aget-object v5, p0, v1

    invoke-interface {p4, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1a

    .line 262
    move v4, v1

    goto :goto_a

    .line 264
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    goto :goto_a

    .line 275
    .end local v1           #mid:I
    :cond_1d
    sub-int v2, p3, v0

    .line 277
    .local v2, n:I
    packed-switch v2, :pswitch_data_3c

    .line 281
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    :goto_27
    aput-object v3, p0, v0

    .line 247
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 278
    :pswitch_2c
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p0, v6

    aput-object v6, p0, v5

    .line 279
    :pswitch_34
    add-int/lit8 v5, v0, 0x1

    aget-object v6, p0, v0

    aput-object v6, p0, v5

    goto :goto_27

    .line 285
    .end local v0           #left:I
    .end local v2           #n:I
    .end local v3           #pivot:Ljava/lang/Object;,"TT;"
    .end local v4           #right:I
    :cond_3b
    return-void

    .line 277
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2c
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .registers 9
    .parameter
    .parameter "lo"
    .parameter "hi"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, a:[Ljava/lang/Object;,"[TT;"
    .local p3, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const/4 v4, 0x1

    .line 315
    add-int/lit8 v0, p1, 0x1

    .line 316
    .local v0, runHi:I
    if-ne v0, p2, :cond_7

    move v2, v4

    .line 329
    :goto_6
    return v2

    .line 320
    :cond_7
    add-int/lit8 v1, v0, 0x1

    .end local v0           #runHi:I
    .local v1, runHi:I
    aget-object v2, p0, v0

    aget-object v3, p0, p1

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3c

    move v0, v1

    .line 321
    .end local v1           #runHi:I
    .restart local v0       #runHi:I
    :goto_14
    if-ge v0, p2, :cond_25

    aget-object v2, p0, v0

    sub-int v3, v0, v4

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_25

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 323
    :cond_25
    invoke-static {p0, p1, v0}, Ljava/util/TimSort;->reverseRange([Ljava/lang/Object;II)V

    .line 329
    :cond_28
    sub-int v2, v0, p1

    goto :goto_6

    .line 325
    :goto_2b
    if-ge v0, p2, :cond_28

    aget-object v2, p0, v0

    sub-int v3, v0, v4

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_28

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .end local v0           #runHi:I
    .restart local v1       #runHi:I
    :cond_3c
    move v0, v1

    .end local v1           #runHi:I
    .restart local v0       #runHi:I
    goto :goto_2b
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .registers 5
    .parameter "minCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 882
    .local p0, this:Ljava/util/TimSort;,"Ljava/util/TimSort<TT;>;"
    iget-object v2, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v2, p1, :cond_20

    .line 884
    move v1, p1

    .line 885
    .local v1, newSize:I
    shr-int/lit8 v2, v1, 0x1

    or-int/2addr v1, v2

    .line 886
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    .line 887
    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    .line 888
    shr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    .line 889
    shr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    .line 890
    add-int/lit8 v1, v1, 0x1

    .line 892
    if-gez v1, :cond_23

    .line 893
    move v1, p1

    .line 898
    :goto_1a
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 899
    .local v0, newArray:[Ljava/lang/Object;,"[TT;"
    iput-object v0, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 901
    .end local v0           #newArray:[Ljava/lang/Object;,"[TT;"
    .end local v1           #newSize:I
    :cond_20
    iget-object v2, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    .line 895
    .restart local v1       #newSize:I
    :cond_23
    iget-object v2, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    array-length v2, v2

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1a
.end method

.method private static gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .registers 12
    .parameter
    .parameter
    .parameter "base"
    .parameter "len"
    .parameter "hint"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, key:Ljava/lang/Object;,"TT;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    .local p5, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    .line 506
    .local v0, lastOfs:I
    const/4 v3, 0x1

    .line 507
    .local v3, ofs:I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_40

    .line 509
    sub-int v2, p3, p4

    .line 510
    .local v2, maxOfs:I
    :cond_e
    :goto_e
    if-ge v3, v2, :cond_24

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_24

    .line 511
    move v0, v3

    .line 512
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 513
    if-gtz v3, :cond_e

    .line 514
    move v3, v2

    goto :goto_e

    .line 516
    :cond_24
    if-le v3, v2, :cond_27

    .line 517
    move v3, v2

    .line 520
    :cond_27
    add-int/2addr v0, p4

    .line 521
    add-int/2addr v3, p4

    .line 546
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 547
    :goto_2b
    if-ge v0, v3, :cond_63

    .line 548
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 550
    .local v1, m:I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_61

    .line 551
    add-int/lit8 v0, v1, 0x1

    goto :goto_2b

    .line 524
    .end local v1           #m:I
    .end local v2           #maxOfs:I
    :cond_40
    add-int/lit8 v2, p4, 0x1

    .line 525
    .restart local v2       #maxOfs:I
    :cond_42
    :goto_42
    if-ge v3, v2, :cond_58

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_58

    .line 526
    move v0, v3

    .line 527
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 528
    if-gtz v3, :cond_42

    .line 529
    move v3, v2

    goto :goto_42

    .line 531
    :cond_58
    if-le v3, v2, :cond_5b

    .line 532
    move v3, v2

    .line 535
    :cond_5b
    move v4, v0

    .line 536
    .local v4, tmp:I
    sub-int v0, p4, v3

    .line 537
    sub-int v3, p4, v4

    goto :goto_29

    .line 553
    .end local v4           #tmp:I
    .restart local v1       #m:I
    :cond_61
    move v3, v1

    goto :goto_2b

    .line 556
    .end local v1           #m:I
    :cond_63
    return v3
.end method

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .registers 12
    .parameter
    .parameter
    .parameter "base"
    .parameter "len"
    .parameter "hint"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, key:Ljava/lang/Object;,"TT;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    .local p5, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const/4 v3, 0x1

    .line 577
    .local v3, ofs:I
    const/4 v0, 0x0

    .line 578
    .local v0, lastOfs:I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_42

    .line 580
    add-int/lit8 v2, p4, 0x1

    .line 581
    .local v2, maxOfs:I
    :cond_e
    :goto_e
    if-ge v3, v2, :cond_24

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_24

    .line 582
    move v0, v3

    .line 583
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 584
    if-gtz v3, :cond_e

    .line 585
    move v3, v2

    goto :goto_e

    .line 587
    :cond_24
    if-le v3, v2, :cond_27

    .line 588
    move v3, v2

    .line 591
    :cond_27
    move v4, v0

    .line 592
    .local v4, tmp:I
    sub-int v0, p4, v3

    .line 593
    sub-int v3, p4, v4

    .line 617
    .end local v4           #tmp:I
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    .line 618
    :goto_2e
    if-ge v0, v3, :cond_63

    .line 619
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 621
    .local v1, m:I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_60

    .line 622
    move v3, v1

    goto :goto_2e

    .line 596
    .end local v1           #m:I
    .end local v2           #maxOfs:I
    :cond_42
    sub-int v2, p3, p4

    .line 597
    .restart local v2       #maxOfs:I
    :cond_44
    :goto_44
    if-ge v3, v2, :cond_5a

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_5a

    .line 598
    move v0, v3

    .line 599
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 600
    if-gtz v3, :cond_44

    .line 601
    move v3, v2

    goto :goto_44

    .line 603
    :cond_5a
    if-le v3, v2, :cond_5d

    .line 604
    move v3, v2

    .line 607
    :cond_5d
    add-int/2addr v0, p4

    .line 608
    add-int/2addr v3, p4

    goto :goto_2c

    .line 624
    .restart local v1       #m:I
    :cond_60
    add-int/lit8 v0, v1, 0x1

    goto :goto_2e

    .line 627
    .end local v1           #m:I
    :cond_63
    return v3
.end method

.method private mergeAt(I)V
    .registers 13
    .parameter "i"

    .prologue
    .local p0, this:Ljava/util/TimSort;,"Ljava/util/TimSort<TT;>;"
    const/4 v8, 0x1

    .line 438
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    aget v2, v0, p1

    .line 439
    .local v2, base1:I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    aget v3, v0, p1

    .line 440
    .local v3, len1:I
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    aget v6, v0, v1

    .line 441
    .local v6, base2:I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    aget v7, v0, v1

    .line 450
    .local v7, len2:I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int v1, v3, v7

    aput v1, v0, p1

    .line 451
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_39

    .line 452
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    .line 453
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    .line 455
    :cond_39
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    sub-int/2addr v0, v8

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    .line 461
    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    aget-object v0, v0, v6

    iget-object v1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v0 .. v5}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v10

    .line 463
    .local v10, k:I
    add-int/2addr v2, v10

    .line 464
    sub-int/2addr v3, v10

    .line 465
    if-nez v3, :cond_50

    .line 482
    :cond_4f
    :goto_4f
    return-void

    .line 472
    :cond_50
    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    add-int v1, v2, v3

    sub-int/2addr v1, v8

    aget-object v4, v0, v1

    iget-object v5, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    sub-int v8, v7, v8

    iget-object v9, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v4 .. v9}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v7

    .line 474
    if-eqz v7, :cond_4f

    .line 478
    if-gt v3, v7, :cond_69

    .line 479
    invoke-direct {p0, v2, v3, v6, v7}, Ljava/util/TimSort;->mergeLo(IIII)V

    goto :goto_4f

    .line 481
    :cond_69
    invoke-direct {p0, v2, v3, v6, v7}, Ljava/util/TimSort;->mergeHi(IIII)V

    goto :goto_4f
.end method

.method private mergeCollapse()V
    .registers 7

    .prologue
    .local p0, this:Ljava/util/TimSort;,"Ljava/util/TimSort<TT;>;"
    const/4 v5, 0x1

    .line 399
    :goto_1
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    if-le v1, v5, :cond_43

    .line 400
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v2, 0x2

    sub-int v0, v1, v2

    .line 401
    .local v0, n:I
    if-lez v0, :cond_33

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    sub-int v2, v0, v5

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_33

    .line 402
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    sub-int v2, v0, v5

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_2f

    .line 403
    add-int/lit8 v0, v0, -0x1

    .line 404
    :cond_2f
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_1

    .line 405
    :cond_33
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_43

    .line 406
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_1

    .line 411
    .end local v0           #n:I
    :cond_43
    return-void
.end method

.method private mergeForceCollapse()V
    .registers 6

    .prologue
    .local p0, this:Ljava/util/TimSort;,"Ljava/util/TimSort<TT;>;"
    const/4 v4, 0x1

    .line 418
    :goto_1
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    if-le v1, v4, :cond_20

    .line 419
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v2, 0x2

    sub-int v0, v1, v2

    .line 420
    .local v0, n:I
    if-lez v0, :cond_1c

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    sub-int v2, v0, v4

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_1c

    .line 421
    add-int/lit8 v0, v0, -0x1

    .line 422
    :cond_1c
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_1

    .line 424
    .end local v0           #n:I
    :cond_20
    return-void
.end method

.method private mergeHi(IIII)V
    .registers 31
    .parameter "base1"
    .parameter "len1"
    .parameter "base2"
    .parameter "len2"

    .prologue
    .line 767
    .local p0, this:Ljava/util/TimSort;,"Ljava/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    move-object v6, v0

    .line 768
    .local v6, a:[Ljava/lang/Object;,"[TT;"
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v12

    .line 769
    .local v12, tmp:[Ljava/lang/Object;,"[TT;"
    const/4 v5, 0x0

    move-object v0, v6

    move/from16 v1, p3

    move-object v2, v12

    move v3, v5

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    add-int v5, p1, p2

    const/4 v7, 0x1

    sub-int v19, v5, v7

    .line 772
    .local v19, cursor1:I
    const/4 v5, 0x1

    sub-int v21, p4, v5

    .line 773
    .local v21, cursor2:I
    add-int v5, p3, p4

    const/4 v7, 0x1

    sub-int v23, v5, v7

    .line 776
    .local v23, dest:I
    add-int/lit8 v24, v23, -0x1

    .end local v23           #dest:I
    .local v24, dest:I
    add-int/lit8 v20, v19, -0x1

    .end local v19           #cursor1:I
    .local v20, cursor1:I
    aget-object v5, v6, v19

    aput-object v5, v6, v23

    .line 777
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_45

    .line 778
    const/4 v5, 0x0

    const/4 v7, 0x1

    sub-int v7, p4, v7

    sub-int v7, v24, v7

    move-object v0, v12

    move v1, v5

    move-object v2, v6

    move v3, v7

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v23, v24

    .end local v24           #dest:I
    .restart local v23       #dest:I
    move/from16 v19, v20

    .line 871
    .end local v20           #cursor1:I
    .restart local v19       #cursor1:I
    :goto_44
    return-void

    .line 781
    .end local v19           #cursor1:I
    .end local v23           #dest:I
    .restart local v20       #cursor1:I
    .restart local v24       #dest:I
    :cond_45
    const/4 v5, 0x1

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_61

    .line 782
    sub-int v23, v24, p2

    .line 783
    .end local v24           #dest:I
    .restart local v23       #dest:I
    sub-int v19, v20, p2

    .line 784
    .end local v20           #cursor1:I
    .restart local v19       #cursor1:I
    add-int/lit8 v5, v19, 0x1

    add-int/lit8 v7, v23, 0x1

    move-object v0, v6

    move v1, v5

    move-object v2, v6

    move v3, v7

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    aget-object v5, v12, v21

    aput-object v5, v6, v23

    goto :goto_44

    .line 789
    .end local v19           #cursor1:I
    .end local v23           #dest:I
    .restart local v20       #cursor1:I
    .restart local v24       #dest:I
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    move-object v10, v0

    .line 790
    .local v10, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    move/from16 v25, v0

    .local v25, minGallop:I
    move/from16 v23, v24

    .end local v24           #dest:I
    .restart local v23       #dest:I
    move/from16 v19, v20

    .line 793
    .end local v20           #cursor1:I
    .restart local v19       #cursor1:I
    :goto_70
    const/16 v17, 0x0

    .line 794
    .local v17, count1:I
    const/16 v18, 0x0

    .line 802
    .local v18, count2:I
    :cond_74
    aget-object v5, v12, v21

    aget-object v7, v6, v19

    invoke-interface {v10, v5, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_ba

    .line 803
    add-int/lit8 v24, v23, -0x1

    .end local v23           #dest:I
    .restart local v24       #dest:I
    add-int/lit8 v20, v19, -0x1

    .end local v19           #cursor1:I
    .restart local v20       #cursor1:I
    aget-object v5, v6, v19

    aput-object v5, v6, v23

    .line 804
    add-int/lit8 v17, v17, 0x1

    .line 805
    const/16 v18, 0x0

    .line 806
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_1a4

    move/from16 v23, v24

    .end local v24           #dest:I
    .restart local v23       #dest:I
    move/from16 v19, v20

    .line 855
    .end local v20           #cursor1:I
    .restart local v19       #cursor1:I
    :cond_92
    :goto_92
    const/4 v5, 0x1

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_17a

    const/4 v5, 0x1

    :goto_99
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    .line 857
    const/4 v5, 0x1

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_17e

    .line 859
    sub-int v23, v23, p2

    .line 860
    sub-int v19, v19, p2

    .line 861
    add-int/lit8 v5, v19, 0x1

    add-int/lit8 v7, v23, 0x1

    move-object v0, v6

    move v1, v5

    move-object v2, v6

    move v3, v7

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 862
    aget-object v5, v12, v21

    aput-object v5, v6, v23

    goto :goto_44

    .line 809
    :cond_ba
    add-int/lit8 v24, v23, -0x1

    .end local v23           #dest:I
    .restart local v24       #dest:I
    add-int/lit8 v22, v21, -0x1

    .end local v21           #cursor2:I
    .local v22, cursor2:I
    aget-object v5, v12, v21

    aput-object v5, v6, v23

    .line 810
    add-int/lit8 v18, v18, 0x1

    .line 811
    const/16 v17, 0x0

    .line 812
    add-int/lit8 p4, p4, -0x1

    const/4 v5, 0x1

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_d3

    move/from16 v23, v24

    .end local v24           #dest:I
    .restart local v23       #dest:I
    move/from16 v21, v22

    .line 813
    .end local v22           #cursor2:I
    .restart local v21       #cursor2:I
    goto :goto_92

    .end local v21           #cursor2:I
    .end local v23           #dest:I
    .restart local v22       #cursor2:I
    .restart local v24       #dest:I
    :cond_d3
    move/from16 v23, v24

    .end local v24           #dest:I
    .restart local v23       #dest:I
    move/from16 v21, v22

    .line 815
    .end local v22           #cursor2:I
    .restart local v21       #cursor2:I
    :goto_d7
    or-int v5, v17, v18

    move v0, v5

    move/from16 v1, v25

    if-lt v0, v1, :cond_74

    .line 824
    :goto_de
    aget-object v5, v12, v21

    const/4 v7, 0x1

    sub-int v9, p2, v7

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-static/range {v5 .. v10}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v5

    sub-int v17, p2, v5

    .line 825
    if-eqz v17, :cond_104

    .line 826
    sub-int v23, v23, v17

    .line 827
    sub-int v19, v19, v17

    .line 828
    sub-int p2, p2, v17

    .line 829
    add-int/lit8 v5, v19, 0x1

    add-int/lit8 v7, v23, 0x1

    move-object v0, v6

    move v1, v5

    move-object v2, v6

    move v3, v7

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    if-eqz p2, :cond_92

    .line 833
    :cond_104
    add-int/lit8 v24, v23, -0x1

    .end local v23           #dest:I
    .restart local v24       #dest:I
    add-int/lit8 v22, v21, -0x1

    .end local v21           #cursor2:I
    .restart local v22       #cursor2:I
    aget-object v5, v12, v21

    aput-object v5, v6, v23

    .line 834
    add-int/lit8 p4, p4, -0x1

    const/4 v5, 0x1

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_11a

    move/from16 v23, v24

    .end local v24           #dest:I
    .restart local v23       #dest:I
    move/from16 v21, v22

    .line 835
    .end local v22           #cursor2:I
    .restart local v21       #cursor2:I
    goto/16 :goto_92

    .line 837
    .end local v21           #cursor2:I
    .end local v23           #dest:I
    .restart local v22       #cursor2:I
    .restart local v24       #dest:I
    :cond_11a
    aget-object v11, v6, v19

    const/4 v13, 0x0

    const/4 v5, 0x1

    sub-int v15, p4, v5

    move/from16 v14, p4

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v16}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v5

    sub-int v18, p4, v5

    .line 838
    if-eqz v18, :cond_19f

    .line 839
    sub-int v23, v24, v18

    .line 840
    .end local v24           #dest:I
    .restart local v23       #dest:I
    sub-int v21, v22, v18

    .line 841
    .end local v22           #cursor2:I
    .restart local v21       #cursor2:I
    sub-int p4, p4, v18

    .line 842
    add-int/lit8 v5, v21, 0x1

    add-int/lit8 v7, v23, 0x1

    move-object v0, v12

    move v1, v5

    move-object v2, v6

    move v3, v7

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 843
    const/4 v5, 0x1

    move/from16 v0, p4

    move v1, v5

    if-le v0, v1, :cond_92

    .line 846
    :goto_145
    add-int/lit8 v24, v23, -0x1

    .end local v23           #dest:I
    .restart local v24       #dest:I
    add-int/lit8 v20, v19, -0x1

    .end local v19           #cursor1:I
    .restart local v20       #cursor1:I
    aget-object v5, v6, v19

    aput-object v5, v6, v23

    .line 847
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_157

    move/from16 v23, v24

    .end local v24           #dest:I
    .restart local v23       #dest:I
    move/from16 v19, v20

    .line 848
    .end local v20           #cursor1:I
    .restart local v19       #cursor1:I
    goto/16 :goto_92

    .line 849
    .end local v19           #cursor1:I
    .end local v23           #dest:I
    .restart local v20       #cursor1:I
    .restart local v24       #dest:I
    :cond_157
    add-int/lit8 v25, v25, -0x1

    .line 850
    const/4 v5, 0x7

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_176

    const/4 v5, 0x1

    :goto_160
    const/4 v7, 0x7

    move/from16 v0, v18

    move v1, v7

    if-lt v0, v1, :cond_178

    const/4 v7, 0x1

    :goto_167
    or-int/2addr v5, v7

    if-nez v5, :cond_199

    .line 851
    if-gez v25, :cond_16e

    .line 852
    const/16 v25, 0x0

    .line 853
    :cond_16e
    add-int/lit8 v25, v25, 0x2

    move/from16 v23, v24

    .end local v24           #dest:I
    .restart local v23       #dest:I
    move/from16 v19, v20

    .line 854
    .end local v20           #cursor1:I
    .restart local v19       #cursor1:I
    goto/16 :goto_70

    .line 850
    .end local v19           #cursor1:I
    .end local v23           #dest:I
    .restart local v20       #cursor1:I
    .restart local v24       #dest:I
    :cond_176
    const/4 v5, 0x0

    goto :goto_160

    :cond_178
    const/4 v7, 0x0

    goto :goto_167

    .end local v20           #cursor1:I
    .end local v24           #dest:I
    .restart local v19       #cursor1:I
    .restart local v23       #dest:I
    :cond_17a
    move/from16 v5, v25

    .line 855
    goto/16 :goto_99

    .line 863
    :cond_17e
    if-nez p4, :cond_188

    .line 864
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Comparison method violates its general contract!"

    .end local v6           #a:[Ljava/lang/Object;,"[TT;"
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 869
    .restart local v6       #a:[Ljava/lang/Object;,"[TT;"
    :cond_188
    const/4 v5, 0x0

    const/4 v7, 0x1

    sub-int v7, p4, v7

    sub-int v7, v23, v7

    move-object v0, v12

    move v1, v5

    move-object v2, v6

    move v3, v7

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_44

    .end local v19           #cursor1:I
    .end local v23           #dest:I
    .restart local v20       #cursor1:I
    .restart local v24       #dest:I
    :cond_199
    move/from16 v23, v24

    .end local v24           #dest:I
    .restart local v23       #dest:I
    move/from16 v19, v20

    .end local v20           #cursor1:I
    .restart local v19       #cursor1:I
    goto/16 :goto_de

    .end local v21           #cursor2:I
    .end local v23           #dest:I
    .restart local v22       #cursor2:I
    .restart local v24       #dest:I
    :cond_19f
    move/from16 v23, v24

    .end local v24           #dest:I
    .restart local v23       #dest:I
    move/from16 v21, v22

    .end local v22           #cursor2:I
    .restart local v21       #cursor2:I
    goto :goto_145

    .end local v19           #cursor1:I
    .end local v23           #dest:I
    .restart local v20       #cursor1:I
    .restart local v24       #dest:I
    :cond_1a4
    move/from16 v23, v24

    .end local v24           #dest:I
    .restart local v23       #dest:I
    move/from16 v19, v20

    .end local v20           #cursor1:I
    .restart local v19       #cursor1:I
    goto/16 :goto_d7
.end method

.method private mergeLo(IIII)V
    .registers 29
    .parameter "base1"
    .parameter "len1"
    .parameter "base2"
    .parameter "len2"

    .prologue
    .line 650
    .local p0, this:Ljava/util/TimSort;,"Ljava/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    move-object v12, v0

    .line 651
    .local v12, a:[Ljava/lang/Object;,"[TT;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v6

    .line 652
    .local v6, tmp:[Ljava/lang/Object;,"[TT;"
    const/4 v5, 0x0

    move-object v0, v12

    move/from16 v1, p1

    move-object v2, v6

    move v3, v5

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    const/4 v7, 0x0

    .line 655
    .local v7, cursor1:I
    move/from16 v13, p3

    .line 656
    .local v13, cursor2:I
    move/from16 v21, p1

    .line 659
    .local v21, dest:I
    add-int/lit8 v22, v21, 0x1

    .end local v21           #dest:I
    .local v22, dest:I
    add-int/lit8 v20, v13, 0x1

    .end local v13           #cursor2:I
    .local v20, cursor2:I
    aget-object v5, v12, v13

    aput-object v5, v12, v21

    .line 660
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_38

    .line 661
    move-object v0, v6

    move v1, v7

    move-object v2, v12

    move/from16 v3, v22

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v21, v22

    .end local v22           #dest:I
    .restart local v21       #dest:I
    move/from16 v13, v20

    .line 750
    .end local v6           #tmp:[Ljava/lang/Object;,"[TT;"
    .end local v20           #cursor2:I
    .restart local v13       #cursor2:I
    :goto_37
    return-void

    .line 664
    .end local v13           #cursor2:I
    .end local v21           #dest:I
    .restart local v6       #tmp:[Ljava/lang/Object;,"[TT;"
    .restart local v20       #cursor2:I
    .restart local v22       #dest:I
    :cond_38
    const/4 v5, 0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_54

    .line 665
    move-object v0, v12

    move/from16 v1, v20

    move-object v2, v12

    move/from16 v3, v22

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    add-int v5, v22, p4

    aget-object v6, v6, v7

    .end local v6           #tmp:[Ljava/lang/Object;,"[TT;"
    aput-object v6, v12, v5

    move/from16 v21, v22

    .end local v22           #dest:I
    .restart local v21       #dest:I
    move/from16 v13, v20

    .line 667
    .end local v20           #cursor2:I
    .restart local v13       #cursor2:I
    goto :goto_37

    .line 670
    .end local v13           #cursor2:I
    .end local v21           #dest:I
    .restart local v6       #tmp:[Ljava/lang/Object;,"[TT;"
    .restart local v20       #cursor2:I
    .restart local v22       #dest:I
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    move-object v10, v0

    .line 671
    .local v10, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    move/from16 v23, v0

    .local v23, minGallop:I
    move/from16 v21, v22

    .end local v22           #dest:I
    .restart local v21       #dest:I
    move/from16 v13, v20

    .line 674
    .end local v20           #cursor2:I
    .restart local v13       #cursor2:I
    :goto_63
    const/16 v17, 0x0

    .line 675
    .local v17, count1:I
    const/16 v18, 0x0

    .line 683
    .local v18, count2:I
    :cond_67
    aget-object v5, v12, v13

    aget-object v8, v6, v7

    invoke-interface {v10, v5, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_a8

    .line 684
    add-int/lit8 v22, v21, 0x1

    .end local v21           #dest:I
    .restart local v22       #dest:I
    add-int/lit8 v20, v13, 0x1

    .end local v13           #cursor2:I
    .restart local v20       #cursor2:I
    aget-object v5, v12, v13

    aput-object v5, v12, v21

    .line 685
    add-int/lit8 v18, v18, 0x1

    .line 686
    const/16 v17, 0x0

    .line 687
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_17e

    move/from16 v21, v22

    .end local v22           #dest:I
    .restart local v21       #dest:I
    move/from16 v13, v20

    .line 736
    .end local v20           #cursor2:I
    .restart local v13       #cursor2:I
    :cond_85
    :goto_85
    const/4 v5, 0x1

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_159

    const/4 v5, 0x1

    :goto_8c
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    .line 738
    const/4 v5, 0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_15d

    .line 740
    move-object v0, v12

    move v1, v13

    move-object v2, v12

    move/from16 v3, v21

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    add-int v5, v21, p4

    aget-object v6, v6, v7

    .end local v6           #tmp:[Ljava/lang/Object;,"[TT;"
    aput-object v6, v12, v5

    goto :goto_37

    .line 690
    .restart local v6       #tmp:[Ljava/lang/Object;,"[TT;"
    :cond_a8
    add-int/lit8 v22, v21, 0x1

    .end local v21           #dest:I
    .restart local v22       #dest:I
    add-int/lit8 v19, v7, 0x1

    .end local v7           #cursor1:I
    .local v19, cursor1:I
    aget-object v5, v6, v7

    aput-object v5, v12, v21

    .line 691
    add-int/lit8 v17, v17, 0x1

    .line 692
    const/16 v18, 0x0

    .line 693
    add-int/lit8 p2, p2, -0x1

    const/4 v5, 0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_c1

    move/from16 v21, v22

    .end local v22           #dest:I
    .restart local v21       #dest:I
    move/from16 v7, v19

    .line 694
    .end local v19           #cursor1:I
    .restart local v7       #cursor1:I
    goto :goto_85

    .end local v7           #cursor1:I
    .end local v21           #dest:I
    .restart local v19       #cursor1:I
    .restart local v22       #dest:I
    :cond_c1
    move/from16 v21, v22

    .end local v22           #dest:I
    .restart local v21       #dest:I
    move/from16 v7, v19

    .line 696
    .end local v19           #cursor1:I
    .restart local v7       #cursor1:I
    :goto_c5
    or-int v5, v17, v18

    move v0, v5

    move/from16 v1, v23

    if-lt v0, v1, :cond_67

    move/from16 v20, v13

    .line 705
    .end local v13           #cursor2:I
    .restart local v20       #cursor2:I
    :goto_ce
    aget-object v5, v12, v20

    const/4 v9, 0x0

    move/from16 v8, p2

    invoke-static/range {v5 .. v10}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v17

    .line 706
    if-eqz v17, :cond_f2

    .line 707
    move-object v0, v6

    move v1, v7

    move-object v2, v12

    move/from16 v3, v21

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    add-int v21, v21, v17

    .line 709
    add-int v7, v7, v17

    .line 710
    sub-int p2, p2, v17

    .line 711
    const/4 v5, 0x1

    move/from16 v0, p2

    move v1, v5

    if-gt v0, v1, :cond_f2

    move/from16 v13, v20

    .line 712
    .end local v20           #cursor2:I
    .restart local v13       #cursor2:I
    goto :goto_85

    .line 714
    .end local v13           #cursor2:I
    .restart local v20       #cursor2:I
    :cond_f2
    add-int/lit8 v22, v21, 0x1

    .end local v21           #dest:I
    .restart local v22       #dest:I
    add-int/lit8 v13, v20, 0x1

    .end local v20           #cursor2:I
    .restart local v13       #cursor2:I
    aget-object v5, v12, v20

    aput-object v5, v12, v21

    .line 715
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_101

    move/from16 v21, v22

    .line 716
    .end local v22           #dest:I
    .restart local v21       #dest:I
    goto :goto_85

    .line 718
    .end local v21           #dest:I
    .restart local v22       #dest:I
    :cond_101
    aget-object v11, v6, v7

    const/4 v15, 0x0

    move/from16 v14, p4

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v16}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v18

    .line 719
    if-eqz v18, :cond_17b

    .line 720
    move-object v0, v12

    move v1, v13

    move-object v2, v12

    move/from16 v3, v22

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    add-int v21, v22, v18

    .line 722
    .end local v22           #dest:I
    .restart local v21       #dest:I
    add-int v13, v13, v18

    .line 723
    sub-int p4, p4, v18

    .line 724
    if-eqz p4, :cond_85

    .line 727
    :goto_120
    add-int/lit8 v22, v21, 0x1

    .end local v21           #dest:I
    .restart local v22       #dest:I
    add-int/lit8 v19, v7, 0x1

    .end local v7           #cursor1:I
    .restart local v19       #cursor1:I
    aget-object v5, v6, v7

    aput-object v5, v12, v21

    .line 728
    add-int/lit8 p2, p2, -0x1

    const/4 v5, 0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_136

    move/from16 v21, v22

    .end local v22           #dest:I
    .restart local v21       #dest:I
    move/from16 v7, v19

    .line 729
    .end local v19           #cursor1:I
    .restart local v7       #cursor1:I
    goto/16 :goto_85

    .line 730
    .end local v7           #cursor1:I
    .end local v21           #dest:I
    .restart local v19       #cursor1:I
    .restart local v22       #dest:I
    :cond_136
    add-int/lit8 v23, v23, -0x1

    .line 731
    const/4 v5, 0x7

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_155

    const/4 v5, 0x1

    :goto_13f
    const/4 v7, 0x7

    move/from16 v0, v18

    move v1, v7

    if-lt v0, v1, :cond_157

    const/4 v7, 0x1

    :goto_146
    or-int/2addr v5, v7

    if-nez v5, :cond_173

    .line 732
    if-gez v23, :cond_14d

    .line 733
    const/16 v23, 0x0

    .line 734
    :cond_14d
    add-int/lit8 v23, v23, 0x2

    move/from16 v21, v22

    .end local v22           #dest:I
    .restart local v21       #dest:I
    move/from16 v7, v19

    .line 735
    .end local v19           #cursor1:I
    .restart local v7       #cursor1:I
    goto/16 :goto_63

    .line 731
    .end local v7           #cursor1:I
    .end local v21           #dest:I
    .restart local v19       #cursor1:I
    .restart local v22       #dest:I
    :cond_155
    const/4 v5, 0x0

    goto :goto_13f

    :cond_157
    const/4 v7, 0x0

    goto :goto_146

    .end local v19           #cursor1:I
    .end local v22           #dest:I
    .restart local v7       #cursor1:I
    .restart local v21       #dest:I
    :cond_159
    move/from16 v5, v23

    .line 736
    goto/16 :goto_8c

    .line 742
    :cond_15d
    if-nez p2, :cond_167

    .line 743
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Comparison method violates its general contract!"

    .end local v6           #tmp:[Ljava/lang/Object;,"[TT;"
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 748
    .restart local v6       #tmp:[Ljava/lang/Object;,"[TT;"
    :cond_167
    move-object v0, v6

    move v1, v7

    move-object v2, v12

    move/from16 v3, v21

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_37

    .end local v7           #cursor1:I
    .end local v21           #dest:I
    .restart local v19       #cursor1:I
    .restart local v22       #dest:I
    :cond_173
    move/from16 v21, v22

    .end local v22           #dest:I
    .restart local v21       #dest:I
    move/from16 v20, v13

    .end local v13           #cursor2:I
    .restart local v20       #cursor2:I
    move/from16 v7, v19

    .end local v19           #cursor1:I
    .restart local v7       #cursor1:I
    goto/16 :goto_ce

    .end local v20           #cursor2:I
    .end local v21           #dest:I
    .restart local v13       #cursor2:I
    .restart local v22       #dest:I
    :cond_17b
    move/from16 v21, v22

    .end local v22           #dest:I
    .restart local v21       #dest:I
    goto :goto_120

    .end local v13           #cursor2:I
    .end local v21           #dest:I
    .restart local v20       #cursor2:I
    .restart local v22       #dest:I
    :cond_17e
    move/from16 v21, v22

    .end local v22           #dest:I
    .restart local v21       #dest:I
    move/from16 v13, v20

    .end local v20           #cursor2:I
    .restart local v13       #cursor2:I
    goto/16 :goto_c5
.end method

.method private static minRunLength(I)I
    .registers 3
    .parameter "n"

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, r:I
    :goto_1
    const/16 v1, 0x20

    if-lt p0, v1, :cond_b

    .line 369
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 370
    shr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 372
    :cond_b
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .registers 5
    .parameter "runBase"
    .parameter "runLen"

    .prologue
    .line 382
    .local p0, this:Ljava/util/TimSort;,"Ljava/util/TimSort<TT;>;"
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    aput p1, v0, v1

    .line 383
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    aput p2, v0, v1

    .line 384
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    .line 385
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .registers 7
    .parameter "a"
    .parameter "lo"
    .parameter "hi"

    .prologue
    .line 340
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    .end local p2
    .local v0, hi:I
    move v1, p1

    .line 341
    .end local p1
    .local v1, lo:I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 342
    aget-object v2, p0, v1

    .line 343
    .local v2, t:Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    .end local v1           #lo:I
    .restart local p1
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 344
    add-int/lit8 p2, v0, -0x1

    .end local v0           #hi:I
    .restart local p2
    aput-object v2, p0, v0

    move v0, p2

    .end local p2
    .restart local v0       #hi:I
    move v1, p1

    .line 345
    .end local p1
    .restart local v1       #lo:I
    goto :goto_4

    .line 346
    .end local v2           #t:Ljava/lang/Object;
    :cond_15
    return-void
.end method

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 12
    .parameter
    .parameter "lo"
    .parameter "hi"
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
    .line 173
    .local p0, a:[Ljava/lang/Object;,"[TT;"
    .local p3, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    if-nez p3, :cond_6

    .line 174
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 221
    :cond_5
    :goto_5
    return-void

    .line 178
    :cond_6
    array-length v6, p0

    invoke-static {v6, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 179
    sub-int v3, p2, p1

    .line 180
    .local v3, nRemaining:I
    const/4 v6, 0x2

    if-lt v3, v6, :cond_5

    .line 184
    const/16 v6, 0x20

    if-ge v3, v6, :cond_1d

    .line 185
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v1

    .line 186
    .local v1, initRunLen:I
    add-int v6, p1, v1

    invoke-static {p0, p1, p2, v6, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_5

    .line 195
    .end local v1           #initRunLen:I
    :cond_1d
    new-instance v5, Ljava/util/TimSort;

    invoke-direct {v5, p0, p3}, Ljava/util/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 196
    .local v5, ts:Ljava/util/TimSort;,"Ljava/util/TimSort<TT;>;"
    invoke-static {v3}, Ljava/util/TimSort;->minRunLength(I)I

    move-result v2

    .line 199
    .local v2, minRun:I
    :cond_26
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v4

    .line 202
    .local v4, runLen:I
    if-ge v4, v2, :cond_37

    .line 203
    if-gt v3, v2, :cond_45

    move v0, v3

    .line 204
    .local v0, force:I
    :goto_2f
    add-int v6, p1, v0

    add-int v7, p1, v4

    invoke-static {p0, p1, v6, v7, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 205
    move v4, v0

    .line 209
    .end local v0           #force:I
    :cond_37
    invoke-direct {v5, p1, v4}, Ljava/util/TimSort;->pushRun(II)V

    .line 210
    invoke-direct {v5}, Ljava/util/TimSort;->mergeCollapse()V

    .line 213
    add-int/2addr p1, v4

    .line 214
    sub-int/2addr v3, v4

    .line 215
    if-nez v3, :cond_26

    .line 219
    invoke-direct {v5}, Ljava/util/TimSort;->mergeForceCollapse()V

    goto :goto_5

    :cond_45
    move v0, v2

    .line 203
    goto :goto_2f
.end method

.method static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 4
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
    .line 169
    .local p0, a:[Ljava/lang/Object;,"[TT;"
    .local p1, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 170
    return-void
.end method
