.class final Ljava/util/DualPivotQuicksort;
.super Ljava/lang/Object;
.source "DualPivotQuicksort.java"


# static fields
.field private static final COUNTING_SORT_THRESHOLD_FOR_BYTE:I = 0x80

.field private static final COUNTING_SORT_THRESHOLD_FOR_SHORT_OR_CHAR:I = 0x8000

.field private static final INSERTION_SORT_THRESHOLD:I = 0x20

.field private static final NUM_BYTE_VALUES:I = 0x100

.field private static final NUM_CHAR_VALUES:I = 0x10000

.field private static final NUM_SHORT_VALUES:I = 0x10000


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doSort([BII)V
    .registers 13
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1252
    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x20

    if-ge v8, v9, :cond_27

    .line 1253
    add-int/lit8 v2, p1, 0x1

    .local v2, i:I
    :goto_a
    if-gt v2, p2, :cond_62

    .line 1254
    aget-byte v0, p0, v2

    .line 1256
    .local v0, ai:B
    const/4 v8, 0x1

    sub-int v3, v2, v8

    .local v3, j:I
    :goto_11
    if-lt v3, p1, :cond_20

    aget-byte v8, p0, v3

    if-ge v0, v8, :cond_20

    .line 1257
    add-int/lit8 v8, v3, 0x1

    aget-byte v9, p0, v3

    aput-byte v9, p0, v8

    .line 1256
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 1259
    :cond_20
    add-int/lit8 v8, v3, 0x1

    aput-byte v0, p0, v8

    .line 1253
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1261
    .end local v0           #ai:B
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_27
    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x80

    if-le v8, v9, :cond_5f

    .line 1263
    const/16 v8, 0x100

    new-array v1, v8, [I

    .line 1265
    .local v1, count:[I
    move v2, p1

    .restart local v2       #i:I
    :goto_34
    if-gt v2, p2, :cond_44

    .line 1266
    aget-byte v8, p0, v2

    const/16 v9, -0x80

    sub-int/2addr v8, v9

    aget v9, v1, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v8

    .line 1265
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 1268
    :cond_44
    const/4 v2, 0x0

    move v4, p1

    .local v4, k:I
    :goto_46
    array-length v8, v1

    if-ge v2, v8, :cond_62

    if-gt v4, p2, :cond_62

    .line 1269
    add-int/lit8 v8, v2, -0x80

    int-to-byte v7, v8

    .line 1271
    .local v7, value:B
    aget v6, v1, v2

    .local v6, s:I
    move v5, v4

    .end local v4           #k:I
    .local v5, k:I
    :goto_51
    if-lez v6, :cond_5b

    .line 1272
    add-int/lit8 v4, v5, 0x1

    .end local v5           #k:I
    .restart local v4       #k:I
    aput-byte v7, p0, v5

    .line 1271
    add-int/lit8 v6, v6, -0x1

    move v5, v4

    .end local v4           #k:I
    .restart local v5       #k:I
    goto :goto_51

    .line 1268
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5           #k:I
    .restart local v4       #k:I
    goto :goto_46

    .line 1276
    .end local v1           #count:[I
    .end local v2           #i:I
    .end local v4           #k:I
    .end local v6           #s:I
    .end local v7           #value:B
    :cond_5f
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([BII)V

    .line 1278
    :cond_62
    return-void
.end method

.method private static doSort([CII)V
    .registers 12
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 959
    sub-int v7, p2, p1

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x20

    if-ge v7, v8, :cond_27

    .line 960
    add-int/lit8 v2, p1, 0x1

    .local v2, i:I
    :goto_a
    if-gt v2, p2, :cond_5e

    .line 961
    aget-char v0, p0, v2

    .line 963
    .local v0, ai:C
    const/4 v7, 0x1

    sub-int v3, v2, v7

    .local v3, j:I
    :goto_11
    if-lt v3, p1, :cond_20

    aget-char v7, p0, v3

    if-ge v0, v7, :cond_20

    .line 964
    add-int/lit8 v7, v3, 0x1

    aget-char v8, p0, v3

    aput-char v8, p0, v7

    .line 963
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 966
    :cond_20
    add-int/lit8 v7, v3, 0x1

    aput-char v0, p0, v7

    .line 960
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 968
    .end local v0           #ai:C
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_27
    sub-int v7, p2, p1

    add-int/lit8 v7, v7, 0x1

    const v8, 0x8000

    if-le v7, v8, :cond_5b

    .line 970
    const/high16 v7, 0x1

    new-array v1, v7, [I

    .line 972
    .local v1, count:[I
    move v2, p1

    .restart local v2       #i:I
    :goto_35
    if-gt v2, p2, :cond_42

    .line 973
    aget-char v7, p0, v2

    aget v8, v1, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v1, v7

    .line 972
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 975
    :cond_42
    const/4 v2, 0x0

    move v4, p1

    .local v4, k:I
    :goto_44
    array-length v7, v1

    if-ge v2, v7, :cond_5e

    if-gt v4, p2, :cond_5e

    .line 976
    aget v6, v1, v2

    .local v6, s:I
    move v5, v4

    .end local v4           #k:I
    .local v5, k:I
    :goto_4c
    if-lez v6, :cond_57

    .line 977
    add-int/lit8 v4, v5, 0x1

    .end local v5           #k:I
    .restart local v4       #k:I
    int-to-char v7, v2

    aput-char v7, p0, v5

    .line 976
    add-int/lit8 v6, v6, -0x1

    move v5, v4

    .end local v4           #k:I
    .restart local v5       #k:I
    goto :goto_4c

    .line 975
    :cond_57
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5           #k:I
    .restart local v4       #k:I
    goto :goto_44

    .line 981
    .end local v1           #count:[I
    .end local v2           #i:I
    .end local v4           #k:I
    .end local v6           #s:I
    :cond_5b
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([CII)V

    .line 983
    :cond_5e
    return-void
.end method

.method private static doSort([DII)V
    .registers 10
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 2012
    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x20

    if-ge v4, v5, :cond_29

    .line 2013
    add-int/lit8 v2, p1, 0x1

    .local v2, i:I
    :goto_a
    if-gt v2, p2, :cond_2c

    .line 2014
    aget-wide v0, p0, v2

    .line 2016
    .local v0, ai:D
    const/4 v4, 0x1

    sub-int v3, v2, v4

    .local v3, j:I
    :goto_11
    if-lt v3, p1, :cond_22

    aget-wide v4, p0, v3

    cmpg-double v4, v0, v4

    if-gez v4, :cond_22

    .line 2017
    add-int/lit8 v4, v3, 0x1

    aget-wide v5, p0, v3

    aput-wide v5, p0, v4

    .line 2016
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 2019
    :cond_22
    add-int/lit8 v4, v3, 0x1

    aput-wide v0, p0, v4

    .line 2013
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2022
    .end local v0           #ai:D
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_29
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([DII)V

    .line 2024
    :cond_2c
    return-void
.end method

.method private static doSort([FII)V
    .registers 8
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1639
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x20

    if-ge v3, v4, :cond_29

    .line 1640
    add-int/lit8 v1, p1, 0x1

    .local v1, i:I
    :goto_a
    if-gt v1, p2, :cond_2c

    .line 1641
    aget v0, p0, v1

    .line 1643
    .local v0, ai:F
    const/4 v3, 0x1

    sub-int v2, v1, v3

    .local v2, j:I
    :goto_11
    if-lt v2, p1, :cond_22

    aget v3, p0, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_22

    .line 1644
    add-int/lit8 v3, v2, 0x1

    aget v4, p0, v2

    aput v4, p0, v3

    .line 1643
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 1646
    :cond_22
    add-int/lit8 v3, v2, 0x1

    aput v0, p0, v3

    .line 1640
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1649
    .end local v0           #ai:F
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_29
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([FII)V

    .line 1651
    :cond_2c
    return-void
.end method

.method private static doSort([III)V
    .registers 8
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 105
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x20

    if-ge v3, v4, :cond_27

    .line 106
    add-int/lit8 v1, p1, 0x1

    .local v1, i:I
    :goto_a
    if-gt v1, p2, :cond_2a

    .line 107
    aget v0, p0, v1

    .line 109
    .local v0, ai:I
    const/4 v3, 0x1

    sub-int v2, v1, v3

    .local v2, j:I
    :goto_11
    if-lt v2, p1, :cond_20

    aget v3, p0, v2

    if-ge v0, v3, :cond_20

    .line 110
    add-int/lit8 v3, v2, 0x1

    aget v4, p0, v2

    aput v4, p0, v3

    .line 109
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 112
    :cond_20
    add-int/lit8 v3, v2, 0x1

    aput v0, p0, v3

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 115
    .end local v0           #ai:I
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_27
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([III)V

    .line 117
    :cond_2a
    return-void
.end method

.method private static doSort([JII)V
    .registers 10
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 383
    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x20

    if-ge v4, v5, :cond_29

    .line 384
    add-int/lit8 v2, p1, 0x1

    .local v2, i:I
    :goto_a
    if-gt v2, p2, :cond_2c

    .line 385
    aget-wide v0, p0, v2

    .line 387
    .local v0, ai:J
    const/4 v4, 0x1

    sub-int v3, v2, v4

    .local v3, j:I
    :goto_11
    if-lt v3, p1, :cond_22

    aget-wide v4, p0, v3

    cmp-long v4, v0, v4

    if-gez v4, :cond_22

    .line 388
    add-int/lit8 v4, v3, 0x1

    aget-wide v5, p0, v3

    aput-wide v5, p0, v4

    .line 387
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 390
    :cond_22
    add-int/lit8 v4, v3, 0x1

    aput-wide v0, p0, v4

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 393
    .end local v0           #ai:J
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_29
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([JII)V

    .line 395
    :cond_2c
    return-void
.end method

.method private static doSort([SII)V
    .registers 13
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 664
    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x20

    if-ge v8, v9, :cond_27

    .line 665
    add-int/lit8 v2, p1, 0x1

    .local v2, i:I
    :goto_a
    if-gt v2, p2, :cond_63

    .line 666
    aget-short v0, p0, v2

    .line 668
    .local v0, ai:S
    const/4 v8, 0x1

    sub-int v3, v2, v8

    .local v3, j:I
    :goto_11
    if-lt v3, p1, :cond_20

    aget-short v8, p0, v3

    if-ge v0, v8, :cond_20

    .line 669
    add-int/lit8 v8, v3, 0x1

    aget-short v9, p0, v3

    aput-short v9, p0, v8

    .line 668
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 671
    :cond_20
    add-int/lit8 v8, v3, 0x1

    aput-short v0, p0, v8

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 673
    .end local v0           #ai:S
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_27
    sub-int v8, p2, p1

    add-int/lit8 v8, v8, 0x1

    const v9, 0x8000

    if-le v8, v9, :cond_60

    .line 675
    const/high16 v8, 0x1

    new-array v1, v8, [I

    .line 677
    .local v1, count:[I
    move v2, p1

    .restart local v2       #i:I
    :goto_35
    if-gt v2, p2, :cond_45

    .line 678
    aget-short v8, p0, v2

    const/16 v9, -0x8000

    sub-int/2addr v8, v9

    aget v9, v1, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v8

    .line 677
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 680
    :cond_45
    const/4 v2, 0x0

    move v4, p1

    .local v4, k:I
    :goto_47
    array-length v8, v1

    if-ge v2, v8, :cond_63

    if-gt v4, p2, :cond_63

    .line 681
    add-int/lit16 v8, v2, -0x8000

    int-to-short v7, v8

    .line 683
    .local v7, value:S
    aget v6, v1, v2

    .local v6, s:I
    move v5, v4

    .end local v4           #k:I
    .local v5, k:I
    :goto_52
    if-lez v6, :cond_5c

    .line 684
    add-int/lit8 v4, v5, 0x1

    .end local v5           #k:I
    .restart local v4       #k:I
    aput-short v7, p0, v5

    .line 683
    add-int/lit8 v6, v6, -0x1

    move v5, v4

    .end local v4           #k:I
    .restart local v5       #k:I
    goto :goto_52

    .line 680
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5           #k:I
    .restart local v4       #k:I
    goto :goto_47

    .line 688
    .end local v1           #count:[I
    .end local v2           #i:I
    .end local v4           #k:I
    .end local v6           #s:I
    .end local v7           #value:S
    :cond_60
    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->dualPivotQuicksort([SII)V

    .line 690
    :cond_63
    return-void
.end method

.method private static dualPivotQuicksort([BII)V
    .registers 14
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1290
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x6

    .line 1291
    .local v0, sixth:I
    add-int v5, p1, v0

    .line 1292
    .local v5, e1:I
    sub-int v9, p2, v0

    .line 1293
    .local v9, e5:I
    add-int v1, p1, p2

    ushr-int/lit8 v7, v1, 0x1

    .line 1294
    .local v7, e3:I
    add-int v8, v7, v0

    .line 1295
    .local v8, e4:I
    sub-int v6, v7, v0

    .line 1298
    .local v6, e2:I
    aget-byte v0, p0, v5

    .local v0, ae1:B
    aget-byte v1, p0, v6

    .local v1, ae2:B
    aget-byte v2, p0, v7

    .local v2, ae3:B
    aget-byte v3, p0, v8

    .local v3, ae4:B
    aget-byte v4, p0, v9

    .line 1300
    .local v4, ae5:B
    if-le v0, v1, :cond_21

    move v10, v0

    .local v10, t:B
    move v0, v1

    move v1, v10

    .line 1301
    .end local v10           #t:B
    :cond_21
    if-le v3, v4, :cond_26

    move v10, v3

    .restart local v10       #t:B
    move v3, v4

    move v4, v10

    .line 1302
    .end local v10           #t:B
    :cond_26
    if-le v0, v2, :cond_2b

    move v10, v0

    .restart local v10       #t:B
    move v0, v2

    move v2, v10

    .line 1303
    .end local v10           #t:B
    :cond_2b
    if-le v1, v2, :cond_30

    move v10, v1

    .restart local v10       #t:B
    move v1, v2

    move v2, v10

    .line 1304
    .end local v10           #t:B
    :cond_30
    if-le v0, v3, :cond_35

    move v10, v0

    .restart local v10       #t:B
    move v0, v3

    move v3, v10

    .line 1305
    .end local v10           #t:B
    :cond_35
    if-le v2, v3, :cond_3a

    move v10, v2

    .restart local v10       #t:B
    move v2, v3

    move v3, v10

    .line 1306
    .end local v10           #t:B
    :cond_3a
    if-le v1, v4, :cond_3f

    move v10, v1

    .restart local v10       #t:B
    move v1, v4

    move v4, v10

    .line 1307
    .end local v10           #t:B
    :cond_3f
    if-le v1, v2, :cond_44

    move v10, v1

    .restart local v10       #t:B
    move v1, v2

    move v2, v10

    .line 1308
    .end local v10           #t:B
    :cond_44
    if-le v3, v4, :cond_49

    move v10, v3

    .restart local v10       #t:B
    move v3, v4

    move v4, v10

    .line 1310
    .end local v10           #t:B
    :cond_49
    aput-byte v0, p0, v5

    aput-byte v2, p0, v7

    aput-byte v4, p0, v9

    .line 1323
    move v7, v1

    .local v7, pivot1:B
    aget-byte v0, p0, p1

    .end local v0           #ae1:B
    aput-byte v0, p0, v6

    .line 1324
    move v10, v3

    .local v10, pivot2:B
    aget-byte v0, p0, p2

    aput-byte v0, p0, v8

    .line 1327
    add-int/lit8 v2, p1, 0x1

    .line 1328
    .local v2, less:I
    const/4 v0, 0x1

    sub-int v0, p2, v0

    .line 1330
    .local v0, great:I
    if-eq v7, v10, :cond_80

    const/4 v1, 0x1

    move v8, v1

    .line 1332
    .end local v1           #ae2:B
    .local v8, pivotsDiffer:Z
    :goto_62
    if-eqz v8, :cond_db

    .line 1353
    move v1, v2

    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .local v3, k:I
    move v6, v2

    .end local v2           #less:I
    .local v6, less:I
    move v1, v0

    .end local v0           #great:I
    .end local v4           #ae5:B
    .local v1, great:I
    :goto_68
    if-gt v3, v1, :cond_d7

    .line 1354
    aget-byte v0, p0, v3

    .line 1355
    .local v0, ak:B
    if-ge v0, v7, :cond_83

    .line 1356
    if-eq v3, v6, :cond_76

    .line 1357
    aget-byte v2, p0, v6

    aput-byte v2, p0, v3

    .line 1358
    aput-byte v0, p0, v6

    .line 1360
    :cond_76
    add-int/lit8 v0, v6, 0x1

    .end local v6           #less:I
    .local v0, less:I
    move v2, v0

    .end local v0           #less:I
    .restart local v2       #less:I
    move v0, v1

    .line 1353
    .end local v1           #great:I
    .local v0, great:I
    :goto_7a
    add-int/lit8 v1, v3, 0x1

    .end local v3           #k:I
    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .restart local v3       #k:I
    move v6, v2

    .end local v2           #less:I
    .restart local v6       #less:I
    move v1, v0

    .end local v0           #great:I
    .local v1, great:I
    goto :goto_68

    .line 1330
    .restart local v0       #great:I
    .local v1, ae2:B
    .restart local v2       #less:I
    .local v3, ae4:B
    .restart local v4       #ae5:B
    .local v6, e2:I
    .local v8, e4:I
    :cond_80
    const/4 v1, 0x0

    move v8, v1

    goto :goto_62

    .line 1361
    .end local v2           #less:I
    .end local v4           #ae5:B
    .local v0, ak:B
    .local v1, great:I
    .local v3, k:I
    .local v6, less:I
    .local v8, pivotsDiffer:Z
    :cond_83
    if-le v0, v10, :cond_18f

    .line 1362
    :goto_85
    aget-byte v2, p0, v1

    if-le v2, v10, :cond_b7

    .line 1363
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    if-ne v1, v3, :cond_18c

    move v1, v3

    .end local v3           #k:I
    .local v1, k:I
    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .line 1432
    .end local v6           #less:I
    .local v2, less:I
    :goto_90
    const/4 v3, 0x1

    sub-int v3, v2, v3

    aget-byte v3, p0, v3

    aput-byte v3, p0, p1

    const/4 v3, 0x1

    sub-int v3, v2, v3

    aput-byte v7, p0, v3

    .line 1433
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, p0, p2

    add-int/lit8 v3, v0, 0x1

    aput-byte v10, p0, v3

    .line 1436
    const/4 v3, 0x2

    sub-int v3, v2, v3

    invoke-static {p0, p1, v3}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    .line 1437
    add-int/lit8 p1, v0, 0x2

    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    .line 1443
    .end local p1
    if-nez v8, :cond_121

    move p1, v1

    .end local v1           #k:I
    .local p1, k:I
    move p0, v0

    .end local v0           #great:I
    .local p0, great:I
    move p2, v2

    .line 1503
    .end local v2           #less:I
    .local p2, less:I
    :goto_b6
    return-void

    .line 1367
    .local v0, ak:B
    .local v1, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    .local p0, a:[B
    .local p1, left:I
    .local p2, right:I
    :cond_b7
    aget-byte v2, p0, v1

    if-ge v2, v7, :cond_cc

    .line 1368
    aget-byte v2, p0, v6

    aput-byte v2, p0, v3

    .line 1369
    add-int/lit8 v4, v6, 0x1

    .end local v6           #less:I
    .local v4, less:I
    aget-byte v2, p0, v1

    aput-byte v2, p0, v6

    .line 1370
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput-byte v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v4

    .end local v4           #less:I
    .local v2, less:I
    goto :goto_7a

    .line 1372
    .end local v2           #less:I
    .local v0, ak:B
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_cc
    aget-byte v2, p0, v1

    aput-byte v2, p0, v3

    .line 1373
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput-byte v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto :goto_7a

    .end local v0           #great:I
    .end local v2           #less:I
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_d7
    move v0, v1

    .end local v1           #great:I
    .restart local v0       #great:I
    move v2, v6

    .end local v6           #less:I
    .restart local v2       #less:I
    move v1, v3

    .line 1353
    .end local v3           #k:I
    .local v1, k:I
    goto :goto_90

    .line 1398
    .end local v1           #k:I
    .local v3, ae4:B
    .local v4, ae5:B
    .local v6, e2:I
    :cond_db
    move v1, v2

    .restart local v1       #k:I
    move v3, v1

    .end local v1           #k:I
    .local v3, k:I
    move v6, v2

    .end local v2           #less:I
    .local v6, less:I
    move v1, v0

    .end local v0           #great:I
    .end local v4           #ae5:B
    .local v1, great:I
    :goto_df
    if-gt v3, v1, :cond_187

    .line 1399
    aget-byte v0, p0, v3

    .line 1400
    .local v0, ak:B
    if-ne v0, v7, :cond_ed

    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .line 1398
    .end local v6           #less:I
    .restart local v2       #less:I
    :goto_e7
    add-int/lit8 v1, v3, 0x1

    .end local v3           #k:I
    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .restart local v3       #k:I
    move v6, v2

    .end local v2           #less:I
    .restart local v6       #less:I
    move v1, v0

    .end local v0           #great:I
    .local v1, great:I
    goto :goto_df

    .line 1403
    .local v0, ak:B
    :cond_ed
    if-ge v0, v7, :cond_fc

    .line 1404
    if-eq v3, v6, :cond_f7

    .line 1405
    aget-byte v2, p0, v6

    aput-byte v2, p0, v3

    .line 1406
    aput-byte v0, p0, v6

    .line 1408
    :cond_f7
    add-int/lit8 v0, v6, 0x1

    .end local v6           #less:I
    .local v0, less:I
    move v2, v0

    .end local v0           #less:I
    .restart local v2       #less:I
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    goto :goto_e7

    .line 1416
    .end local v2           #less:I
    .local v0, ak:B
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_fc
    :goto_fc
    aget-byte v2, p0, v1

    if-le v2, v7, :cond_103

    .line 1417
    add-int/lit8 v1, v1, -0x1

    goto :goto_fc

    .line 1419
    :cond_103
    aget-byte v2, p0, v1

    if-ge v2, v7, :cond_118

    .line 1420
    aget-byte v2, p0, v6

    aput-byte v2, p0, v3

    .line 1421
    add-int/lit8 v4, v6, 0x1

    .end local v6           #less:I
    .local v4, less:I
    aget-byte v2, p0, v1

    aput-byte v2, p0, v6

    .line 1422
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput-byte v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v4

    .end local v4           #less:I
    .local v2, less:I
    goto :goto_e7

    .line 1424
    .end local v2           #less:I
    .local v0, ak:B
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_118
    aput-byte v7, p0, v3

    .line 1425
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput-byte v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto :goto_e7

    .line 1451
    .end local v3           #k:I
    .end local p1           #left:I
    .local v1, k:I
    :cond_121
    if-ge v2, v5, :cond_183

    if-le v0, v9, :cond_183

    move v1, v2

    .line 1452
    .end local v2           #less:I
    .local v1, less:I
    :goto_126
    aget-byte p1, p0, v1

    if-ne p1, v7, :cond_181

    .line 1453
    add-int/lit8 p1, v1, 0x1

    .end local v1           #less:I
    .local p1, less:I
    move v1, p1

    .end local p1           #less:I
    .restart local v1       #less:I
    goto :goto_126

    .line 1455
    .end local v0           #great:I
    .end local p2           #right:I
    .local p1, great:I
    :goto_12e
    aget-byte p2, p0, p1

    if-ne p2, v10, :cond_135

    .line 1456
    add-int/lit8 p1, p1, -0x1

    goto :goto_12e

    .line 1479
    :cond_135
    move p2, v1

    .local p2, k:I
    move v0, p2

    .end local p2           #k:I
    .local v0, k:I
    move p2, p1

    .end local p1           #great:I
    .local p2, great:I
    :goto_138
    if-gt v0, p2, :cond_17d

    .line 1480
    aget-byte p1, p0, v0

    .line 1481
    .local p1, ak:B
    if-ne p1, v10, :cond_16e

    .end local p1           #ak:B
    :cond_13e
    move p1, p2

    .line 1482
    .end local p2           #great:I
    .local p1, great:I
    aget-byte p2, p0, p1

    if-ne p2, v10, :cond_152

    .line 1483
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .restart local p2       #great:I
    if-ne p1, v0, :cond_13e

    move p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    move p2, v0

    .end local v0           #k:I
    .local p2, k:I
    move v0, v1

    .line 1502
    .end local v1           #less:I
    .local v0, less:I
    :goto_14a
    invoke-static {p0, v0, p1}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    move p0, p1

    .end local p1           #great:I
    .local p0, great:I
    move p1, p2

    .end local p2           #k:I
    .local p1, k:I
    move p2, v0

    .line 1503
    .end local v0           #less:I
    .local p2, less:I
    goto/16 :goto_b6

    .line 1487
    .end local p2           #less:I
    .local v0, k:I
    .restart local v1       #less:I
    .local p0, a:[B
    .local p1, great:I
    :cond_152
    aget-byte p2, p0, p1

    if-ne p2, v7, :cond_169

    .line 1488
    aget-byte p2, p0, v1

    aput-byte p2, p0, v0

    .line 1489
    add-int/lit8 p2, v1, 0x1

    .end local v1           #less:I
    .restart local p2       #less:I
    aput-byte v7, p0, v1

    move v1, p2

    .line 1493
    .end local p2           #less:I
    .restart local v1       #less:I
    :goto_15f
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .local p2, great:I
    aput-byte v10, p0, p1

    move p1, p2

    .line 1479
    .end local p2           #great:I
    .restart local p1       #great:I
    :goto_164
    add-int/lit8 p2, v0, 0x1

    .end local v0           #k:I
    .local p2, k:I
    move v0, p2

    .end local p2           #k:I
    .restart local v0       #k:I
    move p2, p1

    .end local p1           #great:I
    .local p2, great:I
    goto :goto_138

    .line 1491
    .end local p2           #great:I
    .restart local p1       #great:I
    :cond_169
    aget-byte p2, p0, p1

    aput-byte p2, p0, v0

    goto :goto_15f

    .line 1494
    .local p1, ak:B
    .restart local p2       #great:I
    :cond_16e
    if-ne p1, v7, :cond_17b

    .line 1495
    aget-byte p1, p0, v1

    .end local p1           #ak:B
    aput-byte p1, p0, v0

    .line 1496
    add-int/lit8 p1, v1, 0x1

    .end local v1           #less:I
    .local p1, less:I
    aput-byte v7, p0, v1

    move v1, p1

    .end local p1           #less:I
    .restart local v1       #less:I
    move p1, p2

    .end local p2           #great:I
    .local p1, great:I
    goto :goto_164

    .local p1, ak:B
    .restart local p2       #great:I
    :cond_17b
    move p1, p2

    .end local p2           #great:I
    .local p1, great:I
    goto :goto_164

    .end local p1           #great:I
    .restart local p2       #great:I
    :cond_17d
    move p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    move p2, v0

    .end local v0           #k:I
    .local p2, k:I
    move v0, v1

    .end local v1           #less:I
    .local v0, less:I
    goto :goto_14a

    .end local p1           #great:I
    .local v0, great:I
    .restart local v1       #less:I
    .local p2, right:I
    :cond_181
    move p1, v0

    .end local v0           #great:I
    .restart local p1       #great:I
    goto :goto_12e

    .end local p1           #great:I
    .restart local v0       #great:I
    .local v1, k:I
    .restart local v2       #less:I
    :cond_183
    move p2, v1

    .end local v1           #k:I
    .local p2, k:I
    move p1, v0

    .end local v0           #great:I
    .restart local p1       #great:I
    move v0, v2

    .end local v2           #less:I
    .local v0, less:I
    goto :goto_14a

    .end local v0           #less:I
    .local v1, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    .local p1, left:I
    .local p2, right:I
    :cond_187
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .restart local v2       #less:I
    move v1, v3

    .end local v3           #k:I
    .local v1, k:I
    goto/16 :goto_90

    .end local v1           #k:I
    .local v0, ak:B
    .local v2, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    :cond_18c
    move v1, v2

    .end local v2           #great:I
    .local v1, great:I
    goto/16 :goto_85

    :cond_18f
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto/16 :goto_7a
.end method

.method private static dualPivotQuicksort([CII)V
    .registers 14
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 995
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x6

    .line 996
    .local v0, sixth:I
    add-int v5, p1, v0

    .line 997
    .local v5, e1:I
    sub-int v9, p2, v0

    .line 998
    .local v9, e5:I
    add-int v1, p1, p2

    ushr-int/lit8 v7, v1, 0x1

    .line 999
    .local v7, e3:I
    add-int v8, v7, v0

    .line 1000
    .local v8, e4:I
    sub-int v6, v7, v0

    .line 1003
    .local v6, e2:I
    aget-char v0, p0, v5

    .local v0, ae1:C
    aget-char v1, p0, v6

    .local v1, ae2:C
    aget-char v2, p0, v7

    .local v2, ae3:C
    aget-char v3, p0, v8

    .local v3, ae4:C
    aget-char v4, p0, v9

    .line 1005
    .local v4, ae5:C
    if-le v0, v1, :cond_21

    move v10, v0

    .local v10, t:C
    move v0, v1

    move v1, v10

    .line 1006
    .end local v10           #t:C
    :cond_21
    if-le v3, v4, :cond_26

    move v10, v3

    .restart local v10       #t:C
    move v3, v4

    move v4, v10

    .line 1007
    .end local v10           #t:C
    :cond_26
    if-le v0, v2, :cond_2b

    move v10, v0

    .restart local v10       #t:C
    move v0, v2

    move v2, v10

    .line 1008
    .end local v10           #t:C
    :cond_2b
    if-le v1, v2, :cond_30

    move v10, v1

    .restart local v10       #t:C
    move v1, v2

    move v2, v10

    .line 1009
    .end local v10           #t:C
    :cond_30
    if-le v0, v3, :cond_35

    move v10, v0

    .restart local v10       #t:C
    move v0, v3

    move v3, v10

    .line 1010
    .end local v10           #t:C
    :cond_35
    if-le v2, v3, :cond_3a

    move v10, v2

    .restart local v10       #t:C
    move v2, v3

    move v3, v10

    .line 1011
    .end local v10           #t:C
    :cond_3a
    if-le v1, v4, :cond_3f

    move v10, v1

    .restart local v10       #t:C
    move v1, v4

    move v4, v10

    .line 1012
    .end local v10           #t:C
    :cond_3f
    if-le v1, v2, :cond_44

    move v10, v1

    .restart local v10       #t:C
    move v1, v2

    move v2, v10

    .line 1013
    .end local v10           #t:C
    :cond_44
    if-le v3, v4, :cond_49

    move v10, v3

    .restart local v10       #t:C
    move v3, v4

    move v4, v10

    .line 1015
    .end local v10           #t:C
    :cond_49
    aput-char v0, p0, v5

    aput-char v2, p0, v7

    aput-char v4, p0, v9

    .line 1028
    move v7, v1

    .local v7, pivot1:C
    aget-char v0, p0, p1

    .end local v0           #ae1:C
    aput-char v0, p0, v6

    .line 1029
    move v10, v3

    .local v10, pivot2:C
    aget-char v0, p0, p2

    aput-char v0, p0, v8

    .line 1032
    add-int/lit8 v2, p1, 0x1

    .line 1033
    .local v2, less:I
    const/4 v0, 0x1

    sub-int v0, p2, v0

    .line 1035
    .local v0, great:I
    if-eq v7, v10, :cond_80

    const/4 v1, 0x1

    move v8, v1

    .line 1037
    .end local v1           #ae2:C
    .local v8, pivotsDiffer:Z
    :goto_62
    if-eqz v8, :cond_db

    .line 1058
    move v1, v2

    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .local v3, k:I
    move v6, v2

    .end local v2           #less:I
    .local v6, less:I
    move v1, v0

    .end local v0           #great:I
    .end local v4           #ae5:C
    .local v1, great:I
    :goto_68
    if-gt v3, v1, :cond_d7

    .line 1059
    aget-char v0, p0, v3

    .line 1060
    .local v0, ak:C
    if-ge v0, v7, :cond_83

    .line 1061
    if-eq v3, v6, :cond_76

    .line 1062
    aget-char v2, p0, v6

    aput-char v2, p0, v3

    .line 1063
    aput-char v0, p0, v6

    .line 1065
    :cond_76
    add-int/lit8 v0, v6, 0x1

    .end local v6           #less:I
    .local v0, less:I
    move v2, v0

    .end local v0           #less:I
    .restart local v2       #less:I
    move v0, v1

    .line 1058
    .end local v1           #great:I
    .local v0, great:I
    :goto_7a
    add-int/lit8 v1, v3, 0x1

    .end local v3           #k:I
    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .restart local v3       #k:I
    move v6, v2

    .end local v2           #less:I
    .restart local v6       #less:I
    move v1, v0

    .end local v0           #great:I
    .local v1, great:I
    goto :goto_68

    .line 1035
    .restart local v0       #great:I
    .local v1, ae2:C
    .restart local v2       #less:I
    .local v3, ae4:C
    .restart local v4       #ae5:C
    .local v6, e2:I
    .local v8, e4:I
    :cond_80
    const/4 v1, 0x0

    move v8, v1

    goto :goto_62

    .line 1066
    .end local v2           #less:I
    .end local v4           #ae5:C
    .local v0, ak:C
    .local v1, great:I
    .local v3, k:I
    .local v6, less:I
    .local v8, pivotsDiffer:Z
    :cond_83
    if-le v0, v10, :cond_18f

    .line 1067
    :goto_85
    aget-char v2, p0, v1

    if-le v2, v10, :cond_b7

    .line 1068
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    if-ne v1, v3, :cond_18c

    move v1, v3

    .end local v3           #k:I
    .local v1, k:I
    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .line 1137
    .end local v6           #less:I
    .local v2, less:I
    :goto_90
    const/4 v3, 0x1

    sub-int v3, v2, v3

    aget-char v3, p0, v3

    aput-char v3, p0, p1

    const/4 v3, 0x1

    sub-int v3, v2, v3

    aput-char v7, p0, v3

    .line 1138
    add-int/lit8 v3, v0, 0x1

    aget-char v3, p0, v3

    aput-char v3, p0, p2

    add-int/lit8 v3, v0, 0x1

    aput-char v10, p0, v3

    .line 1141
    const/4 v3, 0x2

    sub-int v3, v2, v3

    invoke-static {p0, p1, v3}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    .line 1142
    add-int/lit8 p1, v0, 0x2

    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    .line 1148
    .end local p1
    if-nez v8, :cond_121

    move p1, v1

    .end local v1           #k:I
    .local p1, k:I
    move p0, v0

    .end local v0           #great:I
    .local p0, great:I
    move p2, v2

    .line 1208
    .end local v2           #less:I
    .local p2, less:I
    :goto_b6
    return-void

    .line 1072
    .local v0, ak:C
    .local v1, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    .local p0, a:[C
    .local p1, left:I
    .local p2, right:I
    :cond_b7
    aget-char v2, p0, v1

    if-ge v2, v7, :cond_cc

    .line 1073
    aget-char v2, p0, v6

    aput-char v2, p0, v3

    .line 1074
    add-int/lit8 v4, v6, 0x1

    .end local v6           #less:I
    .local v4, less:I
    aget-char v2, p0, v1

    aput-char v2, p0, v6

    .line 1075
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput-char v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v4

    .end local v4           #less:I
    .local v2, less:I
    goto :goto_7a

    .line 1077
    .end local v2           #less:I
    .local v0, ak:C
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_cc
    aget-char v2, p0, v1

    aput-char v2, p0, v3

    .line 1078
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput-char v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto :goto_7a

    .end local v0           #great:I
    .end local v2           #less:I
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_d7
    move v0, v1

    .end local v1           #great:I
    .restart local v0       #great:I
    move v2, v6

    .end local v6           #less:I
    .restart local v2       #less:I
    move v1, v3

    .line 1058
    .end local v3           #k:I
    .local v1, k:I
    goto :goto_90

    .line 1103
    .end local v1           #k:I
    .local v3, ae4:C
    .local v4, ae5:C
    .local v6, e2:I
    :cond_db
    move v1, v2

    .restart local v1       #k:I
    move v3, v1

    .end local v1           #k:I
    .local v3, k:I
    move v6, v2

    .end local v2           #less:I
    .local v6, less:I
    move v1, v0

    .end local v0           #great:I
    .end local v4           #ae5:C
    .local v1, great:I
    :goto_df
    if-gt v3, v1, :cond_187

    .line 1104
    aget-char v0, p0, v3

    .line 1105
    .local v0, ak:C
    if-ne v0, v7, :cond_ed

    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .line 1103
    .end local v6           #less:I
    .restart local v2       #less:I
    :goto_e7
    add-int/lit8 v1, v3, 0x1

    .end local v3           #k:I
    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .restart local v3       #k:I
    move v6, v2

    .end local v2           #less:I
    .restart local v6       #less:I
    move v1, v0

    .end local v0           #great:I
    .local v1, great:I
    goto :goto_df

    .line 1108
    .local v0, ak:C
    :cond_ed
    if-ge v0, v7, :cond_fc

    .line 1109
    if-eq v3, v6, :cond_f7

    .line 1110
    aget-char v2, p0, v6

    aput-char v2, p0, v3

    .line 1111
    aput-char v0, p0, v6

    .line 1113
    :cond_f7
    add-int/lit8 v0, v6, 0x1

    .end local v6           #less:I
    .local v0, less:I
    move v2, v0

    .end local v0           #less:I
    .restart local v2       #less:I
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    goto :goto_e7

    .line 1121
    .end local v2           #less:I
    .local v0, ak:C
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_fc
    :goto_fc
    aget-char v2, p0, v1

    if-le v2, v7, :cond_103

    .line 1122
    add-int/lit8 v1, v1, -0x1

    goto :goto_fc

    .line 1124
    :cond_103
    aget-char v2, p0, v1

    if-ge v2, v7, :cond_118

    .line 1125
    aget-char v2, p0, v6

    aput-char v2, p0, v3

    .line 1126
    add-int/lit8 v4, v6, 0x1

    .end local v6           #less:I
    .local v4, less:I
    aget-char v2, p0, v1

    aput-char v2, p0, v6

    .line 1127
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput-char v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v4

    .end local v4           #less:I
    .local v2, less:I
    goto :goto_e7

    .line 1129
    .end local v2           #less:I
    .local v0, ak:C
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_118
    aput-char v7, p0, v3

    .line 1130
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput-char v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto :goto_e7

    .line 1156
    .end local v3           #k:I
    .end local p1           #left:I
    .local v1, k:I
    :cond_121
    if-ge v2, v5, :cond_183

    if-le v0, v9, :cond_183

    move v1, v2

    .line 1157
    .end local v2           #less:I
    .local v1, less:I
    :goto_126
    aget-char p1, p0, v1

    if-ne p1, v7, :cond_181

    .line 1158
    add-int/lit8 p1, v1, 0x1

    .end local v1           #less:I
    .local p1, less:I
    move v1, p1

    .end local p1           #less:I
    .restart local v1       #less:I
    goto :goto_126

    .line 1160
    .end local v0           #great:I
    .end local p2           #right:I
    .local p1, great:I
    :goto_12e
    aget-char p2, p0, p1

    if-ne p2, v10, :cond_135

    .line 1161
    add-int/lit8 p1, p1, -0x1

    goto :goto_12e

    .line 1184
    :cond_135
    move p2, v1

    .local p2, k:I
    move v0, p2

    .end local p2           #k:I
    .local v0, k:I
    move p2, p1

    .end local p1           #great:I
    .local p2, great:I
    :goto_138
    if-gt v0, p2, :cond_17d

    .line 1185
    aget-char p1, p0, v0

    .line 1186
    .local p1, ak:C
    if-ne p1, v10, :cond_16e

    .end local p1           #ak:C
    :cond_13e
    move p1, p2

    .line 1187
    .end local p2           #great:I
    .local p1, great:I
    aget-char p2, p0, p1

    if-ne p2, v10, :cond_152

    .line 1188
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .restart local p2       #great:I
    if-ne p1, v0, :cond_13e

    move p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    move p2, v0

    .end local v0           #k:I
    .local p2, k:I
    move v0, v1

    .line 1207
    .end local v1           #less:I
    .local v0, less:I
    :goto_14a
    invoke-static {p0, v0, p1}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    move p0, p1

    .end local p1           #great:I
    .local p0, great:I
    move p1, p2

    .end local p2           #k:I
    .local p1, k:I
    move p2, v0

    .line 1208
    .end local v0           #less:I
    .local p2, less:I
    goto/16 :goto_b6

    .line 1192
    .end local p2           #less:I
    .local v0, k:I
    .restart local v1       #less:I
    .local p0, a:[C
    .local p1, great:I
    :cond_152
    aget-char p2, p0, p1

    if-ne p2, v7, :cond_169

    .line 1193
    aget-char p2, p0, v1

    aput-char p2, p0, v0

    .line 1194
    add-int/lit8 p2, v1, 0x1

    .end local v1           #less:I
    .restart local p2       #less:I
    aput-char v7, p0, v1

    move v1, p2

    .line 1198
    .end local p2           #less:I
    .restart local v1       #less:I
    :goto_15f
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .local p2, great:I
    aput-char v10, p0, p1

    move p1, p2

    .line 1184
    .end local p2           #great:I
    .restart local p1       #great:I
    :goto_164
    add-int/lit8 p2, v0, 0x1

    .end local v0           #k:I
    .local p2, k:I
    move v0, p2

    .end local p2           #k:I
    .restart local v0       #k:I
    move p2, p1

    .end local p1           #great:I
    .local p2, great:I
    goto :goto_138

    .line 1196
    .end local p2           #great:I
    .restart local p1       #great:I
    :cond_169
    aget-char p2, p0, p1

    aput-char p2, p0, v0

    goto :goto_15f

    .line 1199
    .local p1, ak:C
    .restart local p2       #great:I
    :cond_16e
    if-ne p1, v7, :cond_17b

    .line 1200
    aget-char p1, p0, v1

    .end local p1           #ak:C
    aput-char p1, p0, v0

    .line 1201
    add-int/lit8 p1, v1, 0x1

    .end local v1           #less:I
    .local p1, less:I
    aput-char v7, p0, v1

    move v1, p1

    .end local p1           #less:I
    .restart local v1       #less:I
    move p1, p2

    .end local p2           #great:I
    .local p1, great:I
    goto :goto_164

    .local p1, ak:C
    .restart local p2       #great:I
    :cond_17b
    move p1, p2

    .end local p2           #great:I
    .local p1, great:I
    goto :goto_164

    .end local p1           #great:I
    .restart local p2       #great:I
    :cond_17d
    move p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    move p2, v0

    .end local v0           #k:I
    .local p2, k:I
    move v0, v1

    .end local v1           #less:I
    .local v0, less:I
    goto :goto_14a

    .end local p1           #great:I
    .local v0, great:I
    .restart local v1       #less:I
    .local p2, right:I
    :cond_181
    move p1, v0

    .end local v0           #great:I
    .restart local p1       #great:I
    goto :goto_12e

    .end local p1           #great:I
    .restart local v0       #great:I
    .local v1, k:I
    .restart local v2       #less:I
    :cond_183
    move p2, v1

    .end local v1           #k:I
    .local p2, k:I
    move p1, v0

    .end local v0           #great:I
    .restart local p1       #great:I
    move v0, v2

    .end local v2           #less:I
    .local v0, less:I
    goto :goto_14a

    .end local v0           #less:I
    .local v1, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    .local p1, left:I
    .local p2, right:I
    :cond_187
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .restart local v2       #less:I
    move v1, v3

    .end local v3           #k:I
    .local v1, k:I
    goto/16 :goto_90

    .end local v1           #k:I
    .local v0, ak:C
    .local v2, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    :cond_18c
    move v1, v2

    .end local v2           #great:I
    .local v1, great:I
    goto/16 :goto_85

    :cond_18f
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto/16 :goto_7a
.end method

.method private static dualPivotQuicksort([DII)V
    .registers 24
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 2036
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x6

    .line 2037
    .local v3, sixth:I
    add-int v13, p1, v3

    .line 2038
    .local v13, e1:I
    sub-int v17, p2, v3

    .line 2039
    .local v17, e5:I
    add-int v4, p1, p2

    ushr-int/lit8 v15, v4, 0x1

    .line 2040
    .local v15, e3:I
    add-int v16, v15, v3

    .line 2041
    .local v16, e4:I
    sub-int v14, v15, v3

    .line 2044
    .local v14, e2:I
    aget-wide v3, p0, v13

    .local v3, ae1:D
    aget-wide v5, p0, v14

    .local v5, ae2:D
    aget-wide v7, p0, v15

    .local v7, ae3:D
    aget-wide v9, p0, v16

    .local v9, ae4:D
    aget-wide v11, p0, v17

    .line 2046
    .local v11, ae5:D
    cmpl-double v18, v3, v5

    if-lez v18, :cond_25

    move-wide/from16 v18, v3

    .local v18, t:D
    move-wide v3, v5

    move-wide/from16 v5, v18

    .line 2047
    .end local v18           #t:D
    :cond_25
    cmpl-double v18, v9, v11

    if-lez v18, :cond_2e

    move-wide/from16 v18, v9

    .restart local v18       #t:D
    move-wide v9, v11

    move-wide/from16 v11, v18

    .line 2048
    .end local v18           #t:D
    :cond_2e
    cmpl-double v18, v3, v7

    if-lez v18, :cond_37

    move-wide/from16 v18, v3

    .restart local v18       #t:D
    move-wide v3, v7

    move-wide/from16 v7, v18

    .line 2049
    .end local v18           #t:D
    :cond_37
    cmpl-double v18, v5, v7

    if-lez v18, :cond_40

    move-wide/from16 v18, v5

    .restart local v18       #t:D
    move-wide v5, v7

    move-wide/from16 v7, v18

    .line 2050
    .end local v18           #t:D
    :cond_40
    cmpl-double v18, v3, v9

    if-lez v18, :cond_49

    move-wide/from16 v18, v3

    .restart local v18       #t:D
    move-wide v3, v9

    move-wide/from16 v9, v18

    .line 2051
    .end local v18           #t:D
    :cond_49
    cmpl-double v18, v7, v9

    if-lez v18, :cond_52

    move-wide/from16 v18, v7

    .restart local v18       #t:D
    move-wide v7, v9

    move-wide/from16 v9, v18

    .line 2052
    .end local v18           #t:D
    :cond_52
    cmpl-double v18, v5, v11

    if-lez v18, :cond_5b

    move-wide/from16 v18, v5

    .restart local v18       #t:D
    move-wide v5, v11

    move-wide/from16 v11, v18

    .line 2053
    .end local v18           #t:D
    :cond_5b
    cmpl-double v18, v5, v7

    if-lez v18, :cond_64

    move-wide/from16 v18, v5

    .restart local v18       #t:D
    move-wide v5, v7

    move-wide/from16 v7, v18

    .line 2054
    .end local v18           #t:D
    :cond_64
    cmpl-double v18, v9, v11

    if-lez v18, :cond_6d

    move-wide/from16 v18, v9

    .restart local v18       #t:D
    move-wide v9, v11

    move-wide/from16 v11, v18

    .line 2056
    .end local v18           #t:D
    :cond_6d
    aput-wide v3, p0, v13

    aput-wide v7, p0, v15

    aput-wide v11, p0, v17

    .line 2069
    move-wide v11, v5

    .local v11, pivot1:D
    aget-wide v3, p0, p1

    .end local v3           #ae1:D
    aput-wide v3, p0, v14

    .line 2070
    move-wide v14, v9

    .end local v15           #e3:I
    .local v14, pivot2:D
    aget-wide v3, p0, p2

    aput-wide v3, p0, v16

    .line 2073
    add-int/lit8 v5, p1, 0x1

    .line 2074
    .local v5, less:I
    const/4 v3, 0x1

    sub-int v3, p2, v3

    .line 2076
    .local v3, great:I
    cmpl-double v4, v11, v14

    if-eqz v4, :cond_ab

    const/4 v4, 0x1

    move v10, v4

    .line 2078
    .end local v9           #ae4:D
    .local v10, pivotsDiffer:Z
    :goto_88
    if-eqz v10, :cond_114

    .line 2099
    move v4, v5

    .local v4, k:I
    move v7, v4

    .end local v4           #k:I
    .local v7, k:I
    move v9, v5

    .end local v5           #less:I
    .local v9, less:I
    move v5, v3

    .end local v3           #great:I
    .local v5, great:I
    :goto_8e
    if-gt v7, v5, :cond_110

    .line 2100
    aget-wide v3, p0, v7

    .line 2101
    .local v3, ak:D
    cmpg-double v6, v3, v11

    if-gez v6, :cond_ae

    .line 2102
    if-eq v7, v9, :cond_9e

    .line 2103
    aget-wide v18, p0, v9

    aput-wide v18, p0, v7

    .line 2104
    aput-wide v3, p0, v9

    .line 2106
    :cond_9e
    add-int/lit8 v3, v9, 0x1

    .end local v9           #less:I
    .local v3, less:I
    move/from16 v20, v5

    .end local v5           #great:I
    .local v20, great:I
    move v5, v3

    .end local v3           #less:I
    .local v5, less:I
    move/from16 v3, v20

    .line 2099
    .end local v20           #great:I
    .local v3, great:I
    :goto_a5
    add-int/lit8 v4, v7, 0x1

    .end local v7           #k:I
    .restart local v4       #k:I
    move v7, v4

    .end local v4           #k:I
    .restart local v7       #k:I
    move v9, v5

    .end local v5           #less:I
    .restart local v9       #less:I
    move v5, v3

    .end local v3           #great:I
    .local v5, great:I
    goto :goto_8e

    .line 2076
    .end local v10           #pivotsDiffer:Z
    .restart local v3       #great:I
    .local v5, less:I
    .local v7, ae3:D
    .local v9, ae4:D
    :cond_ab
    const/4 v4, 0x0

    move v10, v4

    goto :goto_88

    .line 2107
    .local v3, ak:D
    .local v5, great:I
    .local v7, k:I
    .local v9, less:I
    .restart local v10       #pivotsDiffer:Z
    :cond_ae
    cmpl-double v6, v3, v14

    if-lez v6, :cond_204

    .line 2108
    :goto_b2
    aget-wide v18, p0, v5

    cmpl-double v6, v18, v14

    if-lez v6, :cond_ee

    .line 2109
    add-int/lit8 v6, v5, -0x1

    .end local v5           #great:I
    .local v6, great:I
    if-ne v5, v7, :cond_201

    move v4, v7

    .end local v3           #ak:D
    .end local v7           #k:I
    .restart local v4       #k:I
    move v3, v6

    .end local v6           #great:I
    .local v3, great:I
    move v5, v9

    .line 2178
    .end local v9           #less:I
    .local v5, less:I
    :goto_bf
    const/4 v6, 0x1

    sub-int v6, v5, v6

    aget-wide v6, p0, v6

    aput-wide v6, p0, p1

    const/4 v6, 0x1

    sub-int v6, v5, v6

    aput-wide v11, p0, v6

    .line 2179
    add-int/lit8 v6, v3, 0x1

    aget-wide v6, p0, v6

    aput-wide v6, p0, p2

    add-int/lit8 v6, v3, 0x1

    aput-wide v14, p0, v6

    .line 2182
    const/4 v6, 0x2

    sub-int v6, v5, v6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v6

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    .line 2183
    add-int/lit8 p1, v3, 0x2

    invoke-static/range {p0 .. p2}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    .line 2189
    .end local p1
    if-nez v10, :cond_165

    move/from16 p1, v4

    .end local v4           #k:I
    .local p1, k:I
    move/from16 p0, v3

    .end local v3           #great:I
    .local p0, great:I
    move/from16 p2, v5

    .line 2249
    .end local v5           #less:I
    .local p2, less:I
    :goto_ed
    return-void

    .line 2113
    .local v3, ak:D
    .local v5, great:I
    .restart local v7       #k:I
    .restart local v9       #less:I
    .local p0, a:[D
    .local p1, left:I
    .local p2, right:I
    :cond_ee
    aget-wide v18, p0, v5

    cmpg-double v6, v18, v11

    if-gez v6, :cond_105

    .line 2114
    aget-wide v18, p0, v9

    aput-wide v18, p0, v7

    .line 2115
    add-int/lit8 v8, v9, 0x1

    .end local v9           #less:I
    .local v8, less:I
    aget-wide v18, p0, v5

    aput-wide v18, p0, v9

    .line 2116
    add-int/lit8 v6, v5, -0x1

    .end local v5           #great:I
    .restart local v6       #great:I
    aput-wide v3, p0, v5

    move v3, v6

    .end local v6           #great:I
    .local v3, great:I
    move v5, v8

    .end local v8           #less:I
    .local v5, less:I
    goto :goto_a5

    .line 2118
    .local v3, ak:D
    .local v5, great:I
    .restart local v9       #less:I
    :cond_105
    aget-wide v18, p0, v5

    aput-wide v18, p0, v7

    .line 2119
    add-int/lit8 v6, v5, -0x1

    .end local v5           #great:I
    .restart local v6       #great:I
    aput-wide v3, p0, v5

    move v3, v6

    .end local v6           #great:I
    .local v3, great:I
    move v5, v9

    .end local v9           #less:I
    .local v5, less:I
    goto :goto_a5

    .end local v3           #great:I
    .local v5, great:I
    .restart local v9       #less:I
    :cond_110
    move v4, v7

    .end local v7           #k:I
    .restart local v4       #k:I
    move v3, v5

    .end local v5           #great:I
    .restart local v3       #great:I
    move v5, v9

    .line 2099
    .end local v9           #less:I
    .local v5, less:I
    goto :goto_bf

    .line 2144
    .end local v4           #k:I
    .local v7, ae3:D
    :cond_114
    move v4, v5

    .restart local v4       #k:I
    move v7, v4

    .end local v4           #k:I
    .local v7, k:I
    move v9, v5

    .end local v5           #less:I
    .restart local v9       #less:I
    move v5, v3

    .end local v3           #great:I
    .local v5, great:I
    :goto_118
    if-gt v7, v5, :cond_1fc

    .line 2145
    aget-wide v3, p0, v7

    .line 2146
    .local v3, ak:D
    cmpl-double v6, v3, v11

    if-nez v6, :cond_128

    move v3, v5

    .end local v5           #great:I
    .local v3, great:I
    move v5, v9

    .line 2144
    .end local v9           #less:I
    .local v5, less:I
    :goto_122
    add-int/lit8 v4, v7, 0x1

    .end local v7           #k:I
    .restart local v4       #k:I
    move v7, v4

    .end local v4           #k:I
    .restart local v7       #k:I
    move v9, v5

    .end local v5           #less:I
    .restart local v9       #less:I
    move v5, v3

    .end local v3           #great:I
    .local v5, great:I
    goto :goto_118

    .line 2149
    .local v3, ak:D
    :cond_128
    cmpg-double v6, v3, v11

    if-gez v6, :cond_13c

    .line 2150
    if-eq v7, v9, :cond_134

    .line 2151
    aget-wide v18, p0, v9

    aput-wide v18, p0, v7

    .line 2152
    aput-wide v3, p0, v9

    .line 2154
    :cond_134
    add-int/lit8 v3, v9, 0x1

    .end local v9           #less:I
    .local v3, less:I
    move/from16 v20, v5

    .end local v5           #great:I
    .restart local v20       #great:I
    move v5, v3

    .end local v3           #less:I
    .local v5, less:I
    move/from16 v3, v20

    .end local v20           #great:I
    .local v3, great:I
    goto :goto_122

    .line 2162
    .local v3, ak:D
    .local v5, great:I
    .restart local v9       #less:I
    :cond_13c
    :goto_13c
    aget-wide v18, p0, v5

    cmpl-double v6, v18, v11

    if-lez v6, :cond_145

    .line 2163
    add-int/lit8 v5, v5, -0x1

    goto :goto_13c

    .line 2165
    :cond_145
    aget-wide v18, p0, v5

    cmpg-double v6, v18, v11

    if-gez v6, :cond_15c

    .line 2166
    aget-wide v18, p0, v9

    aput-wide v18, p0, v7

    .line 2167
    add-int/lit8 v8, v9, 0x1

    .end local v9           #less:I
    .restart local v8       #less:I
    aget-wide v18, p0, v5

    aput-wide v18, p0, v9

    .line 2168
    add-int/lit8 v6, v5, -0x1

    .end local v5           #great:I
    .restart local v6       #great:I
    aput-wide v3, p0, v5

    move v3, v6

    .end local v6           #great:I
    .local v3, great:I
    move v5, v8

    .end local v8           #less:I
    .local v5, less:I
    goto :goto_122

    .line 2170
    .local v3, ak:D
    .local v5, great:I
    .restart local v9       #less:I
    :cond_15c
    aput-wide v11, p0, v7

    .line 2171
    add-int/lit8 v6, v5, -0x1

    .end local v5           #great:I
    .restart local v6       #great:I
    aput-wide v3, p0, v5

    move v3, v6

    .end local v6           #great:I
    .local v3, great:I
    move v5, v9

    .end local v9           #less:I
    .local v5, less:I
    goto :goto_122

    .line 2197
    .end local v7           #k:I
    .end local p1           #left:I
    .restart local v4       #k:I
    :cond_165
    if-ge v5, v13, :cond_1f2

    move v0, v3

    move/from16 v1, v17

    if-le v0, v1, :cond_1f2

    move v4, v5

    .line 2198
    .end local v5           #less:I
    .local v4, less:I
    :goto_16d
    aget-wide p1, p0, v4

    cmpl-double p1, p1, v11

    if-nez p1, :cond_1f8

    .line 2199
    add-int/lit8 p1, v4, 0x1

    .end local v4           #less:I
    .local p1, less:I
    move/from16 v4, p1

    .end local p1           #less:I
    .restart local v4       #less:I
    goto :goto_16d

    .line 2201
    .end local v3           #great:I
    .end local p2           #right:I
    .local p1, great:I
    :goto_178
    aget-wide v5, p0, p1

    cmpl-double p2, v5, v14

    if-nez p2, :cond_181

    .line 2202
    add-int/lit8 p1, p1, -0x1

    goto :goto_178

    .line 2225
    :cond_181
    move/from16 p2, v4

    .local p2, k:I
    move/from16 v3, p1

    .end local p1           #great:I
    .restart local v3       #great:I
    move v5, v4

    .end local v4           #less:I
    .restart local v5       #less:I
    move/from16 v4, p2

    .end local p2           #k:I
    .local v4, k:I
    :goto_188
    if-gt v4, v3, :cond_1f2

    .line 2226
    aget-wide p1, p0, v4

    .line 2227
    .local p1, ak:D
    cmpl-double v6, p1, v14

    if-nez v6, :cond_1d8

    move/from16 p1, v3

    .line 2228
    .end local v3           #great:I
    .local p1, great:I
    :goto_192
    aget-wide v6, p0, p1

    cmpl-double p2, v6, v14

    if-nez p2, :cond_1b4

    .line 2229
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .local p2, great:I
    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_1ef

    move/from16 p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    move v3, v5

    .end local v5           #less:I
    .local v3, less:I
    move/from16 p2, v4

    .line 2248
    .end local v4           #k:I
    .local p2, k:I
    :goto_1a4
    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    move/from16 p0, p1

    .end local p1           #great:I
    .local p0, great:I
    move/from16 p1, p2

    .end local p2           #k:I
    .local p1, k:I
    move/from16 p2, v3

    .line 2249
    .end local v3           #less:I
    .local p2, less:I
    goto/16 :goto_ed

    .line 2233
    .end local p2           #less:I
    .restart local v4       #k:I
    .restart local v5       #less:I
    .local p0, a:[D
    .local p1, great:I
    :cond_1b4
    aget-wide v6, p0, p1

    cmpl-double p2, v6, v11

    if-nez p2, :cond_1d2

    .line 2234
    aget-wide v6, p0, v5

    aput-wide v6, p0, v4

    .line 2235
    add-int/lit8 p2, v5, 0x1

    .end local v5           #less:I
    .restart local p2       #less:I
    aput-wide v11, p0, v5

    move/from16 v3, p2

    .line 2239
    .end local p2           #less:I
    .restart local v3       #less:I
    :goto_1c4
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .local p2, great:I
    aput-wide v14, p0, p1

    move/from16 p1, p2

    .line 2225
    .end local p2           #great:I
    .restart local p1       #great:I
    :goto_1ca
    add-int/lit8 p2, v4, 0x1

    .end local v4           #k:I
    .local p2, k:I
    move/from16 v4, p2

    .end local p2           #k:I
    .restart local v4       #k:I
    move v5, v3

    .end local v3           #less:I
    .restart local v5       #less:I
    move/from16 v3, p1

    .end local p1           #great:I
    .local v3, great:I
    goto :goto_188

    .line 2237
    .end local v3           #great:I
    .restart local p1       #great:I
    :cond_1d2
    aget-wide v6, p0, p1

    aput-wide v6, p0, v4

    move v3, v5

    .end local v5           #less:I
    .local v3, less:I
    goto :goto_1c4

    .line 2240
    .local v3, great:I
    .restart local v5       #less:I
    .local p1, ak:D
    :cond_1d8
    cmpl-double p1, p1, v11

    if-nez p1, :cond_1eb

    .line 2241
    .end local p1           #ak:D
    aget-wide p1, p0, v5

    aput-wide p1, p0, v4

    .line 2242
    add-int/lit8 p1, v5, 0x1

    .end local v5           #less:I
    .local p1, less:I
    aput-wide v11, p0, v5

    move/from16 v20, v3

    .end local v3           #great:I
    .restart local v20       #great:I
    move/from16 v3, p1

    .end local p1           #less:I
    .local v3, less:I
    move/from16 p1, v20

    .end local v20           #great:I
    .local p1, great:I
    goto :goto_1ca

    .end local p1           #great:I
    .local v3, great:I
    .restart local v5       #less:I
    :cond_1eb
    move/from16 p1, v3

    .end local v3           #great:I
    .restart local p1       #great:I
    move v3, v5

    .end local v5           #less:I
    .local v3, less:I
    goto :goto_1ca

    .end local v3           #less:I
    .end local p1           #great:I
    .restart local v5       #less:I
    .local p2, great:I
    :cond_1ef
    move/from16 p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    goto :goto_192

    .end local p1           #great:I
    .local v3, great:I
    :cond_1f2
    move/from16 p2, v4

    .end local v4           #k:I
    .local p2, k:I
    move/from16 p1, v3

    .end local v3           #great:I
    .restart local p1       #great:I
    move v3, v5

    .end local v5           #less:I
    .local v3, less:I
    goto :goto_1a4

    .end local p1           #great:I
    .local v3, great:I
    .local v4, less:I
    .local p2, right:I
    :cond_1f8
    move/from16 p1, v3

    .end local v3           #great:I
    .restart local p1       #great:I
    goto/16 :goto_178

    .end local v4           #less:I
    .local v5, great:I
    .restart local v7       #k:I
    .restart local v9       #less:I
    .local p1, left:I
    :cond_1fc
    move v4, v7

    .end local v7           #k:I
    .local v4, k:I
    move v3, v5

    .end local v5           #great:I
    .restart local v3       #great:I
    move v5, v9

    .end local v9           #less:I
    .local v5, less:I
    goto/16 :goto_bf

    .end local v4           #k:I
    .end local v5           #less:I
    .local v3, ak:D
    .restart local v6       #great:I
    .restart local v7       #k:I
    .restart local v9       #less:I
    :cond_201
    move v5, v6

    .end local v6           #great:I
    .local v5, great:I
    goto/16 :goto_b2

    :cond_204
    move v3, v5

    .end local v5           #great:I
    .local v3, great:I
    move v5, v9

    .end local v9           #less:I
    .local v5, less:I
    goto/16 :goto_a5
.end method

.method private static dualPivotQuicksort([FII)V
    .registers 14
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1663
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x6

    .line 1664
    .local v0, sixth:I
    add-int v5, p1, v0

    .line 1665
    .local v5, e1:I
    sub-int v9, p2, v0

    .line 1666
    .local v9, e5:I
    add-int v1, p1, p2

    ushr-int/lit8 v7, v1, 0x1

    .line 1667
    .local v7, e3:I
    add-int v8, v7, v0

    .line 1668
    .local v8, e4:I
    sub-int v6, v7, v0

    .line 1671
    .local v6, e2:I
    aget v0, p0, v5

    .local v0, ae1:F
    aget v1, p0, v6

    .local v1, ae2:F
    aget v2, p0, v7

    .local v2, ae3:F
    aget v3, p0, v8

    .local v3, ae4:F
    aget v4, p0, v9

    .line 1673
    .local v4, ae5:F
    cmpl-float v10, v0, v1

    if-lez v10, :cond_23

    move v10, v0

    .local v10, t:F
    move v0, v1

    move v1, v10

    .line 1674
    .end local v10           #t:F
    :cond_23
    cmpl-float v10, v3, v4

    if-lez v10, :cond_2a

    move v10, v3

    .restart local v10       #t:F
    move v3, v4

    move v4, v10

    .line 1675
    .end local v10           #t:F
    :cond_2a
    cmpl-float v10, v0, v2

    if-lez v10, :cond_31

    move v10, v0

    .restart local v10       #t:F
    move v0, v2

    move v2, v10

    .line 1676
    .end local v10           #t:F
    :cond_31
    cmpl-float v10, v1, v2

    if-lez v10, :cond_38

    move v10, v1

    .restart local v10       #t:F
    move v1, v2

    move v2, v10

    .line 1677
    .end local v10           #t:F
    :cond_38
    cmpl-float v10, v0, v3

    if-lez v10, :cond_3f

    move v10, v0

    .restart local v10       #t:F
    move v0, v3

    move v3, v10

    .line 1678
    .end local v10           #t:F
    :cond_3f
    cmpl-float v10, v2, v3

    if-lez v10, :cond_46

    move v10, v2

    .restart local v10       #t:F
    move v2, v3

    move v3, v10

    .line 1679
    .end local v10           #t:F
    :cond_46
    cmpl-float v10, v1, v4

    if-lez v10, :cond_4d

    move v10, v1

    .restart local v10       #t:F
    move v1, v4

    move v4, v10

    .line 1680
    .end local v10           #t:F
    :cond_4d
    cmpl-float v10, v1, v2

    if-lez v10, :cond_54

    move v10, v1

    .restart local v10       #t:F
    move v1, v2

    move v2, v10

    .line 1681
    .end local v10           #t:F
    :cond_54
    cmpl-float v10, v3, v4

    if-lez v10, :cond_5b

    move v10, v3

    .restart local v10       #t:F
    move v3, v4

    move v4, v10

    .line 1683
    .end local v10           #t:F
    :cond_5b
    aput v0, p0, v5

    aput v2, p0, v7

    aput v4, p0, v9

    .line 1696
    move v7, v1

    .local v7, pivot1:F
    aget v0, p0, p1

    .end local v0           #ae1:F
    aput v0, p0, v6

    .line 1697
    move v10, v3

    .local v10, pivot2:F
    aget v0, p0, p2

    aput v0, p0, v8

    .line 1700
    add-int/lit8 v2, p1, 0x1

    .line 1701
    .local v2, less:I
    const/4 v0, 0x1

    sub-int v0, p2, v0

    .line 1703
    .local v0, great:I
    cmpl-float v1, v7, v10

    if-eqz v1, :cond_96

    .end local v1           #ae2:F
    const/4 v1, 0x1

    move v8, v1

    .line 1705
    .local v8, pivotsDiffer:Z
    :goto_76
    if-eqz v8, :cond_f7

    .line 1726
    move v1, v2

    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .local v3, k:I
    move v6, v2

    .end local v2           #less:I
    .local v6, less:I
    move v1, v0

    .end local v0           #great:I
    .end local v4           #ae5:F
    .local v1, great:I
    :goto_7c
    if-gt v3, v1, :cond_f3

    .line 1727
    aget v0, p0, v3

    .line 1728
    .local v0, ak:F
    cmpg-float v2, v0, v7

    if-gez v2, :cond_99

    .line 1729
    if-eq v3, v6, :cond_8c

    .line 1730
    aget v2, p0, v6

    aput v2, p0, v3

    .line 1731
    aput v0, p0, v6

    .line 1733
    :cond_8c
    add-int/lit8 v0, v6, 0x1

    .end local v6           #less:I
    .local v0, less:I
    move v2, v0

    .end local v0           #less:I
    .restart local v2       #less:I
    move v0, v1

    .line 1726
    .end local v1           #great:I
    .local v0, great:I
    :goto_90
    add-int/lit8 v1, v3, 0x1

    .end local v3           #k:I
    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .restart local v3       #k:I
    move v6, v2

    .end local v2           #less:I
    .restart local v6       #less:I
    move v1, v0

    .end local v0           #great:I
    .local v1, great:I
    goto :goto_7c

    .line 1703
    .end local v1           #great:I
    .restart local v0       #great:I
    .restart local v2       #less:I
    .local v3, ae4:F
    .restart local v4       #ae5:F
    .local v6, e2:I
    .local v8, e4:I
    :cond_96
    const/4 v1, 0x0

    move v8, v1

    goto :goto_76

    .line 1734
    .end local v2           #less:I
    .end local v4           #ae5:F
    .local v0, ak:F
    .restart local v1       #great:I
    .local v3, k:I
    .local v6, less:I
    .local v8, pivotsDiffer:Z
    :cond_99
    cmpl-float v2, v0, v10

    if-lez v2, :cond_1bf

    .line 1735
    :goto_9d
    aget v2, p0, v1

    cmpl-float v2, v2, v10

    if-lez v2, :cond_d1

    .line 1736
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    if-ne v1, v3, :cond_1bc

    move v1, v3

    .end local v3           #k:I
    .local v1, k:I
    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .line 1805
    .end local v6           #less:I
    .local v2, less:I
    :goto_aa
    const/4 v3, 0x1

    sub-int v3, v2, v3

    aget v3, p0, v3

    aput v3, p0, p1

    const/4 v3, 0x1

    sub-int v3, v2, v3

    aput v7, p0, v3

    .line 1806
    add-int/lit8 v3, v0, 0x1

    aget v3, p0, v3

    aput v3, p0, p2

    add-int/lit8 v3, v0, 0x1

    aput v10, p0, v3

    .line 1809
    const/4 v3, 0x2

    sub-int v3, v2, v3

    invoke-static {p0, p1, v3}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    .line 1810
    add-int/lit8 p1, v0, 0x2

    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    .line 1816
    .end local p1
    if-nez v8, :cond_145

    move p1, v1

    .end local v1           #k:I
    .local p1, k:I
    move p0, v0

    .end local v0           #great:I
    .local p0, great:I
    move p2, v2

    .line 1876
    .end local v2           #less:I
    .local p2, less:I
    :goto_d0
    return-void

    .line 1740
    .local v0, ak:F
    .local v1, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    .local p0, a:[F
    .local p1, left:I
    .local p2, right:I
    :cond_d1
    aget v2, p0, v1

    cmpg-float v2, v2, v7

    if-gez v2, :cond_e8

    .line 1741
    aget v2, p0, v6

    aput v2, p0, v3

    .line 1742
    add-int/lit8 v4, v6, 0x1

    .end local v6           #less:I
    .local v4, less:I
    aget v2, p0, v1

    aput v2, p0, v6

    .line 1743
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v4

    .end local v4           #less:I
    .local v2, less:I
    goto :goto_90

    .line 1745
    .end local v2           #less:I
    .local v0, ak:F
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_e8
    aget v2, p0, v1

    aput v2, p0, v3

    .line 1746
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto :goto_90

    .end local v0           #great:I
    .end local v2           #less:I
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_f3
    move v0, v1

    .end local v1           #great:I
    .restart local v0       #great:I
    move v2, v6

    .end local v6           #less:I
    .restart local v2       #less:I
    move v1, v3

    .line 1726
    .end local v3           #k:I
    .local v1, k:I
    goto :goto_aa

    .line 1771
    .end local v1           #k:I
    .local v3, ae4:F
    .local v4, ae5:F
    .local v6, e2:I
    :cond_f7
    move v1, v2

    .restart local v1       #k:I
    move v3, v1

    .end local v1           #k:I
    .local v3, k:I
    move v6, v2

    .end local v2           #less:I
    .local v6, less:I
    move v1, v0

    .end local v0           #great:I
    .end local v4           #ae5:F
    .local v1, great:I
    :goto_fb
    if-gt v3, v1, :cond_1b7

    .line 1772
    aget v0, p0, v3

    .line 1773
    .local v0, ak:F
    cmpl-float v2, v0, v7

    if-nez v2, :cond_10b

    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .line 1771
    .end local v6           #less:I
    .restart local v2       #less:I
    :goto_105
    add-int/lit8 v1, v3, 0x1

    .end local v3           #k:I
    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .restart local v3       #k:I
    move v6, v2

    .end local v2           #less:I
    .restart local v6       #less:I
    move v1, v0

    .end local v0           #great:I
    .local v1, great:I
    goto :goto_fb

    .line 1776
    .local v0, ak:F
    :cond_10b
    cmpg-float v2, v0, v7

    if-gez v2, :cond_11c

    .line 1777
    if-eq v3, v6, :cond_117

    .line 1778
    aget v2, p0, v6

    aput v2, p0, v3

    .line 1779
    aput v0, p0, v6

    .line 1781
    :cond_117
    add-int/lit8 v0, v6, 0x1

    .end local v6           #less:I
    .local v0, less:I
    move v2, v0

    .end local v0           #less:I
    .restart local v2       #less:I
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    goto :goto_105

    .line 1789
    .end local v2           #less:I
    .local v0, ak:F
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_11c
    :goto_11c
    aget v2, p0, v1

    cmpl-float v2, v2, v7

    if-lez v2, :cond_125

    .line 1790
    add-int/lit8 v1, v1, -0x1

    goto :goto_11c

    .line 1792
    :cond_125
    aget v2, p0, v1

    cmpg-float v2, v2, v7

    if-gez v2, :cond_13c

    .line 1793
    aget v2, p0, v6

    aput v2, p0, v3

    .line 1794
    add-int/lit8 v4, v6, 0x1

    .end local v6           #less:I
    .local v4, less:I
    aget v2, p0, v1

    aput v2, p0, v6

    .line 1795
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v4

    .end local v4           #less:I
    .local v2, less:I
    goto :goto_105

    .line 1797
    .end local v2           #less:I
    .local v0, ak:F
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_13c
    aput v7, p0, v3

    .line 1798
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto :goto_105

    .line 1824
    .end local v3           #k:I
    .end local p1           #left:I
    .local v1, k:I
    :cond_145
    if-ge v2, v5, :cond_1b3

    if-le v0, v9, :cond_1b3

    move v1, v2

    .line 1825
    .end local v2           #less:I
    .local v1, less:I
    :goto_14a
    aget p1, p0, v1

    cmpl-float p1, p1, v7

    if-nez p1, :cond_1b1

    .line 1826
    add-int/lit8 p1, v1, 0x1

    .end local v1           #less:I
    .local p1, less:I
    move v1, p1

    .end local p1           #less:I
    .restart local v1       #less:I
    goto :goto_14a

    .line 1828
    .end local v0           #great:I
    .end local p2           #right:I
    .local p1, great:I
    :goto_154
    aget p2, p0, p1

    cmpl-float p2, p2, v10

    if-nez p2, :cond_15d

    .line 1829
    add-int/lit8 p1, p1, -0x1

    goto :goto_154

    .line 1852
    :cond_15d
    move p2, v1

    .local p2, k:I
    move v0, p2

    .end local p2           #k:I
    .local v0, k:I
    move p2, p1

    .end local p1           #great:I
    .local p2, great:I
    :goto_160
    if-gt v0, p2, :cond_1ad

    .line 1853
    aget p1, p0, v0

    .line 1854
    .local p1, ak:F
    cmpl-float v2, p1, v10

    if-nez v2, :cond_19c

    .end local p1           #ak:F
    :cond_168
    move p1, p2

    .line 1855
    .end local p2           #great:I
    .local p1, great:I
    aget p2, p0, p1

    cmpl-float p2, p2, v10

    if-nez p2, :cond_17e

    .line 1856
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .restart local p2       #great:I
    if-ne p1, v0, :cond_168

    move p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    move p2, v0

    .end local v0           #k:I
    .local p2, k:I
    move v0, v1

    .line 1875
    .end local v1           #less:I
    .local v0, less:I
    :goto_176
    invoke-static {p0, v0, p1}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    move p0, p1

    .end local p1           #great:I
    .local p0, great:I
    move p1, p2

    .end local p2           #k:I
    .local p1, k:I
    move p2, v0

    .line 1876
    .end local v0           #less:I
    .local p2, less:I
    goto/16 :goto_d0

    .line 1860
    .end local p2           #less:I
    .local v0, k:I
    .restart local v1       #less:I
    .local p0, a:[F
    .local p1, great:I
    :cond_17e
    aget p2, p0, p1

    cmpl-float p2, p2, v7

    if-nez p2, :cond_197

    .line 1861
    aget p2, p0, v1

    aput p2, p0, v0

    .line 1862
    add-int/lit8 p2, v1, 0x1

    .end local v1           #less:I
    .restart local p2       #less:I
    aput v7, p0, v1

    move v1, p2

    .line 1866
    .end local p2           #less:I
    .restart local v1       #less:I
    :goto_18d
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .local p2, great:I
    aput v10, p0, p1

    move p1, p2

    .line 1852
    .end local p2           #great:I
    .restart local p1       #great:I
    :goto_192
    add-int/lit8 p2, v0, 0x1

    .end local v0           #k:I
    .local p2, k:I
    move v0, p2

    .end local p2           #k:I
    .restart local v0       #k:I
    move p2, p1

    .end local p1           #great:I
    .local p2, great:I
    goto :goto_160

    .line 1864
    .end local p2           #great:I
    .restart local p1       #great:I
    :cond_197
    aget p2, p0, p1

    aput p2, p0, v0

    goto :goto_18d

    .line 1867
    .local p1, ak:F
    .restart local p2       #great:I
    :cond_19c
    cmpl-float p1, p1, v7

    if-nez p1, :cond_1ab

    .line 1868
    .end local p1           #ak:F
    aget p1, p0, v1

    aput p1, p0, v0

    .line 1869
    add-int/lit8 p1, v1, 0x1

    .end local v1           #less:I
    .local p1, less:I
    aput v7, p0, v1

    move v1, p1

    .end local p1           #less:I
    .restart local v1       #less:I
    move p1, p2

    .end local p2           #great:I
    .local p1, great:I
    goto :goto_192

    .end local p1           #great:I
    .restart local p2       #great:I
    :cond_1ab
    move p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    goto :goto_192

    .end local p1           #great:I
    .restart local p2       #great:I
    :cond_1ad
    move p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    move p2, v0

    .end local v0           #k:I
    .local p2, k:I
    move v0, v1

    .end local v1           #less:I
    .local v0, less:I
    goto :goto_176

    .end local p1           #great:I
    .local v0, great:I
    .restart local v1       #less:I
    .local p2, right:I
    :cond_1b1
    move p1, v0

    .end local v0           #great:I
    .restart local p1       #great:I
    goto :goto_154

    .end local p1           #great:I
    .restart local v0       #great:I
    .local v1, k:I
    .restart local v2       #less:I
    :cond_1b3
    move p2, v1

    .end local v1           #k:I
    .local p2, k:I
    move p1, v0

    .end local v0           #great:I
    .restart local p1       #great:I
    move v0, v2

    .end local v2           #less:I
    .local v0, less:I
    goto :goto_176

    .end local v0           #less:I
    .local v1, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    .local p1, left:I
    .local p2, right:I
    :cond_1b7
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .restart local v2       #less:I
    move v1, v3

    .end local v3           #k:I
    .local v1, k:I
    goto/16 :goto_aa

    .end local v1           #k:I
    .local v0, ak:F
    .local v2, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    :cond_1bc
    move v1, v2

    .end local v2           #great:I
    .local v1, great:I
    goto/16 :goto_9d

    :cond_1bf
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto/16 :goto_90
.end method

.method private static dualPivotQuicksort([III)V
    .registers 14
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 129
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x6

    .line 130
    .local v0, sixth:I
    add-int v5, p1, v0

    .line 131
    .local v5, e1:I
    sub-int v9, p2, v0

    .line 132
    .local v9, e5:I
    add-int v1, p1, p2

    ushr-int/lit8 v7, v1, 0x1

    .line 133
    .local v7, e3:I
    add-int v8, v7, v0

    .line 134
    .local v8, e4:I
    sub-int v6, v7, v0

    .line 137
    .local v6, e2:I
    aget v0, p0, v5

    .local v0, ae1:I
    aget v1, p0, v6

    .local v1, ae2:I
    aget v2, p0, v7

    .local v2, ae3:I
    aget v3, p0, v8

    .local v3, ae4:I
    aget v4, p0, v9

    .line 139
    .local v4, ae5:I
    if-le v0, v1, :cond_21

    move v10, v0

    .local v10, t:I
    move v0, v1

    move v1, v10

    .line 140
    .end local v10           #t:I
    :cond_21
    if-le v3, v4, :cond_26

    move v10, v3

    .restart local v10       #t:I
    move v3, v4

    move v4, v10

    .line 141
    .end local v10           #t:I
    :cond_26
    if-le v0, v2, :cond_2b

    move v10, v0

    .restart local v10       #t:I
    move v0, v2

    move v2, v10

    .line 142
    .end local v10           #t:I
    :cond_2b
    if-le v1, v2, :cond_30

    move v10, v1

    .restart local v10       #t:I
    move v1, v2

    move v2, v10

    .line 143
    .end local v10           #t:I
    :cond_30
    if-le v0, v3, :cond_35

    move v10, v0

    .restart local v10       #t:I
    move v0, v3

    move v3, v10

    .line 144
    .end local v10           #t:I
    :cond_35
    if-le v2, v3, :cond_3a

    move v10, v2

    .restart local v10       #t:I
    move v2, v3

    move v3, v10

    .line 145
    .end local v10           #t:I
    :cond_3a
    if-le v1, v4, :cond_3f

    move v10, v1

    .restart local v10       #t:I
    move v1, v4

    move v4, v10

    .line 146
    .end local v10           #t:I
    :cond_3f
    if-le v1, v2, :cond_44

    move v10, v1

    .restart local v10       #t:I
    move v1, v2

    move v2, v10

    .line 147
    .end local v10           #t:I
    :cond_44
    if-le v3, v4, :cond_49

    move v10, v3

    .restart local v10       #t:I
    move v3, v4

    move v4, v10

    .line 149
    .end local v10           #t:I
    :cond_49
    aput v0, p0, v5

    aput v2, p0, v7

    aput v4, p0, v9

    .line 162
    move v7, v1

    .local v7, pivot1:I
    aget v0, p0, p1

    .end local v0           #ae1:I
    aput v0, p0, v6

    .line 163
    move v10, v3

    .local v10, pivot2:I
    aget v0, p0, p2

    aput v0, p0, v8

    .line 166
    add-int/lit8 v2, p1, 0x1

    .line 167
    .local v2, less:I
    const/4 v0, 0x1

    sub-int v0, p2, v0

    .line 169
    .local v0, great:I
    if-eq v7, v10, :cond_80

    const/4 v1, 0x1

    move v8, v1

    .line 171
    .end local v1           #ae2:I
    .local v8, pivotsDiffer:Z
    :goto_62
    if-eqz v8, :cond_db

    .line 192
    move v1, v2

    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .local v3, k:I
    move v6, v2

    .end local v2           #less:I
    .local v6, less:I
    move v1, v0

    .end local v0           #great:I
    .end local v4           #ae5:I
    .local v1, great:I
    :goto_68
    if-gt v3, v1, :cond_d7

    .line 193
    aget v0, p0, v3

    .line 194
    .local v0, ak:I
    if-ge v0, v7, :cond_83

    .line 195
    if-eq v3, v6, :cond_76

    .line 196
    aget v2, p0, v6

    aput v2, p0, v3

    .line 197
    aput v0, p0, v6

    .line 199
    :cond_76
    add-int/lit8 v0, v6, 0x1

    .end local v6           #less:I
    .local v0, less:I
    move v2, v0

    .end local v0           #less:I
    .restart local v2       #less:I
    move v0, v1

    .line 192
    .end local v1           #great:I
    .local v0, great:I
    :goto_7a
    add-int/lit8 v1, v3, 0x1

    .end local v3           #k:I
    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .restart local v3       #k:I
    move v6, v2

    .end local v2           #less:I
    .restart local v6       #less:I
    move v1, v0

    .end local v0           #great:I
    .local v1, great:I
    goto :goto_68

    .line 169
    .restart local v0       #great:I
    .local v1, ae2:I
    .restart local v2       #less:I
    .local v3, ae4:I
    .restart local v4       #ae5:I
    .local v6, e2:I
    .local v8, e4:I
    :cond_80
    const/4 v1, 0x0

    move v8, v1

    goto :goto_62

    .line 200
    .end local v2           #less:I
    .end local v4           #ae5:I
    .local v0, ak:I
    .local v1, great:I
    .local v3, k:I
    .local v6, less:I
    .local v8, pivotsDiffer:Z
    :cond_83
    if-le v0, v10, :cond_18f

    .line 201
    :goto_85
    aget v2, p0, v1

    if-le v2, v10, :cond_b7

    .line 202
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    if-ne v1, v3, :cond_18c

    move v1, v3

    .end local v3           #k:I
    .local v1, k:I
    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .line 271
    .end local v6           #less:I
    .local v2, less:I
    :goto_90
    const/4 v3, 0x1

    sub-int v3, v2, v3

    aget v3, p0, v3

    aput v3, p0, p1

    const/4 v3, 0x1

    sub-int v3, v2, v3

    aput v7, p0, v3

    .line 272
    add-int/lit8 v3, v0, 0x1

    aget v3, p0, v3

    aput v3, p0, p2

    add-int/lit8 v3, v0, 0x1

    aput v10, p0, v3

    .line 275
    const/4 v3, 0x2

    sub-int v3, v2, v3

    invoke-static {p0, p1, v3}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    .line 276
    add-int/lit8 p1, v0, 0x2

    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    .line 282
    .end local p1
    if-nez v8, :cond_121

    move p1, v1

    .end local v1           #k:I
    .local p1, k:I
    move p0, v0

    .end local v0           #great:I
    .local p0, great:I
    move p2, v2

    .line 342
    .end local v2           #less:I
    .local p2, less:I
    :goto_b6
    return-void

    .line 206
    .local v0, ak:I
    .local v1, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    .local p0, a:[I
    .local p1, left:I
    .local p2, right:I
    :cond_b7
    aget v2, p0, v1

    if-ge v2, v7, :cond_cc

    .line 207
    aget v2, p0, v6

    aput v2, p0, v3

    .line 208
    add-int/lit8 v4, v6, 0x1

    .end local v6           #less:I
    .local v4, less:I
    aget v2, p0, v1

    aput v2, p0, v6

    .line 209
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v4

    .end local v4           #less:I
    .local v2, less:I
    goto :goto_7a

    .line 211
    .end local v2           #less:I
    .local v0, ak:I
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_cc
    aget v2, p0, v1

    aput v2, p0, v3

    .line 212
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto :goto_7a

    .end local v0           #great:I
    .end local v2           #less:I
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_d7
    move v0, v1

    .end local v1           #great:I
    .restart local v0       #great:I
    move v2, v6

    .end local v6           #less:I
    .restart local v2       #less:I
    move v1, v3

    .line 192
    .end local v3           #k:I
    .local v1, k:I
    goto :goto_90

    .line 237
    .end local v1           #k:I
    .local v3, ae4:I
    .local v4, ae5:I
    .local v6, e2:I
    :cond_db
    move v1, v2

    .restart local v1       #k:I
    move v3, v1

    .end local v1           #k:I
    .local v3, k:I
    move v6, v2

    .end local v2           #less:I
    .local v6, less:I
    move v1, v0

    .end local v0           #great:I
    .end local v4           #ae5:I
    .local v1, great:I
    :goto_df
    if-gt v3, v1, :cond_187

    .line 238
    aget v0, p0, v3

    .line 239
    .local v0, ak:I
    if-ne v0, v7, :cond_ed

    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .line 237
    .end local v6           #less:I
    .restart local v2       #less:I
    :goto_e7
    add-int/lit8 v1, v3, 0x1

    .end local v3           #k:I
    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .restart local v3       #k:I
    move v6, v2

    .end local v2           #less:I
    .restart local v6       #less:I
    move v1, v0

    .end local v0           #great:I
    .local v1, great:I
    goto :goto_df

    .line 242
    .local v0, ak:I
    :cond_ed
    if-ge v0, v7, :cond_fc

    .line 243
    if-eq v3, v6, :cond_f7

    .line 244
    aget v2, p0, v6

    aput v2, p0, v3

    .line 245
    aput v0, p0, v6

    .line 247
    :cond_f7
    add-int/lit8 v0, v6, 0x1

    .end local v6           #less:I
    .local v0, less:I
    move v2, v0

    .end local v0           #less:I
    .restart local v2       #less:I
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    goto :goto_e7

    .line 255
    .end local v2           #less:I
    .local v0, ak:I
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_fc
    :goto_fc
    aget v2, p0, v1

    if-le v2, v7, :cond_103

    .line 256
    add-int/lit8 v1, v1, -0x1

    goto :goto_fc

    .line 258
    :cond_103
    aget v2, p0, v1

    if-ge v2, v7, :cond_118

    .line 259
    aget v2, p0, v6

    aput v2, p0, v3

    .line 260
    add-int/lit8 v4, v6, 0x1

    .end local v6           #less:I
    .local v4, less:I
    aget v2, p0, v1

    aput v2, p0, v6

    .line 261
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v4

    .end local v4           #less:I
    .local v2, less:I
    goto :goto_e7

    .line 263
    .end local v2           #less:I
    .local v0, ak:I
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_118
    aput v7, p0, v3

    .line 264
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto :goto_e7

    .line 290
    .end local v3           #k:I
    .end local p1           #left:I
    .local v1, k:I
    :cond_121
    if-ge v2, v5, :cond_183

    if-le v0, v9, :cond_183

    move v1, v2

    .line 291
    .end local v2           #less:I
    .local v1, less:I
    :goto_126
    aget p1, p0, v1

    if-ne p1, v7, :cond_181

    .line 292
    add-int/lit8 p1, v1, 0x1

    .end local v1           #less:I
    .local p1, less:I
    move v1, p1

    .end local p1           #less:I
    .restart local v1       #less:I
    goto :goto_126

    .line 294
    .end local v0           #great:I
    .end local p2           #right:I
    .local p1, great:I
    :goto_12e
    aget p2, p0, p1

    if-ne p2, v10, :cond_135

    .line 295
    add-int/lit8 p1, p1, -0x1

    goto :goto_12e

    .line 318
    :cond_135
    move p2, v1

    .local p2, k:I
    move v0, p2

    .end local p2           #k:I
    .local v0, k:I
    move p2, p1

    .end local p1           #great:I
    .local p2, great:I
    :goto_138
    if-gt v0, p2, :cond_17d

    .line 319
    aget p1, p0, v0

    .line 320
    .local p1, ak:I
    if-ne p1, v10, :cond_16e

    .end local p1           #ak:I
    :cond_13e
    move p1, p2

    .line 321
    .end local p2           #great:I
    .local p1, great:I
    aget p2, p0, p1

    if-ne p2, v10, :cond_152

    .line 322
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .restart local p2       #great:I
    if-ne p1, v0, :cond_13e

    move p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    move p2, v0

    .end local v0           #k:I
    .local p2, k:I
    move v0, v1

    .line 341
    .end local v1           #less:I
    .local v0, less:I
    :goto_14a
    invoke-static {p0, v0, p1}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    move p0, p1

    .end local p1           #great:I
    .local p0, great:I
    move p1, p2

    .end local p2           #k:I
    .local p1, k:I
    move p2, v0

    .line 342
    .end local v0           #less:I
    .local p2, less:I
    goto/16 :goto_b6

    .line 326
    .end local p2           #less:I
    .local v0, k:I
    .restart local v1       #less:I
    .local p0, a:[I
    .local p1, great:I
    :cond_152
    aget p2, p0, p1

    if-ne p2, v7, :cond_169

    .line 327
    aget p2, p0, v1

    aput p2, p0, v0

    .line 328
    add-int/lit8 p2, v1, 0x1

    .end local v1           #less:I
    .restart local p2       #less:I
    aput v7, p0, v1

    move v1, p2

    .line 332
    .end local p2           #less:I
    .restart local v1       #less:I
    :goto_15f
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .local p2, great:I
    aput v10, p0, p1

    move p1, p2

    .line 318
    .end local p2           #great:I
    .restart local p1       #great:I
    :goto_164
    add-int/lit8 p2, v0, 0x1

    .end local v0           #k:I
    .local p2, k:I
    move v0, p2

    .end local p2           #k:I
    .restart local v0       #k:I
    move p2, p1

    .end local p1           #great:I
    .local p2, great:I
    goto :goto_138

    .line 330
    .end local p2           #great:I
    .restart local p1       #great:I
    :cond_169
    aget p2, p0, p1

    aput p2, p0, v0

    goto :goto_15f

    .line 333
    .local p1, ak:I
    .restart local p2       #great:I
    :cond_16e
    if-ne p1, v7, :cond_17b

    .line 334
    aget p1, p0, v1

    .end local p1           #ak:I
    aput p1, p0, v0

    .line 335
    add-int/lit8 p1, v1, 0x1

    .end local v1           #less:I
    .local p1, less:I
    aput v7, p0, v1

    move v1, p1

    .end local p1           #less:I
    .restart local v1       #less:I
    move p1, p2

    .end local p2           #great:I
    .local p1, great:I
    goto :goto_164

    .local p1, ak:I
    .restart local p2       #great:I
    :cond_17b
    move p1, p2

    .end local p2           #great:I
    .local p1, great:I
    goto :goto_164

    .end local p1           #great:I
    .restart local p2       #great:I
    :cond_17d
    move p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    move p2, v0

    .end local v0           #k:I
    .local p2, k:I
    move v0, v1

    .end local v1           #less:I
    .local v0, less:I
    goto :goto_14a

    .end local p1           #great:I
    .local v0, great:I
    .restart local v1       #less:I
    .local p2, right:I
    :cond_181
    move p1, v0

    .end local v0           #great:I
    .restart local p1       #great:I
    goto :goto_12e

    .end local p1           #great:I
    .restart local v0       #great:I
    .local v1, k:I
    .restart local v2       #less:I
    :cond_183
    move p2, v1

    .end local v1           #k:I
    .local p2, k:I
    move p1, v0

    .end local v0           #great:I
    .restart local p1       #great:I
    move v0, v2

    .end local v2           #less:I
    .local v0, less:I
    goto :goto_14a

    .end local v0           #less:I
    .local v1, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    .local p1, left:I
    .local p2, right:I
    :cond_187
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .restart local v2       #less:I
    move v1, v3

    .end local v3           #k:I
    .local v1, k:I
    goto/16 :goto_90

    .end local v1           #k:I
    .local v0, ak:I
    .local v2, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    :cond_18c
    move v1, v2

    .end local v2           #great:I
    .local v1, great:I
    goto/16 :goto_85

    :cond_18f
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto/16 :goto_7a
.end method

.method private static dualPivotQuicksort([JII)V
    .registers 24
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 407
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x6

    .line 408
    .local v3, sixth:I
    add-int v13, p1, v3

    .line 409
    .local v13, e1:I
    sub-int v17, p2, v3

    .line 410
    .local v17, e5:I
    add-int v4, p1, p2

    ushr-int/lit8 v15, v4, 0x1

    .line 411
    .local v15, e3:I
    add-int v16, v15, v3

    .line 412
    .local v16, e4:I
    sub-int v14, v15, v3

    .line 415
    .local v14, e2:I
    aget-wide v3, p0, v13

    .local v3, ae1:J
    aget-wide v5, p0, v14

    .local v5, ae2:J
    aget-wide v7, p0, v15

    .local v7, ae3:J
    aget-wide v9, p0, v16

    .local v9, ae4:J
    aget-wide v11, p0, v17

    .line 417
    .local v11, ae5:J
    cmp-long v18, v3, v5

    if-lez v18, :cond_25

    move-wide/from16 v18, v3

    .local v18, t:J
    move-wide v3, v5

    move-wide/from16 v5, v18

    .line 418
    .end local v18           #t:J
    :cond_25
    cmp-long v18, v9, v11

    if-lez v18, :cond_2e

    move-wide/from16 v18, v9

    .restart local v18       #t:J
    move-wide v9, v11

    move-wide/from16 v11, v18

    .line 419
    .end local v18           #t:J
    :cond_2e
    cmp-long v18, v3, v7

    if-lez v18, :cond_37

    move-wide/from16 v18, v3

    .restart local v18       #t:J
    move-wide v3, v7

    move-wide/from16 v7, v18

    .line 420
    .end local v18           #t:J
    :cond_37
    cmp-long v18, v5, v7

    if-lez v18, :cond_40

    move-wide/from16 v18, v5

    .restart local v18       #t:J
    move-wide v5, v7

    move-wide/from16 v7, v18

    .line 421
    .end local v18           #t:J
    :cond_40
    cmp-long v18, v3, v9

    if-lez v18, :cond_49

    move-wide/from16 v18, v3

    .restart local v18       #t:J
    move-wide v3, v9

    move-wide/from16 v9, v18

    .line 422
    .end local v18           #t:J
    :cond_49
    cmp-long v18, v7, v9

    if-lez v18, :cond_52

    move-wide/from16 v18, v7

    .restart local v18       #t:J
    move-wide v7, v9

    move-wide/from16 v9, v18

    .line 423
    .end local v18           #t:J
    :cond_52
    cmp-long v18, v5, v11

    if-lez v18, :cond_5b

    move-wide/from16 v18, v5

    .restart local v18       #t:J
    move-wide v5, v11

    move-wide/from16 v11, v18

    .line 424
    .end local v18           #t:J
    :cond_5b
    cmp-long v18, v5, v7

    if-lez v18, :cond_64

    move-wide/from16 v18, v5

    .restart local v18       #t:J
    move-wide v5, v7

    move-wide/from16 v7, v18

    .line 425
    .end local v18           #t:J
    :cond_64
    cmp-long v18, v9, v11

    if-lez v18, :cond_6d

    move-wide/from16 v18, v9

    .restart local v18       #t:J
    move-wide v9, v11

    move-wide/from16 v11, v18

    .line 427
    .end local v18           #t:J
    :cond_6d
    aput-wide v3, p0, v13

    aput-wide v7, p0, v15

    aput-wide v11, p0, v17

    .line 440
    move-wide v11, v5

    .local v11, pivot1:J
    aget-wide v3, p0, p1

    .end local v3           #ae1:J
    aput-wide v3, p0, v14

    .line 441
    move-wide v14, v9

    .end local v15           #e3:I
    .local v14, pivot2:J
    aget-wide v3, p0, p2

    aput-wide v3, p0, v16

    .line 444
    add-int/lit8 v5, p1, 0x1

    .line 445
    .local v5, less:I
    const/4 v3, 0x1

    sub-int v3, p2, v3

    .line 447
    .local v3, great:I
    cmp-long v4, v11, v14

    if-eqz v4, :cond_ab

    const/4 v4, 0x1

    move v10, v4

    .line 449
    .end local v9           #ae4:J
    .local v10, pivotsDiffer:Z
    :goto_88
    if-eqz v10, :cond_114

    .line 470
    move v4, v5

    .local v4, k:I
    move v7, v4

    .end local v4           #k:I
    .local v7, k:I
    move v9, v5

    .end local v5           #less:I
    .local v9, less:I
    move v5, v3

    .end local v3           #great:I
    .local v5, great:I
    :goto_8e
    if-gt v7, v5, :cond_110

    .line 471
    aget-wide v3, p0, v7

    .line 472
    .local v3, ak:J
    cmp-long v6, v3, v11

    if-gez v6, :cond_ae

    .line 473
    if-eq v7, v9, :cond_9e

    .line 474
    aget-wide v18, p0, v9

    aput-wide v18, p0, v7

    .line 475
    aput-wide v3, p0, v9

    .line 477
    :cond_9e
    add-int/lit8 v3, v9, 0x1

    .end local v9           #less:I
    .local v3, less:I
    move/from16 v20, v5

    .end local v5           #great:I
    .local v20, great:I
    move v5, v3

    .end local v3           #less:I
    .local v5, less:I
    move/from16 v3, v20

    .line 470
    .end local v20           #great:I
    .local v3, great:I
    :goto_a5
    add-int/lit8 v4, v7, 0x1

    .end local v7           #k:I
    .restart local v4       #k:I
    move v7, v4

    .end local v4           #k:I
    .restart local v7       #k:I
    move v9, v5

    .end local v5           #less:I
    .restart local v9       #less:I
    move v5, v3

    .end local v3           #great:I
    .local v5, great:I
    goto :goto_8e

    .line 447
    .end local v10           #pivotsDiffer:Z
    .restart local v3       #great:I
    .local v5, less:I
    .local v7, ae3:J
    .local v9, ae4:J
    :cond_ab
    const/4 v4, 0x0

    move v10, v4

    goto :goto_88

    .line 478
    .local v3, ak:J
    .local v5, great:I
    .local v7, k:I
    .local v9, less:I
    .restart local v10       #pivotsDiffer:Z
    :cond_ae
    cmp-long v6, v3, v14

    if-lez v6, :cond_204

    .line 479
    :goto_b2
    aget-wide v18, p0, v5

    cmp-long v6, v18, v14

    if-lez v6, :cond_ee

    .line 480
    add-int/lit8 v6, v5, -0x1

    .end local v5           #great:I
    .local v6, great:I
    if-ne v5, v7, :cond_201

    move v4, v7

    .end local v3           #ak:J
    .end local v7           #k:I
    .restart local v4       #k:I
    move v3, v6

    .end local v6           #great:I
    .local v3, great:I
    move v5, v9

    .line 549
    .end local v9           #less:I
    .local v5, less:I
    :goto_bf
    const/4 v6, 0x1

    sub-int v6, v5, v6

    aget-wide v6, p0, v6

    aput-wide v6, p0, p1

    const/4 v6, 0x1

    sub-int v6, v5, v6

    aput-wide v11, p0, v6

    .line 550
    add-int/lit8 v6, v3, 0x1

    aget-wide v6, p0, v6

    aput-wide v6, p0, p2

    add-int/lit8 v6, v3, 0x1

    aput-wide v14, p0, v6

    .line 553
    const/4 v6, 0x2

    sub-int v6, v5, v6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v6

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    .line 554
    add-int/lit8 p1, v3, 0x2

    invoke-static/range {p0 .. p2}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    .line 560
    .end local p1
    if-nez v10, :cond_165

    move/from16 p1, v4

    .end local v4           #k:I
    .local p1, k:I
    move/from16 p0, v3

    .end local v3           #great:I
    .local p0, great:I
    move/from16 p2, v5

    .line 620
    .end local v5           #less:I
    .local p2, less:I
    :goto_ed
    return-void

    .line 484
    .local v3, ak:J
    .local v5, great:I
    .restart local v7       #k:I
    .restart local v9       #less:I
    .local p0, a:[J
    .local p1, left:I
    .local p2, right:I
    :cond_ee
    aget-wide v18, p0, v5

    cmp-long v6, v18, v11

    if-gez v6, :cond_105

    .line 485
    aget-wide v18, p0, v9

    aput-wide v18, p0, v7

    .line 486
    add-int/lit8 v8, v9, 0x1

    .end local v9           #less:I
    .local v8, less:I
    aget-wide v18, p0, v5

    aput-wide v18, p0, v9

    .line 487
    add-int/lit8 v6, v5, -0x1

    .end local v5           #great:I
    .restart local v6       #great:I
    aput-wide v3, p0, v5

    move v3, v6

    .end local v6           #great:I
    .local v3, great:I
    move v5, v8

    .end local v8           #less:I
    .local v5, less:I
    goto :goto_a5

    .line 489
    .local v3, ak:J
    .local v5, great:I
    .restart local v9       #less:I
    :cond_105
    aget-wide v18, p0, v5

    aput-wide v18, p0, v7

    .line 490
    add-int/lit8 v6, v5, -0x1

    .end local v5           #great:I
    .restart local v6       #great:I
    aput-wide v3, p0, v5

    move v3, v6

    .end local v6           #great:I
    .local v3, great:I
    move v5, v9

    .end local v9           #less:I
    .local v5, less:I
    goto :goto_a5

    .end local v3           #great:I
    .local v5, great:I
    .restart local v9       #less:I
    :cond_110
    move v4, v7

    .end local v7           #k:I
    .restart local v4       #k:I
    move v3, v5

    .end local v5           #great:I
    .restart local v3       #great:I
    move v5, v9

    .line 470
    .end local v9           #less:I
    .local v5, less:I
    goto :goto_bf

    .line 515
    .end local v4           #k:I
    .local v7, ae3:J
    :cond_114
    move v4, v5

    .restart local v4       #k:I
    move v7, v4

    .end local v4           #k:I
    .local v7, k:I
    move v9, v5

    .end local v5           #less:I
    .restart local v9       #less:I
    move v5, v3

    .end local v3           #great:I
    .local v5, great:I
    :goto_118
    if-gt v7, v5, :cond_1fc

    .line 516
    aget-wide v3, p0, v7

    .line 517
    .local v3, ak:J
    cmp-long v6, v3, v11

    if-nez v6, :cond_128

    move v3, v5

    .end local v5           #great:I
    .local v3, great:I
    move v5, v9

    .line 515
    .end local v9           #less:I
    .local v5, less:I
    :goto_122
    add-int/lit8 v4, v7, 0x1

    .end local v7           #k:I
    .restart local v4       #k:I
    move v7, v4

    .end local v4           #k:I
    .restart local v7       #k:I
    move v9, v5

    .end local v5           #less:I
    .restart local v9       #less:I
    move v5, v3

    .end local v3           #great:I
    .local v5, great:I
    goto :goto_118

    .line 520
    .local v3, ak:J
    :cond_128
    cmp-long v6, v3, v11

    if-gez v6, :cond_13c

    .line 521
    if-eq v7, v9, :cond_134

    .line 522
    aget-wide v18, p0, v9

    aput-wide v18, p0, v7

    .line 523
    aput-wide v3, p0, v9

    .line 525
    :cond_134
    add-int/lit8 v3, v9, 0x1

    .end local v9           #less:I
    .local v3, less:I
    move/from16 v20, v5

    .end local v5           #great:I
    .restart local v20       #great:I
    move v5, v3

    .end local v3           #less:I
    .local v5, less:I
    move/from16 v3, v20

    .end local v20           #great:I
    .local v3, great:I
    goto :goto_122

    .line 533
    .local v3, ak:J
    .local v5, great:I
    .restart local v9       #less:I
    :cond_13c
    :goto_13c
    aget-wide v18, p0, v5

    cmp-long v6, v18, v11

    if-lez v6, :cond_145

    .line 534
    add-int/lit8 v5, v5, -0x1

    goto :goto_13c

    .line 536
    :cond_145
    aget-wide v18, p0, v5

    cmp-long v6, v18, v11

    if-gez v6, :cond_15c

    .line 537
    aget-wide v18, p0, v9

    aput-wide v18, p0, v7

    .line 538
    add-int/lit8 v8, v9, 0x1

    .end local v9           #less:I
    .restart local v8       #less:I
    aget-wide v18, p0, v5

    aput-wide v18, p0, v9

    .line 539
    add-int/lit8 v6, v5, -0x1

    .end local v5           #great:I
    .restart local v6       #great:I
    aput-wide v3, p0, v5

    move v3, v6

    .end local v6           #great:I
    .local v3, great:I
    move v5, v8

    .end local v8           #less:I
    .local v5, less:I
    goto :goto_122

    .line 541
    .local v3, ak:J
    .local v5, great:I
    .restart local v9       #less:I
    :cond_15c
    aput-wide v11, p0, v7

    .line 542
    add-int/lit8 v6, v5, -0x1

    .end local v5           #great:I
    .restart local v6       #great:I
    aput-wide v3, p0, v5

    move v3, v6

    .end local v6           #great:I
    .local v3, great:I
    move v5, v9

    .end local v9           #less:I
    .local v5, less:I
    goto :goto_122

    .line 568
    .end local v7           #k:I
    .end local p1           #left:I
    .restart local v4       #k:I
    :cond_165
    if-ge v5, v13, :cond_1f2

    move v0, v3

    move/from16 v1, v17

    if-le v0, v1, :cond_1f2

    move v4, v5

    .line 569
    .end local v5           #less:I
    .local v4, less:I
    :goto_16d
    aget-wide p1, p0, v4

    cmp-long p1, p1, v11

    if-nez p1, :cond_1f8

    .line 570
    add-int/lit8 p1, v4, 0x1

    .end local v4           #less:I
    .local p1, less:I
    move/from16 v4, p1

    .end local p1           #less:I
    .restart local v4       #less:I
    goto :goto_16d

    .line 572
    .end local v3           #great:I
    .end local p2           #right:I
    .local p1, great:I
    :goto_178
    aget-wide v5, p0, p1

    cmp-long p2, v5, v14

    if-nez p2, :cond_181

    .line 573
    add-int/lit8 p1, p1, -0x1

    goto :goto_178

    .line 596
    :cond_181
    move/from16 p2, v4

    .local p2, k:I
    move/from16 v3, p1

    .end local p1           #great:I
    .restart local v3       #great:I
    move v5, v4

    .end local v4           #less:I
    .restart local v5       #less:I
    move/from16 v4, p2

    .end local p2           #k:I
    .local v4, k:I
    :goto_188
    if-gt v4, v3, :cond_1f2

    .line 597
    aget-wide p1, p0, v4

    .line 598
    .local p1, ak:J
    cmp-long v6, p1, v14

    if-nez v6, :cond_1d8

    move/from16 p1, v3

    .line 599
    .end local v3           #great:I
    .local p1, great:I
    :goto_192
    aget-wide v6, p0, p1

    cmp-long p2, v6, v14

    if-nez p2, :cond_1b4

    .line 600
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .local p2, great:I
    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_1ef

    move/from16 p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    move v3, v5

    .end local v5           #less:I
    .local v3, less:I
    move/from16 p2, v4

    .line 619
    .end local v4           #k:I
    .local p2, k:I
    :goto_1a4
    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    move/from16 p0, p1

    .end local p1           #great:I
    .local p0, great:I
    move/from16 p1, p2

    .end local p2           #k:I
    .local p1, k:I
    move/from16 p2, v3

    .line 620
    .end local v3           #less:I
    .local p2, less:I
    goto/16 :goto_ed

    .line 604
    .end local p2           #less:I
    .restart local v4       #k:I
    .restart local v5       #less:I
    .local p0, a:[J
    .local p1, great:I
    :cond_1b4
    aget-wide v6, p0, p1

    cmp-long p2, v6, v11

    if-nez p2, :cond_1d2

    .line 605
    aget-wide v6, p0, v5

    aput-wide v6, p0, v4

    .line 606
    add-int/lit8 p2, v5, 0x1

    .end local v5           #less:I
    .restart local p2       #less:I
    aput-wide v11, p0, v5

    move/from16 v3, p2

    .line 610
    .end local p2           #less:I
    .restart local v3       #less:I
    :goto_1c4
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .local p2, great:I
    aput-wide v14, p0, p1

    move/from16 p1, p2

    .line 596
    .end local p2           #great:I
    .restart local p1       #great:I
    :goto_1ca
    add-int/lit8 p2, v4, 0x1

    .end local v4           #k:I
    .local p2, k:I
    move/from16 v4, p2

    .end local p2           #k:I
    .restart local v4       #k:I
    move v5, v3

    .end local v3           #less:I
    .restart local v5       #less:I
    move/from16 v3, p1

    .end local p1           #great:I
    .local v3, great:I
    goto :goto_188

    .line 608
    .end local v3           #great:I
    .restart local p1       #great:I
    :cond_1d2
    aget-wide v6, p0, p1

    aput-wide v6, p0, v4

    move v3, v5

    .end local v5           #less:I
    .local v3, less:I
    goto :goto_1c4

    .line 611
    .local v3, great:I
    .restart local v5       #less:I
    .local p1, ak:J
    :cond_1d8
    cmp-long p1, p1, v11

    if-nez p1, :cond_1eb

    .line 612
    .end local p1           #ak:J
    aget-wide p1, p0, v5

    aput-wide p1, p0, v4

    .line 613
    add-int/lit8 p1, v5, 0x1

    .end local v5           #less:I
    .local p1, less:I
    aput-wide v11, p0, v5

    move/from16 v20, v3

    .end local v3           #great:I
    .restart local v20       #great:I
    move/from16 v3, p1

    .end local p1           #less:I
    .local v3, less:I
    move/from16 p1, v20

    .end local v20           #great:I
    .local p1, great:I
    goto :goto_1ca

    .end local p1           #great:I
    .local v3, great:I
    .restart local v5       #less:I
    :cond_1eb
    move/from16 p1, v3

    .end local v3           #great:I
    .restart local p1       #great:I
    move v3, v5

    .end local v5           #less:I
    .local v3, less:I
    goto :goto_1ca

    .end local v3           #less:I
    .end local p1           #great:I
    .restart local v5       #less:I
    .local p2, great:I
    :cond_1ef
    move/from16 p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    goto :goto_192

    .end local p1           #great:I
    .local v3, great:I
    :cond_1f2
    move/from16 p2, v4

    .end local v4           #k:I
    .local p2, k:I
    move/from16 p1, v3

    .end local v3           #great:I
    .restart local p1       #great:I
    move v3, v5

    .end local v5           #less:I
    .local v3, less:I
    goto :goto_1a4

    .end local p1           #great:I
    .local v3, great:I
    .local v4, less:I
    .local p2, right:I
    :cond_1f8
    move/from16 p1, v3

    .end local v3           #great:I
    .restart local p1       #great:I
    goto/16 :goto_178

    .end local v4           #less:I
    .local v5, great:I
    .restart local v7       #k:I
    .restart local v9       #less:I
    .local p1, left:I
    :cond_1fc
    move v4, v7

    .end local v7           #k:I
    .local v4, k:I
    move v3, v5

    .end local v5           #great:I
    .restart local v3       #great:I
    move v5, v9

    .end local v9           #less:I
    .local v5, less:I
    goto/16 :goto_bf

    .end local v4           #k:I
    .end local v5           #less:I
    .local v3, ak:J
    .restart local v6       #great:I
    .restart local v7       #k:I
    .restart local v9       #less:I
    :cond_201
    move v5, v6

    .end local v6           #great:I
    .local v5, great:I
    goto/16 :goto_b2

    :cond_204
    move v3, v5

    .end local v5           #great:I
    .local v3, great:I
    move v5, v9

    .end local v9           #less:I
    .local v5, less:I
    goto/16 :goto_a5
.end method

.method private static dualPivotQuicksort([SII)V
    .registers 14
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 702
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x6

    .line 703
    .local v0, sixth:I
    add-int v5, p1, v0

    .line 704
    .local v5, e1:I
    sub-int v9, p2, v0

    .line 705
    .local v9, e5:I
    add-int v1, p1, p2

    ushr-int/lit8 v7, v1, 0x1

    .line 706
    .local v7, e3:I
    add-int v8, v7, v0

    .line 707
    .local v8, e4:I
    sub-int v6, v7, v0

    .line 710
    .local v6, e2:I
    aget-short v0, p0, v5

    .local v0, ae1:S
    aget-short v1, p0, v6

    .local v1, ae2:S
    aget-short v2, p0, v7

    .local v2, ae3:S
    aget-short v3, p0, v8

    .local v3, ae4:S
    aget-short v4, p0, v9

    .line 712
    .local v4, ae5:S
    if-le v0, v1, :cond_21

    move v10, v0

    .local v10, t:S
    move v0, v1

    move v1, v10

    .line 713
    .end local v10           #t:S
    :cond_21
    if-le v3, v4, :cond_26

    move v10, v3

    .restart local v10       #t:S
    move v3, v4

    move v4, v10

    .line 714
    .end local v10           #t:S
    :cond_26
    if-le v0, v2, :cond_2b

    move v10, v0

    .restart local v10       #t:S
    move v0, v2

    move v2, v10

    .line 715
    .end local v10           #t:S
    :cond_2b
    if-le v1, v2, :cond_30

    move v10, v1

    .restart local v10       #t:S
    move v1, v2

    move v2, v10

    .line 716
    .end local v10           #t:S
    :cond_30
    if-le v0, v3, :cond_35

    move v10, v0

    .restart local v10       #t:S
    move v0, v3

    move v3, v10

    .line 717
    .end local v10           #t:S
    :cond_35
    if-le v2, v3, :cond_3a

    move v10, v2

    .restart local v10       #t:S
    move v2, v3

    move v3, v10

    .line 718
    .end local v10           #t:S
    :cond_3a
    if-le v1, v4, :cond_3f

    move v10, v1

    .restart local v10       #t:S
    move v1, v4

    move v4, v10

    .line 719
    .end local v10           #t:S
    :cond_3f
    if-le v1, v2, :cond_44

    move v10, v1

    .restart local v10       #t:S
    move v1, v2

    move v2, v10

    .line 720
    .end local v10           #t:S
    :cond_44
    if-le v3, v4, :cond_49

    move v10, v3

    .restart local v10       #t:S
    move v3, v4

    move v4, v10

    .line 722
    .end local v10           #t:S
    :cond_49
    aput-short v0, p0, v5

    aput-short v2, p0, v7

    aput-short v4, p0, v9

    .line 735
    move v7, v1

    .local v7, pivot1:S
    aget-short v0, p0, p1

    .end local v0           #ae1:S
    aput-short v0, p0, v6

    .line 736
    move v10, v3

    .local v10, pivot2:S
    aget-short v0, p0, p2

    aput-short v0, p0, v8

    .line 739
    add-int/lit8 v2, p1, 0x1

    .line 740
    .local v2, less:I
    const/4 v0, 0x1

    sub-int v0, p2, v0

    .line 742
    .local v0, great:I
    if-eq v7, v10, :cond_80

    const/4 v1, 0x1

    move v8, v1

    .line 744
    .end local v1           #ae2:S
    .local v8, pivotsDiffer:Z
    :goto_62
    if-eqz v8, :cond_db

    .line 765
    move v1, v2

    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .local v3, k:I
    move v6, v2

    .end local v2           #less:I
    .local v6, less:I
    move v1, v0

    .end local v0           #great:I
    .end local v4           #ae5:S
    .local v1, great:I
    :goto_68
    if-gt v3, v1, :cond_d7

    .line 766
    aget-short v0, p0, v3

    .line 767
    .local v0, ak:S
    if-ge v0, v7, :cond_83

    .line 768
    if-eq v3, v6, :cond_76

    .line 769
    aget-short v2, p0, v6

    aput-short v2, p0, v3

    .line 770
    aput-short v0, p0, v6

    .line 772
    :cond_76
    add-int/lit8 v0, v6, 0x1

    .end local v6           #less:I
    .local v0, less:I
    move v2, v0

    .end local v0           #less:I
    .restart local v2       #less:I
    move v0, v1

    .line 765
    .end local v1           #great:I
    .local v0, great:I
    :goto_7a
    add-int/lit8 v1, v3, 0x1

    .end local v3           #k:I
    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .restart local v3       #k:I
    move v6, v2

    .end local v2           #less:I
    .restart local v6       #less:I
    move v1, v0

    .end local v0           #great:I
    .local v1, great:I
    goto :goto_68

    .line 742
    .restart local v0       #great:I
    .local v1, ae2:S
    .restart local v2       #less:I
    .local v3, ae4:S
    .restart local v4       #ae5:S
    .local v6, e2:I
    .local v8, e4:I
    :cond_80
    const/4 v1, 0x0

    move v8, v1

    goto :goto_62

    .line 773
    .end local v2           #less:I
    .end local v4           #ae5:S
    .local v0, ak:S
    .local v1, great:I
    .local v3, k:I
    .local v6, less:I
    .local v8, pivotsDiffer:Z
    :cond_83
    if-le v0, v10, :cond_18f

    .line 774
    :goto_85
    aget-short v2, p0, v1

    if-le v2, v10, :cond_b7

    .line 775
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    if-ne v1, v3, :cond_18c

    move v1, v3

    .end local v3           #k:I
    .local v1, k:I
    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .line 844
    .end local v6           #less:I
    .local v2, less:I
    :goto_90
    const/4 v3, 0x1

    sub-int v3, v2, v3

    aget-short v3, p0, v3

    aput-short v3, p0, p1

    const/4 v3, 0x1

    sub-int v3, v2, v3

    aput-short v7, p0, v3

    .line 845
    add-int/lit8 v3, v0, 0x1

    aget-short v3, p0, v3

    aput-short v3, p0, p2

    add-int/lit8 v3, v0, 0x1

    aput-short v10, p0, v3

    .line 848
    const/4 v3, 0x2

    sub-int v3, v2, v3

    invoke-static {p0, p1, v3}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    .line 849
    add-int/lit8 p1, v0, 0x2

    invoke-static {p0, p1, p2}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    .line 855
    .end local p1
    if-nez v8, :cond_121

    move p1, v1

    .end local v1           #k:I
    .local p1, k:I
    move p0, v0

    .end local v0           #great:I
    .local p0, great:I
    move p2, v2

    .line 915
    .end local v2           #less:I
    .local p2, less:I
    :goto_b6
    return-void

    .line 779
    .local v0, ak:S
    .local v1, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    .local p0, a:[S
    .local p1, left:I
    .local p2, right:I
    :cond_b7
    aget-short v2, p0, v1

    if-ge v2, v7, :cond_cc

    .line 780
    aget-short v2, p0, v6

    aput-short v2, p0, v3

    .line 781
    add-int/lit8 v4, v6, 0x1

    .end local v6           #less:I
    .local v4, less:I
    aget-short v2, p0, v1

    aput-short v2, p0, v6

    .line 782
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput-short v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v4

    .end local v4           #less:I
    .local v2, less:I
    goto :goto_7a

    .line 784
    .end local v2           #less:I
    .local v0, ak:S
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_cc
    aget-short v2, p0, v1

    aput-short v2, p0, v3

    .line 785
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput-short v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto :goto_7a

    .end local v0           #great:I
    .end local v2           #less:I
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_d7
    move v0, v1

    .end local v1           #great:I
    .restart local v0       #great:I
    move v2, v6

    .end local v6           #less:I
    .restart local v2       #less:I
    move v1, v3

    .line 765
    .end local v3           #k:I
    .local v1, k:I
    goto :goto_90

    .line 810
    .end local v1           #k:I
    .local v3, ae4:S
    .local v4, ae5:S
    .local v6, e2:I
    :cond_db
    move v1, v2

    .restart local v1       #k:I
    move v3, v1

    .end local v1           #k:I
    .local v3, k:I
    move v6, v2

    .end local v2           #less:I
    .local v6, less:I
    move v1, v0

    .end local v0           #great:I
    .end local v4           #ae5:S
    .local v1, great:I
    :goto_df
    if-gt v3, v1, :cond_187

    .line 811
    aget-short v0, p0, v3

    .line 812
    .local v0, ak:S
    if-ne v0, v7, :cond_ed

    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .line 810
    .end local v6           #less:I
    .restart local v2       #less:I
    :goto_e7
    add-int/lit8 v1, v3, 0x1

    .end local v3           #k:I
    .local v1, k:I
    move v3, v1

    .end local v1           #k:I
    .restart local v3       #k:I
    move v6, v2

    .end local v2           #less:I
    .restart local v6       #less:I
    move v1, v0

    .end local v0           #great:I
    .local v1, great:I
    goto :goto_df

    .line 815
    .local v0, ak:S
    :cond_ed
    if-ge v0, v7, :cond_fc

    .line 816
    if-eq v3, v6, :cond_f7

    .line 817
    aget-short v2, p0, v6

    aput-short v2, p0, v3

    .line 818
    aput-short v0, p0, v6

    .line 820
    :cond_f7
    add-int/lit8 v0, v6, 0x1

    .end local v6           #less:I
    .local v0, less:I
    move v2, v0

    .end local v0           #less:I
    .restart local v2       #less:I
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    goto :goto_e7

    .line 828
    .end local v2           #less:I
    .local v0, ak:S
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_fc
    :goto_fc
    aget-short v2, p0, v1

    if-le v2, v7, :cond_103

    .line 829
    add-int/lit8 v1, v1, -0x1

    goto :goto_fc

    .line 831
    :cond_103
    aget-short v2, p0, v1

    if-ge v2, v7, :cond_118

    .line 832
    aget-short v2, p0, v6

    aput-short v2, p0, v3

    .line 833
    add-int/lit8 v4, v6, 0x1

    .end local v6           #less:I
    .local v4, less:I
    aget-short v2, p0, v1

    aput-short v2, p0, v6

    .line 834
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput-short v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v4

    .end local v4           #less:I
    .local v2, less:I
    goto :goto_e7

    .line 836
    .end local v2           #less:I
    .local v0, ak:S
    .restart local v1       #great:I
    .restart local v6       #less:I
    :cond_118
    aput-short v7, p0, v3

    .line 837
    add-int/lit8 v2, v1, -0x1

    .end local v1           #great:I
    .local v2, great:I
    aput-short v0, p0, v1

    move v0, v2

    .end local v2           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto :goto_e7

    .line 863
    .end local v3           #k:I
    .end local p1           #left:I
    .local v1, k:I
    :cond_121
    if-ge v2, v5, :cond_183

    if-le v0, v9, :cond_183

    move v1, v2

    .line 864
    .end local v2           #less:I
    .local v1, less:I
    :goto_126
    aget-short p1, p0, v1

    if-ne p1, v7, :cond_181

    .line 865
    add-int/lit8 p1, v1, 0x1

    .end local v1           #less:I
    .local p1, less:I
    move v1, p1

    .end local p1           #less:I
    .restart local v1       #less:I
    goto :goto_126

    .line 867
    .end local v0           #great:I
    .end local p2           #right:I
    .local p1, great:I
    :goto_12e
    aget-short p2, p0, p1

    if-ne p2, v10, :cond_135

    .line 868
    add-int/lit8 p1, p1, -0x1

    goto :goto_12e

    .line 891
    :cond_135
    move p2, v1

    .local p2, k:I
    move v0, p2

    .end local p2           #k:I
    .local v0, k:I
    move p2, p1

    .end local p1           #great:I
    .local p2, great:I
    :goto_138
    if-gt v0, p2, :cond_17d

    .line 892
    aget-short p1, p0, v0

    .line 893
    .local p1, ak:S
    if-ne p1, v10, :cond_16e

    .end local p1           #ak:S
    :cond_13e
    move p1, p2

    .line 894
    .end local p2           #great:I
    .local p1, great:I
    aget-short p2, p0, p1

    if-ne p2, v10, :cond_152

    .line 895
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .restart local p2       #great:I
    if-ne p1, v0, :cond_13e

    move p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    move p2, v0

    .end local v0           #k:I
    .local p2, k:I
    move v0, v1

    .line 914
    .end local v1           #less:I
    .local v0, less:I
    :goto_14a
    invoke-static {p0, v0, p1}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    move p0, p1

    .end local p1           #great:I
    .local p0, great:I
    move p1, p2

    .end local p2           #k:I
    .local p1, k:I
    move p2, v0

    .line 915
    .end local v0           #less:I
    .local p2, less:I
    goto/16 :goto_b6

    .line 899
    .end local p2           #less:I
    .local v0, k:I
    .restart local v1       #less:I
    .local p0, a:[S
    .local p1, great:I
    :cond_152
    aget-short p2, p0, p1

    if-ne p2, v7, :cond_169

    .line 900
    aget-short p2, p0, v1

    aput-short p2, p0, v0

    .line 901
    add-int/lit8 p2, v1, 0x1

    .end local v1           #less:I
    .restart local p2       #less:I
    aput-short v7, p0, v1

    move v1, p2

    .line 905
    .end local p2           #less:I
    .restart local v1       #less:I
    :goto_15f
    add-int/lit8 p2, p1, -0x1

    .end local p1           #great:I
    .local p2, great:I
    aput-short v10, p0, p1

    move p1, p2

    .line 891
    .end local p2           #great:I
    .restart local p1       #great:I
    :goto_164
    add-int/lit8 p2, v0, 0x1

    .end local v0           #k:I
    .local p2, k:I
    move v0, p2

    .end local p2           #k:I
    .restart local v0       #k:I
    move p2, p1

    .end local p1           #great:I
    .local p2, great:I
    goto :goto_138

    .line 903
    .end local p2           #great:I
    .restart local p1       #great:I
    :cond_169
    aget-short p2, p0, p1

    aput-short p2, p0, v0

    goto :goto_15f

    .line 906
    .local p1, ak:S
    .restart local p2       #great:I
    :cond_16e
    if-ne p1, v7, :cond_17b

    .line 907
    aget-short p1, p0, v1

    .end local p1           #ak:S
    aput-short p1, p0, v0

    .line 908
    add-int/lit8 p1, v1, 0x1

    .end local v1           #less:I
    .local p1, less:I
    aput-short v7, p0, v1

    move v1, p1

    .end local p1           #less:I
    .restart local v1       #less:I
    move p1, p2

    .end local p2           #great:I
    .local p1, great:I
    goto :goto_164

    .local p1, ak:S
    .restart local p2       #great:I
    :cond_17b
    move p1, p2

    .end local p2           #great:I
    .local p1, great:I
    goto :goto_164

    .end local p1           #great:I
    .restart local p2       #great:I
    :cond_17d
    move p1, p2

    .end local p2           #great:I
    .restart local p1       #great:I
    move p2, v0

    .end local v0           #k:I
    .local p2, k:I
    move v0, v1

    .end local v1           #less:I
    .local v0, less:I
    goto :goto_14a

    .end local p1           #great:I
    .local v0, great:I
    .restart local v1       #less:I
    .local p2, right:I
    :cond_181
    move p1, v0

    .end local v0           #great:I
    .restart local p1       #great:I
    goto :goto_12e

    .end local p1           #great:I
    .restart local v0       #great:I
    .local v1, k:I
    .restart local v2       #less:I
    :cond_183
    move p2, v1

    .end local v1           #k:I
    .local p2, k:I
    move p1, v0

    .end local v0           #great:I
    .restart local p1       #great:I
    move v0, v2

    .end local v2           #less:I
    .local v0, less:I
    goto :goto_14a

    .end local v0           #less:I
    .local v1, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    .local p1, left:I
    .local p2, right:I
    :cond_187
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .restart local v2       #less:I
    move v1, v3

    .end local v3           #k:I
    .local v1, k:I
    goto/16 :goto_90

    .end local v1           #k:I
    .local v0, ak:S
    .local v2, great:I
    .restart local v3       #k:I
    .restart local v6       #less:I
    :cond_18c
    move v1, v2

    .end local v2           #great:I
    .local v1, great:I
    goto/16 :goto_85

    :cond_18f
    move v0, v1

    .end local v1           #great:I
    .local v0, great:I
    move v2, v6

    .end local v6           #less:I
    .local v2, less:I
    goto/16 :goto_7a
.end method

.method private static findAnyZero([DII)I
    .registers 9
    .parameter "a"
    .parameter "low"
    .parameter "high"

    .prologue
    const-wide/16 v4, 0x0

    .line 1986
    :goto_2
    add-int v3, p1, p2

    ushr-int/lit8 v0, v3, 0x1

    .line 1987
    .local v0, middle:I
    aget-wide v1, p0, v0

    .line 1989
    .local v1, middleValue:D
    cmpg-double v3, v1, v4

    if-gez v3, :cond_f

    .line 1990
    add-int/lit8 p1, v0, 0x1

    goto :goto_2

    .line 1991
    :cond_f
    cmpl-double v3, v1, v4

    if-lez v3, :cond_17

    .line 1992
    const/4 v3, 0x1

    sub-int p2, v0, v3

    goto :goto_2

    .line 1994
    :cond_17
    return v0
.end method

.method private static findAnyZero([FII)I
    .registers 7
    .parameter "a"
    .parameter "low"
    .parameter "high"

    .prologue
    const/4 v3, 0x0

    .line 1613
    :goto_1
    add-int v2, p1, p2

    ushr-int/lit8 v0, v2, 0x1

    .line 1614
    .local v0, middle:I
    aget v1, p0, v0

    .line 1616
    .local v1, middleValue:F
    cmpg-float v2, v1, v3

    if-gez v2, :cond_e

    .line 1617
    add-int/lit8 p1, v0, 0x1

    goto :goto_1

    .line 1618
    :cond_e
    cmpl-float v2, v1, v3

    if-lez v2, :cond_16

    .line 1619
    const/4 v2, 0x1

    sub-int p2, v0, v2

    goto :goto_1

    .line 1621
    :cond_16
    return v0
.end method

.method public static sort([B)V
    .registers 4
    .parameter "a"

    .prologue
    .line 1216
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    .line 1217
    return-void
.end method

.method public static sort([BII)V
    .registers 4
    .parameter "a"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 1233
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 1234
    const/4 v0, 0x1

    sub-int v0, p2, v0

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([BII)V

    .line 1235
    return-void
.end method

.method public static sort([C)V
    .registers 4
    .parameter "a"

    .prologue
    .line 923
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    .line 924
    return-void
.end method

.method public static sort([CII)V
    .registers 4
    .parameter "a"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 940
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 941
    const/4 v0, 0x1

    sub-int v0, p2, v0

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([CII)V

    .line 942
    return-void
.end method

.method public static sort([D)V
    .registers 4
    .parameter "a"

    .prologue
    .line 1892
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([DII)V

    .line 1893
    return-void
.end method

.method public static sort([DII)V
    .registers 4
    .parameter "a"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 1917
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 1918
    const/4 v0, 0x1

    sub-int v0, p2, v0

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([DII)V

    .line 1919
    return-void
.end method

.method public static sort([F)V
    .registers 4
    .parameter "a"

    .prologue
    .line 1519
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([FII)V

    .line 1520
    return-void
.end method

.method public static sort([FII)V
    .registers 4
    .parameter "a"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 1544
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 1545
    const/4 v0, 0x1

    sub-int v0, p2, v0

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sortNegZeroAndNaN([FII)V

    .line 1546
    return-void
.end method

.method public static sort([I)V
    .registers 4
    .parameter "a"

    .prologue
    .line 72
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    .line 73
    return-void
.end method

.method public static sort([III)V
    .registers 4
    .parameter "a"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 89
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 90
    const/4 v0, 0x1

    sub-int v0, p2, v0

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([III)V

    .line 91
    return-void
.end method

.method public static sort([J)V
    .registers 4
    .parameter "a"

    .prologue
    .line 350
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    .line 351
    return-void
.end method

.method public static sort([JII)V
    .registers 4
    .parameter "a"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 367
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 368
    const/4 v0, 0x1

    sub-int v0, p2, v0

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([JII)V

    .line 369
    return-void
.end method

.method public static sort([S)V
    .registers 4
    .parameter "a"

    .prologue
    .line 628
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    .line 629
    return-void
.end method

.method public static sort([SII)V
    .registers 4
    .parameter "a"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 645
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 646
    const/4 v0, 0x1

    sub-int v0, p2, v0

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->doSort([SII)V

    .line 647
    return-void
.end method

.method private static sortNegZeroAndNaN([DII)V
    .registers 12
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1935
    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 1936
    .local v0, NEGATIVE_ZERO:J
    const/4 v3, 0x0

    .line 1937
    .local v3, numNegativeZeros:I
    move v2, p2

    .line 1939
    .local v2, n:I
    move p2, p1

    .local p2, k:I
    move v4, p2

    .end local p2           #k:I
    .local v4, k:I
    move v5, v2

    .end local v2           #n:I
    .local v5, n:I
    move v6, v3

    .end local v3           #numNegativeZeros:I
    .local v6, numNegativeZeros:I
    :goto_c
    if-gt v4, v5, :cond_3f

    .line 1940
    aget-wide v2, p0, v4

    .line 1941
    .local v2, ak:D
    const-wide/16 v7, 0x0

    cmpl-double p2, v2, v7

    if-nez p2, :cond_2d

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long p2, v0, v7

    if-nez p2, :cond_2d

    .line 1942
    const-wide/16 v2, 0x0

    aput-wide v2, p0, v4

    .line 1943
    .end local v2           #ak:D
    add-int/lit8 p2, v6, 0x1

    .end local v6           #numNegativeZeros:I
    .local p2, numNegativeZeros:I
    move v2, v5

    .end local v5           #n:I
    .local v2, n:I
    move v3, p2

    .end local p2           #numNegativeZeros:I
    .restart local v3       #numNegativeZeros:I
    move p2, v4

    .line 1939
    .end local v4           #k:I
    .local p2, k:I
    :goto_27
    add-int/lit8 p2, p2, 0x1

    move v4, p2

    .end local p2           #k:I
    .restart local v4       #k:I
    move v5, v2

    .end local v2           #n:I
    .restart local v5       #n:I
    move v6, v3

    .end local v3           #numNegativeZeros:I
    .restart local v6       #numNegativeZeros:I
    goto :goto_c

    .line 1944
    .local v2, ak:D
    :cond_2d
    cmpl-double p2, v2, v2

    if-eqz p2, :cond_66

    .line 1945
    add-int/lit8 p2, v4, -0x1

    .end local v4           #k:I
    .restart local p2       #k:I
    aget-wide v2, p0, v5

    .end local v2           #ak:D
    aput-wide v2, p0, v4

    .line 1946
    add-int/lit8 v2, v5, -0x1

    .end local v5           #n:I
    .local v2, n:I
    const-wide/high16 v3, 0x7ff8

    aput-wide v3, p0, v5

    move v3, v6

    .end local v6           #numNegativeZeros:I
    .restart local v3       #numNegativeZeros:I
    goto :goto_27

    .line 1953
    .end local v2           #n:I
    .end local v3           #numNegativeZeros:I
    .end local p2           #k:I
    .restart local v4       #k:I
    .restart local v5       #n:I
    .restart local v6       #numNegativeZeros:I
    :cond_3f
    invoke-static {p0, p1, v5}, Ljava/util/DualPivotQuicksort;->doSort([DII)V

    .line 1958
    if-nez v6, :cond_45

    .line 1973
    .end local v0           #NEGATIVE_ZERO:J
    .end local p1
    :cond_44
    return-void

    .line 1963
    .restart local v0       #NEGATIVE_ZERO:J
    .restart local p1
    :cond_45
    invoke-static {p0, p1, v5}, Ljava/util/DualPivotQuicksort;->findAnyZero([DII)I

    move-result v0

    .line 1965
    .local v0, zeroIndex:I
    const/4 p2, 0x1

    sub-int p2, v0, p2

    .local p2, i:I
    :goto_4c
    if-lt p2, p1, :cond_5a

    aget-wide v1, p0, p2

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_5a

    .line 1966
    move v0, p2

    .line 1965
    add-int/lit8 p2, p2, -0x1

    goto :goto_4c

    .line 1970
    :cond_5a
    move p1, v0

    .end local p2           #i:I
    .local p1, i:I
    add-int p2, v0, v6

    .end local v0           #zeroIndex:I
    .local p2, m:I
    :goto_5d
    if-ge p1, p2, :cond_44

    .line 1971
    const-wide/high16 v0, -0x8000

    aput-wide v0, p0, p1

    .line 1970
    add-int/lit8 p1, p1, 0x1

    goto :goto_5d

    .end local p2           #m:I
    .local v0, NEGATIVE_ZERO:J
    .local v2, ak:D
    .local p1, left:I
    :cond_66
    move p2, v4

    .end local v4           #k:I
    .local p2, k:I
    move v2, v5

    .end local v5           #n:I
    .local v2, n:I
    move v3, v6

    .end local v6           #numNegativeZeros:I
    .restart local v3       #numNegativeZeros:I
    goto :goto_27
.end method

.method private static sortNegZeroAndNaN([FII)V
    .registers 16
    .parameter "a"
    .parameter "left"
    .parameter "right"

    .prologue
    const/high16 v12, -0x8000

    const/4 v11, 0x0

    .line 1562
    invoke-static {v12}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1563
    .local v0, NEGATIVE_ZERO:I
    const/4 v8, 0x0

    .line 1564
    .local v8, numNegativeZeros:I
    move v6, p2

    .line 1566
    .local v6, n:I
    move v3, p1

    .local v3, k:I
    move v4, v3

    .end local v3           #k:I
    .local v4, k:I
    move v7, v6

    .end local v6           #n:I
    .local v7, n:I
    :goto_c
    if-gt v4, v7, :cond_36

    .line 1567
    aget v1, p0, v4

    .line 1568
    .local v1, ak:F
    cmpl-float v10, v1, v11

    if-nez v10, :cond_25

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v10

    if-ne v0, v10, :cond_25

    .line 1569
    aput v11, p0, v4

    .line 1570
    add-int/lit8 v8, v8, 0x1

    move v3, v4

    .end local v4           #k:I
    .restart local v3       #k:I
    move v6, v7

    .line 1566
    .end local v7           #n:I
    .restart local v6       #n:I
    :goto_20
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .end local v3           #k:I
    .restart local v4       #k:I
    move v7, v6

    .end local v6           #n:I
    .restart local v7       #n:I
    goto :goto_c

    .line 1571
    :cond_25
    cmpl-float v10, v1, v1

    if-eqz v10, :cond_59

    .line 1572
    add-int/lit8 v3, v4, -0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    aget v10, p0, v7

    aput v10, p0, v4

    .line 1573
    add-int/lit8 v6, v7, -0x1

    .end local v7           #n:I
    .restart local v6       #n:I
    const/high16 v10, 0x7fc0

    aput v10, p0, v7

    goto :goto_20

    .line 1580
    .end local v1           #ak:F
    .end local v3           #k:I
    .end local v6           #n:I
    .restart local v4       #k:I
    .restart local v7       #n:I
    :cond_36
    invoke-static {p0, p1, v7}, Ljava/util/DualPivotQuicksort;->doSort([FII)V

    .line 1585
    if-nez v8, :cond_3c

    .line 1600
    :cond_3b
    return-void

    .line 1590
    :cond_3c
    invoke-static {p0, p1, v7}, Ljava/util/DualPivotQuicksort;->findAnyZero([FII)I

    move-result v9

    .line 1592
    .local v9, zeroIndex:I
    const/4 v10, 0x1

    sub-int v2, v9, v10

    .local v2, i:I
    :goto_43
    if-lt v2, p1, :cond_4f

    aget v10, p0, v2

    cmpl-float v10, v10, v11

    if-nez v10, :cond_4f

    .line 1593
    move v9, v2

    .line 1592
    add-int/lit8 v2, v2, -0x1

    goto :goto_43

    .line 1597
    :cond_4f
    move v2, v9

    add-int v5, v9, v8

    .local v5, m:I
    :goto_52
    if-ge v2, v5, :cond_3b

    .line 1598
    aput v12, p0, v2

    .line 1597
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .end local v2           #i:I
    .end local v5           #m:I
    .end local v9           #zeroIndex:I
    .restart local v1       #ak:F
    :cond_59
    move v3, v4

    .end local v4           #k:I
    .restart local v3       #k:I
    move v6, v7

    .end local v7           #n:I
    .restart local v6       #n:I
    goto :goto_20
.end method
