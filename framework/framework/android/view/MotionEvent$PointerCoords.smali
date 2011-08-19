.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public pressure:F

.field public size:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2409
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 2
    .parameter "other"

    .prologue
    .line 2417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2418
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 2419
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2521
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 2523
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 2524
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 2525
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 2526
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 2527
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 2528
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 2529
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 2530
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 2531
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 2532
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 10
    .parameter "other"

    .prologue
    const/4 v7, 0x0

    .line 2540
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 2541
    .local v0, bits:J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 2542
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_20

    .line 2543
    iget-object v3, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 2544
    .local v3, otherValues:[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    .line 2545
    .local v2, count:I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 2546
    .local v4, values:[F
    if-eqz v4, :cond_18

    array-length v5, v4

    if-le v2, v5, :cond_1d

    .line 2547
    :cond_18
    array-length v5, v3

    new-array v4, v5, [F

    .line 2548
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 2550
    :cond_1d
    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2553
    .end local v2           #count:I
    .end local v3           #otherValues:[F
    .end local v4           #values:[F
    :cond_20
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 2554
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 2555
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 2556
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 2557
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 2558
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 2559
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 2560
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 2561
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 2562
    return-void
.end method

.method public getAxisValue(I)F
    .registers 13
    .parameter "axis"

    .prologue
    const-wide/16 v9, 0x1

    .line 2574
    packed-switch p1, :pswitch_data_48

    .line 2594
    if-ltz p1, :cond_b

    const/16 v5, 0x3f

    if-le p1, v5, :cond_2e

    .line 2595
    :cond_b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Axis out of range."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2576
    :pswitch_13
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 2603
    :goto_15
    return v5

    .line 2578
    :pswitch_16
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_15

    .line 2580
    :pswitch_19
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_15

    .line 2582
    :pswitch_1c
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_15

    .line 2584
    :pswitch_1f
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_15

    .line 2586
    :pswitch_22
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_15

    .line 2588
    :pswitch_25
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_15

    .line 2590
    :pswitch_28
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_15

    .line 2592
    :pswitch_2b
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_15

    .line 2597
    :cond_2e
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 2598
    .local v2, bits:J
    shl-long v0, v9, p1

    .line 2599
    .local v0, axisBit:J
    and-long v5, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3c

    .line 2600
    const/4 v5, 0x0

    goto :goto_15

    .line 2602
    :cond_3c
    sub-long v5, v0, v9

    and-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 2603
    .local v4, index:I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    goto :goto_15

    .line 2574
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method public setAxisValue(IF)V
    .registers 16
    .parameter "axis"
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x1

    const/4 v12, 0x0

    .line 2618
    packed-switch p1, :pswitch_data_76

    .line 2647
    if-ltz p1, :cond_c

    const/16 v8, 0x3f

    if-le p1, v8, :cond_2f

    .line 2648
    :cond_c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Axis out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2620
    :pswitch_14
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 2679
    :goto_16
    return-void

    .line 2623
    :pswitch_17
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_16

    .line 2626
    :pswitch_1a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_16

    .line 2629
    :pswitch_1d
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_16

    .line 2632
    :pswitch_20
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_16

    .line 2635
    :pswitch_23
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_16

    .line 2638
    :pswitch_26
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_16

    .line 2641
    :pswitch_29
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_16

    .line 2644
    :pswitch_2c
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_16

    .line 2650
    :cond_2f
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 2651
    .local v2, bits:J
    shl-long v0, v9, p1

    .line 2652
    .local v0, axisBit:J
    sub-long v8, v0, v9

    and-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    .line 2653
    .local v5, index:I
    iget-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 2654
    .local v7, values:[F
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_50

    .line 2655
    if-nez v7, :cond_53

    .line 2656
    const/16 v8, 0x8

    new-array v7, v8, [F

    .line 2657
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 2674
    :cond_4c
    :goto_4c
    or-long v8, v2, v0

    iput-wide v8, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 2676
    :cond_50
    aput p2, v7, v5

    goto :goto_16

    .line 2659
    :cond_53
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 2660
    .local v4, count:I
    array-length v8, v7

    if-ge v4, v8, :cond_64

    .line 2661
    if-eq v5, v4, :cond_4c

    .line 2662
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4c

    .line 2666
    :cond_64
    mul-int/lit8 v8, v4, 0x2

    new-array v6, v8, [F

    .line 2667
    .local v6, newValues:[F
    invoke-static {v7, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2668
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2670
    move-object v7, v6

    .line 2671
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_4c

    .line 2618
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method
