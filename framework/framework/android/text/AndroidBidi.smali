.class Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .registers 7
    .parameter "dir"
    .parameter "chs"
    .parameter "chInfo"
    .parameter "n"
    .parameter "haveInfo"

    .prologue
    .line 28
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 29
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 32
    :cond_a
    if-ltz p3, :cond_12

    array-length v1, p1

    if-lt v1, p3, :cond_12

    array-length v1, p2

    if-ge v1, p3, :cond_18

    .line 33
    :cond_12
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 36
    :cond_18
    packed-switch p0, :pswitch_data_32

    .line 41
    :pswitch_1b
    const/4 p0, 0x0

    .line 44
    :goto_1c
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    move-result v0

    .line 45
    .local v0, result:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    move v0, v1

    .line 46
    :goto_26
    return v0

    .line 37
    .end local v0           #result:I
    :pswitch_27
    const/4 p0, 0x0

    goto :goto_1c

    .line 38
    :pswitch_29
    const/4 p0, 0x1

    goto :goto_1c

    .line 39
    :pswitch_2b
    const/4 p0, -0x2

    goto :goto_1c

    .line 40
    :pswitch_2d
    const/4 p0, -0x1

    goto :goto_1c

    .line 45
    .restart local v0       #result:I
    :cond_2f
    const/4 v1, -0x1

    move v0, v1

    goto :goto_26

    .line 36
    :pswitch_data_32
    .packed-switch -0x2
        :pswitch_2d
        :pswitch_29
        :pswitch_1b
        :pswitch_27
        :pswitch_2b
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .registers 19
    .parameter "dir"
    .parameter "levels"
    .parameter "lstart"
    .parameter "chars"
    .parameter "cstart"
    .parameter "len"

    .prologue
    .line 64
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1e

    const/4 p0, 0x0

    .line 65
    .local p0, baseLevel:I
    :goto_4
    aget-byte v2, p1, p2

    .line 66
    .local v2, curLevel:I
    move v6, v2

    .line 67
    .local v6, minLevel:I
    const/4 v5, 0x1

    .line 68
    .local v5, runCount:I
    add-int/lit8 v3, p2, 0x1

    .local v3, i:I
    add-int v4, p2, p5

    .local v4, e:I
    move v7, v5

    .end local v5           #runCount:I
    .local v7, runCount:I
    move v5, v3

    .end local v3           #i:I
    .local v5, i:I
    move v3, v2

    .end local v2           #curLevel:I
    .local v3, curLevel:I
    :goto_f
    if-ge v5, v4, :cond_20

    .line 69
    aget-byte v2, p1, v5

    .line 70
    .local v2, level:I
    if-eq v2, v3, :cond_172

    .line 71
    move v2, v2

    .line 72
    .end local v3           #curLevel:I
    .local v2, curLevel:I
    add-int/lit8 v3, v7, 0x1

    .end local v7           #runCount:I
    .local v3, runCount:I
    move v7, v3

    .line 68
    .end local v3           #runCount:I
    .restart local v7       #runCount:I
    :goto_19
    add-int/lit8 v3, v5, 0x1

    .end local v5           #i:I
    .local v3, i:I
    move v5, v3

    .end local v3           #i:I
    .restart local v5       #i:I
    move v3, v2

    .end local v2           #curLevel:I
    .local v3, curLevel:I
    goto :goto_f

    .line 64
    .end local v3           #curLevel:I
    .end local v4           #e:I
    .end local v5           #i:I
    .end local v6           #minLevel:I
    .end local v7           #runCount:I
    .local p0, dir:I
    :cond_1e
    const/4 p0, 0x1

    goto :goto_4

    .line 77
    .restart local v3       #curLevel:I
    .restart local v4       #e:I
    .restart local v5       #i:I
    .restart local v6       #minLevel:I
    .restart local v7       #runCount:I
    .local p0, baseLevel:I
    :cond_20
    move/from16 v2, p5

    .line 78
    .local v2, visLen:I
    and-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, p0, 0x1

    if-eq v4, v5, :cond_16e

    .line 80
    .end local v4           #e:I
    .end local v5           #i:I
    :goto_28
    add-int/lit8 v4, v2, -0x1

    .end local v2           #visLen:I
    .local v4, visLen:I
    if-ltz v4, :cond_16a

    .line 81
    add-int v2, p4, v4

    aget-char v2, p3, v2

    .line 83
    .local v2, ch:C
    const/16 v5, 0xa

    if-ne v2, v5, :cond_57

    .line 84
    add-int/lit8 p3, v4, -0x1

    .line 92
    .end local v2           #ch:C
    .end local v4           #visLen:I
    .local p3, visLen:I
    :goto_36
    add-int/lit8 p4, p3, 0x1

    .line 93
    .end local p3           #visLen:I
    .local p4, visLen:I
    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_165

    .line 94
    add-int/lit8 p3, v7, 0x1

    .end local v7           #runCount:I
    .local p3, runCount:I
    move/from16 v11, p4

    .end local p4           #visLen:I
    .local v11, visLen:I
    move/from16 v10, p3

    .line 98
    .end local p3           #runCount:I
    .local v10, runCount:I
    :goto_44
    const/16 p3, 0x1

    move v0, v10

    move/from16 v1, p3

    if-ne v0, v1, :cond_6a

    if-ne v6, p0, :cond_6a

    .line 100
    and-int/lit8 p0, v6, 0x1

    if-eqz p0, :cond_64

    .line 101
    .end local p0           #baseLevel:I
    sget-object p0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    move p1, v6

    .end local v6           #minLevel:I
    .local p1, minLevel:I
    move-object p2, p0

    move p0, v3

    .line 173
    .end local v3           #curLevel:I
    .end local p2
    .end local p5
    .local p0, curLevel:I
    :goto_56
    return-object p2

    .line 88
    .end local v10           #runCount:I
    .end local v11           #visLen:I
    .restart local v2       #ch:C
    .restart local v3       #curLevel:I
    .restart local v4       #visLen:I
    .restart local v6       #minLevel:I
    .restart local v7       #runCount:I
    .local p0, baseLevel:I
    .local p1, levels:[B
    .restart local p2
    .local p3, chars:[C
    .local p4, cstart:I
    .restart local p5
    :cond_57
    const/16 v5, 0x20

    if-eq v2, v5, :cond_62

    const/16 v5, 0x9

    if-eq v2, v5, :cond_62

    move/from16 p3, v4

    .line 89
    .end local v4           #visLen:I
    .local p3, visLen:I
    goto :goto_36

    .restart local v4       #visLen:I
    .local p3, chars:[C
    :cond_62
    move v2, v4

    .line 91
    .end local v4           #visLen:I
    .local v2, visLen:I
    goto :goto_28

    .line 103
    .end local v2           #visLen:I
    .end local v7           #runCount:I
    .end local p0           #baseLevel:I
    .end local p3           #chars:[C
    .end local p4           #cstart:I
    .restart local v10       #runCount:I
    .restart local v11       #visLen:I
    :cond_64
    sget-object p0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move p1, v6

    .end local v6           #minLevel:I
    .local p1, minLevel:I
    move-object p2, p0

    move p0, v3

    .end local v3           #curLevel:I
    .local p0, curLevel:I
    goto :goto_56

    .line 106
    .restart local v3       #curLevel:I
    .restart local v6       #minLevel:I
    .local p0, baseLevel:I
    .local p1, levels:[B
    :cond_6a
    mul-int/lit8 p3, v10, 0x2

    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v3, v0

    .line 107
    .local v3, ld:[I
    move v5, v6

    .line 108
    .local v5, maxLevel:I
    shl-int/lit8 v4, v6, 0x1a

    .line 113
    .local v4, levelBits:I
    const/4 v7, 0x1

    .line 114
    .local v7, n:I
    move v8, p2

    .line 115
    .local v8, prev:I
    move/from16 p3, v6

    .line 116
    .local p3, curLevel:I
    move v2, p2

    .local v2, i:I
    add-int p4, p2, v11

    .local p4, e:I
    move v9, v8

    .end local v8           #prev:I
    .local v9, prev:I
    move v8, v7

    .end local v7           #n:I
    .local v8, n:I
    move v7, v6

    .end local v6           #minLevel:I
    .local v7, minLevel:I
    move v6, v5

    .end local v5           #maxLevel:I
    .local v6, maxLevel:I
    move v5, v4

    .end local v4           #levelBits:I
    .local v5, levelBits:I
    :goto_80
    move v0, v2

    move/from16 v1, p4

    if-ge v0, v1, :cond_b3

    .line 117
    aget-byte v4, p1, v2

    .line 118
    .local v4, level:I
    move v0, v4

    move/from16 v1, p3

    if-eq v0, v1, :cond_15e

    .line 119
    move/from16 p3, v4

    .line 120
    if-le v4, v6, :cond_ae

    .line 121
    move v4, v4

    .end local v6           #maxLevel:I
    .local v4, maxLevel:I
    move v6, v4

    .line 126
    .end local v4           #maxLevel:I
    .restart local v6       #maxLevel:I
    :cond_92
    :goto_92
    add-int/lit8 v4, v8, 0x1

    .end local v8           #n:I
    .local v4, n:I
    sub-int v9, v2, v9

    or-int/2addr v5, v9

    aput v5, v3, v8

    .line 127
    .end local v5           #levelBits:I
    .end local v9           #prev:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #n:I
    .local v5, n:I
    sub-int v8, v2, p2

    aput v8, v3, v4

    .line 128
    shl-int/lit8 v4, p3, 0x1a

    .line 129
    .local v4, levelBits:I
    move v8, v2

    .local v8, prev:I
    move v12, v5

    .end local v5           #n:I
    .local v12, n:I
    move v5, v6

    .end local v6           #maxLevel:I
    .local v5, maxLevel:I
    move v6, v7

    .end local v7           #minLevel:I
    .local v6, minLevel:I
    move v7, v12

    .line 116
    .end local v12           #n:I
    .local v7, n:I
    :goto_a6
    add-int/lit8 v2, v2, 0x1

    move v9, v8

    .end local v8           #prev:I
    .restart local v9       #prev:I
    move v8, v7

    .end local v7           #n:I
    .local v8, n:I
    move v7, v6

    .end local v6           #minLevel:I
    .local v7, minLevel:I
    move v6, v5

    .end local v5           #maxLevel:I
    .local v6, maxLevel:I
    move v5, v4

    .end local v4           #levelBits:I
    .local v5, levelBits:I
    goto :goto_80

    .line 122
    .local v4, level:I
    :cond_ae
    if-ge v4, v7, :cond_92

    .line 123
    move v4, v4

    .end local v7           #minLevel:I
    .local v4, minLevel:I
    move v7, v4

    .end local v4           #minLevel:I
    .restart local v7       #minLevel:I
    goto :goto_92

    .line 132
    :cond_b3
    add-int/2addr p2, v11

    sub-int/2addr p2, v9

    or-int/2addr p2, v5

    aput p2, v3, v8

    .line 133
    .end local p2
    move v0, v11

    move/from16 v1, p5

    if-ge v0, v1, :cond_15b

    .line 134
    add-int/lit8 p2, v8, 0x1

    .end local v8           #n:I
    .local p2, n:I
    aput v11, v3, p2

    .line 135
    add-int/lit8 p2, p2, 0x1

    sub-int p5, p5, v11

    shl-int/lit8 v4, p0, 0x1a

    or-int p5, p5, v4

    aput p5, v3, p2

    .line 150
    .end local p5
    :goto_cb
    and-int/lit8 p2, v7, 0x1

    if-ne p2, p0, :cond_114

    .line 151
    .end local p2           #n:I
    add-int/lit8 p0, v7, 0x1

    .line 152
    .end local v7           #minLevel:I
    .local p0, minLevel:I
    if-le v6, p0, :cond_112

    const/4 p2, 0x1

    .local p2, swap:Z
    :goto_d4
    move v4, p0

    .end local p0           #minLevel:I
    .restart local v4       #minLevel:I
    move p0, p2

    .line 156
    .end local p2           #swap:Z
    :goto_d6
    if-eqz p0, :cond_157

    .line 157
    const/4 p0, 0x1

    sub-int p0, v6, p0

    .local p0, level:I
    move p2, v2

    .end local v2           #i:I
    .local p2, i:I
    move/from16 v12, p4

    .end local p4           #e:I
    .local v12, e:I
    move/from16 p4, p0

    .end local p0           #level:I
    .local p4, level:I
    move p0, v12

    .end local v5           #levelBits:I
    .end local v6           #maxLevel:I
    .end local v12           #e:I
    .local p0, e:I
    :goto_e1
    move/from16 v0, p4

    move v1, v4

    if-lt v0, v1, :cond_14b

    .line 158
    const/4 p2, 0x0

    :goto_e7
    move-object v0, v3

    array-length v0, v0

    move/from16 p5, v0

    move v0, p2

    move/from16 v1, p5

    if-ge v0, v1, :cond_148

    .line 159
    aget p5, v3, p2

    aget-byte p5, p1, p5

    move/from16 v0, p5

    move/from16 v1, p4

    if-lt v0, v1, :cond_145

    .line 160
    add-int/lit8 p0, p2, 0x2

    .line 161
    :goto_fc
    move-object v0, v3

    array-length v0, v0

    move/from16 p5, v0

    move v0, p0

    move/from16 v1, p5

    if-ge v0, v1, :cond_11c

    aget p5, v3, p0

    aget-byte p5, p1, p5

    move/from16 v0, p5

    move/from16 v1, p4

    if-lt v0, v1, :cond_11c

    .line 162
    add-int/lit8 p0, p0, 0x2

    goto :goto_fc

    .line 152
    .end local v4           #minLevel:I
    .end local p2           #i:I
    .restart local v2       #i:I
    .restart local v5       #levelBits:I
    .restart local v6       #maxLevel:I
    .local p0, minLevel:I
    .local p4, e:I
    :cond_112
    const/4 p2, 0x0

    goto :goto_d4

    .line 154
    .restart local v7       #minLevel:I
    .local p0, baseLevel:I
    :cond_114
    const/4 p0, 0x1

    if-le v10, p0, :cond_11a

    .end local p0           #baseLevel:I
    const/4 p0, 0x1

    .local p0, swap:Z
    :goto_118
    move v4, v7

    .end local v7           #minLevel:I
    .restart local v4       #minLevel:I
    goto :goto_d6

    .end local v4           #minLevel:I
    .end local p0           #swap:Z
    .restart local v7       #minLevel:I
    :cond_11a
    const/4 p0, 0x0

    goto :goto_118

    .line 164
    .end local v2           #i:I
    .end local v5           #levelBits:I
    .end local v6           #maxLevel:I
    .end local v7           #minLevel:I
    .restart local v4       #minLevel:I
    .local p0, e:I
    .restart local p2       #i:I
    .local p4, level:I
    :cond_11c
    move/from16 p5, p2

    .local p5, low:I
    const/4 p2, 0x2

    sub-int p2, p0, p2

    .local p2, hi:I
    :goto_121
    move/from16 v0, p5

    move v1, p2

    if-ge v0, v1, :cond_143

    .line 165
    aget v2, v3, p5

    .local v2, x:I
    aget v5, v3, p2

    aput v5, v3, p5

    aput v2, v3, p2

    .line 166
    add-int/lit8 v2, p5, 0x1

    aget v2, v3, v2

    add-int/lit8 v5, p5, 0x1

    add-int/lit8 v6, p2, 0x1

    aget v6, v3, v6

    aput v6, v3, v5

    add-int/lit8 v5, p2, 0x1

    aput v2, v3, v5

    .line 164
    add-int/lit8 p5, p5, 0x2

    add-int/lit8 p2, p2, -0x2

    goto :goto_121

    .line 168
    .end local v2           #x:I
    :cond_143
    add-int/lit8 p2, p0, 0x2

    .line 158
    .end local p5           #low:I
    .local p2, i:I
    :cond_145
    add-int/lit8 p2, p2, 0x2

    goto :goto_e7

    .line 157
    :cond_148
    add-int/lit8 p4, p4, -0x1

    goto :goto_e1

    :cond_14b
    move p1, p2

    .line 173
    .end local p2           #i:I
    .end local p4           #level:I
    .local p1, i:I
    :goto_14c
    new-instance p0, Landroid/text/Layout$Directions;

    .end local p0           #e:I
    invoke-direct {p0, v3}, Landroid/text/Layout$Directions;-><init>([I)V

    move p1, v4

    .end local v4           #minLevel:I
    .local p1, minLevel:I
    move-object p2, p0

    move/from16 p0, p3

    .end local p3           #curLevel:I
    .local p0, curLevel:I
    goto/16 :goto_56

    .end local p0           #curLevel:I
    .local v2, i:I
    .restart local v4       #minLevel:I
    .restart local v5       #levelBits:I
    .restart local v6       #maxLevel:I
    .local p1, levels:[B
    .restart local p3       #curLevel:I
    .local p4, e:I
    :cond_157
    move/from16 p0, p4

    .end local p4           #e:I
    .local p0, e:I
    move p1, v2

    .end local v2           #i:I
    .local p1, i:I
    goto :goto_14c

    .end local v4           #minLevel:I
    .restart local v2       #i:I
    .restart local v7       #minLevel:I
    .restart local v8       #n:I
    .local p0, baseLevel:I
    .local p1, levels:[B
    .restart local p4       #e:I
    .local p5, len:I
    :cond_15b
    move p2, v8

    .end local v8           #n:I
    .local p2, n:I
    goto/16 :goto_cb

    .local v4, level:I
    .restart local v8       #n:I
    .local p2, lstart:I
    :cond_15e
    move v4, v5

    .end local v5           #levelBits:I
    .local v4, levelBits:I
    move v5, v6

    .end local v6           #maxLevel:I
    .local v5, maxLevel:I
    move v6, v7

    .end local v7           #minLevel:I
    .local v6, minLevel:I
    move v7, v8

    .end local v8           #n:I
    .local v7, n:I
    move v8, v9

    .end local v9           #prev:I
    .local v8, prev:I
    goto/16 :goto_a6

    .end local v2           #i:I
    .end local v4           #levelBits:I
    .end local v5           #maxLevel:I
    .end local v8           #prev:I
    .end local v10           #runCount:I
    .end local v11           #visLen:I
    .end local p3           #curLevel:I
    .local v3, curLevel:I
    .local v7, runCount:I
    .local p4, visLen:I
    :cond_165
    move/from16 v11, p4

    .end local p4           #visLen:I
    .restart local v11       #visLen:I
    move v10, v7

    .end local v7           #runCount:I
    .restart local v10       #runCount:I
    goto/16 :goto_44

    .end local v10           #runCount:I
    .end local v11           #visLen:I
    .local v4, visLen:I
    .restart local v7       #runCount:I
    .local p3, chars:[C
    .local p4, cstart:I
    :cond_16a
    move/from16 p3, v4

    .end local v4           #visLen:I
    .local p3, visLen:I
    goto/16 :goto_36

    .local v2, visLen:I
    .local p3, chars:[C
    :cond_16e
    move v11, v2

    .end local v2           #visLen:I
    .restart local v11       #visLen:I
    move v10, v7

    .end local v7           #runCount:I
    .restart local v10       #runCount:I
    goto/16 :goto_44

    .end local v10           #runCount:I
    .end local v11           #visLen:I
    .local v2, level:I
    .local v4, e:I
    .local v5, i:I
    .restart local v7       #runCount:I
    :cond_172
    move v2, v3

    .end local v3           #curLevel:I
    .local v2, curLevel:I
    goto/16 :goto_19
.end method

.method private static native runBidi(I[C[BIZ)I
.end method
