.class public Lcom/layar/util/OrientedBoundingBox;
.super Ljava/lang/Object;
.source "OrientedBoundingBox.java"


# instance fields
.field private axis:[[F

.field private center:[F

.field private extents:[F

.field private points:[[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 7
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x8

    filled-new-array {v0, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    .line 44
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v2

    aget v1, p1, v2

    aput v1, v0, v2

    .line 45
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v2

    aget v1, p1, v3

    aput v1, v0, v3

    .line 46
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v2

    aget v1, p1, v4

    aput v1, v0, v4

    .line 48
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v3

    aget v1, p2, v2

    aput v1, v0, v2

    .line 49
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v3

    aget v1, p1, v3

    aput v1, v0, v3

    .line 50
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v3

    aget v1, p1, v4

    aput v1, v0, v4

    .line 52
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v4

    aget v1, p1, v2

    aput v1, v0, v2

    .line 53
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v4

    aget v1, p1, v3

    aput v1, v0, v3

    .line 54
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v4

    aget v1, p2, v4

    aput v1, v0, v4

    .line 56
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v5

    aget v1, p2, v2

    aput v1, v0, v2

    .line 57
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v5

    aget v1, p1, v3

    aput v1, v0, v3

    .line 58
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v5

    aget v1, p2, v4

    aput v1, v0, v4

    .line 60
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v6

    aget v1, p1, v2

    aput v1, v0, v2

    .line 61
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v6

    aget v1, p2, v3

    aput v1, v0, v3

    .line 62
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v0, v0, v6

    aget v1, p1, v4

    aput v1, v0, v4

    .line 64
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget v1, p2, v2

    aput v1, v0, v2

    .line 65
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget v1, p2, v3

    aput v1, v0, v3

    .line 66
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget v1, p1, v4

    aput v1, v0, v4

    .line 68
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget v1, p1, v2

    aput v1, v0, v2

    .line 69
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget v1, p2, v3

    aput v1, v0, v3

    .line 70
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget v1, p2, v4

    aput v1, v0, v4

    .line 72
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget v1, p2, v2

    aput v1, v0, v2

    .line 73
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget v1, p2, v3

    aput v1, v0, v3

    .line 74
    iget-object v0, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget v1, p2, v4

    aput v1, v0, v4

    .line 76
    invoke-direct {p0}, Lcom/layar/util/OrientedBoundingBox;->setPoints()V

    .line 77
    return-void
.end method

.method public constructor <init>([[F)V
    .locals 2
    .parameter "points"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    array-length v0, p1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "OrientedBoundingBox: incorrect nr of points"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    .line 31
    invoke-direct {p0}, Lcom/layar/util/OrientedBoundingBox;->setPoints()V

    .line 32
    return-void
.end method

.method private clipTest(FF[F)Z
    .locals 6
    .parameter "denom"
    .parameter "numer"
    .parameter "result"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    float-to-double v0, p1

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    .line 154
    aget v0, p3, v3

    mul-float/2addr v0, p1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    move v0, v2

    .line 160
    :goto_0
    return v0

    .line 155
    :cond_0
    aget v0, p3, v2

    mul-float/2addr v0, p1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    div-float v0, p2, p1

    aput v0, p3, v2

    :cond_1
    move v0, v3

    goto :goto_0

    .line 156
    :cond_2
    float-to-double v0, p1

    cmpg-double v0, v0, v4

    if-gez v0, :cond_5

    .line 157
    aget v0, p3, v2

    mul-float/2addr v0, p1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 158
    :cond_3
    aget v0, p3, v3

    mul-float/2addr v0, p1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    div-float v0, p2, p1

    aput v0, p3, v3

    :cond_4
    move v0, v3

    goto :goto_0

    .line 160
    :cond_5
    float-to-double v0, p2

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_6

    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method private setPoints()V
    .locals 10

    .prologue
    const/high16 v9, 0x4000

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    new-array v2, v8, [F

    iput-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->center:[F

    .line 82
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->center:[F

    aget v3, v2, v5

    const/high16 v4, 0x4100

    div-float/2addr v3, v4

    aput v3, v2, v5

    .line 89
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->center:[F

    aget v3, v2, v6

    const/high16 v4, 0x4100

    div-float/2addr v3, v4

    aput v3, v2, v6

    .line 90
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->center:[F

    aget v3, v2, v7

    const/high16 v4, 0x4100

    div-float/2addr v3, v4

    aput v3, v2, v7

    .line 92
    filled-new-array {v8, v8}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->axis:[[F

    .line 93
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/layar/util/OrientedBoundingBox;->axis:[[F

    aget-object v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/layar/util/MathUtil;->vectorSubstract([F[F[F)V

    .line 94
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/layar/util/OrientedBoundingBox;->axis:[[F

    aget-object v4, v4, v6

    invoke-static {v2, v3, v4}, Lcom/layar/util/MathUtil;->vectorSubstract([F[F[F)V

    .line 95
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    const/4 v3, 0x4

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/layar/util/OrientedBoundingBox;->axis:[[F

    aget-object v4, v4, v7

    invoke-static {v2, v3, v4}, Lcom/layar/util/MathUtil;->vectorSubstract([F[F[F)V

    .line 96
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->axis:[[F

    aget-object v2, v2, v5

    invoke-static {v2}, Lcom/layar/util/MathUtil;->vectorNormalize([F)V

    .line 97
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->axis:[[F

    aget-object v2, v2, v6

    invoke-static {v2}, Lcom/layar/util/MathUtil;->vectorNormalize([F)V

    .line 98
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->axis:[[F

    aget-object v2, v2, v7

    invoke-static {v2}, Lcom/layar/util/MathUtil;->vectorNormalize([F)V

    .line 100
    new-array v2, v8, [F

    iput-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->extents:[F

    .line 102
    new-array v1, v8, [F

    .line 103
    .local v1, tmp:[F
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v3, v3, v5

    invoke-static {v2, v3, v1}, Lcom/layar/util/MathUtil;->vectorSubstract([F[F[F)V

    .line 104
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->extents:[F

    invoke-static {v1}, Lcom/layar/util/MathUtil;->vectorLength([F)F

    move-result v3

    div-float/2addr v3, v9

    aput v3, v2, v5

    .line 105
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v3, v3, v5

    invoke-static {v2, v3, v1}, Lcom/layar/util/MathUtil;->vectorSubstract([F[F[F)V

    .line 106
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->extents:[F

    invoke-static {v1}, Lcom/layar/util/MathUtil;->vectorLength([F)F

    move-result v3

    div-float/2addr v3, v9

    aput v3, v2, v6

    .line 107
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    const/4 v3, 0x4

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v3, v3, v5

    invoke-static {v2, v3, v1}, Lcom/layar/util/MathUtil;->vectorSubstract([F[F[F)V

    .line 108
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->extents:[F

    invoke-static {v1}, Lcom/layar/util/MathUtil;->vectorLength([F)F

    move-result v3

    div-float/2addr v3, v9

    aput v3, v2, v7

    .line 109
    return-void

    .line 83
    .end local v1           #tmp:[F
    :cond_0
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->center:[F

    aget v3, v2, v5

    iget-object v4, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v4, v4, v0

    aget v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 84
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->center:[F

    aget v3, v2, v6

    iget-object v4, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v4, v4, v0

    aget v4, v4, v6

    add-float/2addr v3, v4

    aput v3, v2, v6

    .line 85
    iget-object v2, p0, Lcom/layar/util/OrientedBoundingBox;->center:[F

    aget v3, v2, v7

    iget-object v4, p0, Lcom/layar/util/OrientedBoundingBox;->points:[[F

    aget-object v4, v4, v0

    aget v4, v4, v7

    add-float/2addr v3, v4

    aput v3, v2, v7

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public nearestRayIntersection([F[F)F
    .locals 12
    .parameter "rayOrigin"
    .parameter "rayDirection"

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 120
    new-array v4, v10, [F

    .line 121
    .local v4, result:[F
    aput v11, v4, v8

    const v5, 0x7f7fffff

    aput v5, v4, v9

    .line 123
    new-array v0, v6, [F

    .line 124
    .local v0, diff:[F
    iget-object v5, p0, Lcom/layar/util/OrientedBoundingBox;->center:[F

    invoke-static {p1, v5, v0}, Lcom/layar/util/MathUtil;->vectorSubstract([F[F[F)V

    .line 126
    new-array v3, v6, [F

    .line 127
    .local v3, origin:[F
    iget-object v5, p0, Lcom/layar/util/OrientedBoundingBox;->axis:[[F

    aget-object v5, v5, v8

    invoke-static {v0, v5}, Lcom/layar/util/MathUtil;->vectorDotProduct([F[F)F

    move-result v5

    aput v5, v3, v8

    .line 128
    iget-object v5, p0, Lcom/layar/util/OrientedBoundingBox;->axis:[[F

    aget-object v5, v5, v9

    invoke-static {v0, v5}, Lcom/layar/util/MathUtil;->vectorDotProduct([F[F)F

    move-result v5

    aput v5, v3, v9

    .line 129
    iget-object v5, p0, Lcom/layar/util/OrientedBoundingBox;->axis:[[F

    aget-object v5, v5, v10

    invoke-static {v0, v5}, Lcom/layar/util/MathUtil;->vectorDotProduct([F[F)F

    move-result v5

    aput v5, v3, v10

    .line 131
    new-array v1, v6, [F

    .line 132
    .local v1, direction:[F
    iget-object v5, p0, Lcom/layar/util/OrientedBoundingBox;->axis:[[F

    aget-object v5, v5, v8

    invoke-static {p2, v5}, Lcom/layar/util/MathUtil;->vectorDotProduct([F[F)F

    move-result v5

    aput v5, v1, v8

    .line 133
    iget-object v5, p0, Lcom/layar/util/OrientedBoundingBox;->axis:[[F

    aget-object v5, v5, v9

    invoke-static {p2, v5}, Lcom/layar/util/MathUtil;->vectorDotProduct([F[F)F

    move-result v5

    aput v5, v1, v9

    .line 134
    iget-object v5, p0, Lcom/layar/util/OrientedBoundingBox;->axis:[[F

    aget-object v5, v5, v10

    invoke-static {p2, v5}, Lcom/layar/util/MathUtil;->vectorDotProduct([F[F)F

    move-result v5

    aput v5, v1, v10

    .line 137
    aget v5, v1, v8

    aget v6, v3, v8

    neg-float v6, v6

    iget-object v7, p0, Lcom/layar/util/OrientedBoundingBox;->extents:[F

    aget v7, v7, v8

    sub-float/2addr v6, v7

    invoke-direct {p0, v5, v6, v4}, Lcom/layar/util/OrientedBoundingBox;->clipTest(FF[F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    aget v5, v1, v8

    neg-float v5, v5

    aget v6, v3, v8

    iget-object v7, p0, Lcom/layar/util/OrientedBoundingBox;->extents:[F

    aget v7, v7, v8

    sub-float/2addr v6, v7

    invoke-direct {p0, v5, v6, v4}, Lcom/layar/util/OrientedBoundingBox;->clipTest(FF[F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    aget v5, v1, v9

    aget v6, v3, v9

    neg-float v6, v6

    iget-object v7, p0, Lcom/layar/util/OrientedBoundingBox;->extents:[F

    aget v7, v7, v9

    sub-float/2addr v6, v7

    invoke-direct {p0, v5, v6, v4}, Lcom/layar/util/OrientedBoundingBox;->clipTest(FF[F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    aget v5, v1, v9

    neg-float v5, v5

    aget v6, v3, v9

    iget-object v7, p0, Lcom/layar/util/OrientedBoundingBox;->extents:[F

    aget v7, v7, v9

    sub-float/2addr v6, v7

    invoke-direct {p0, v5, v6, v4}, Lcom/layar/util/OrientedBoundingBox;->clipTest(FF[F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    aget v5, v1, v10

    aget v6, v3, v10

    neg-float v6, v6

    iget-object v7, p0, Lcom/layar/util/OrientedBoundingBox;->extents:[F

    aget v7, v7, v10

    sub-float/2addr v6, v7

    invoke-direct {p0, v5, v6, v4}, Lcom/layar/util/OrientedBoundingBox;->clipTest(FF[F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    aget v5, v1, v10

    neg-float v5, v5

    aget v6, v3, v10

    iget-object v7, p0, Lcom/layar/util/OrientedBoundingBox;->extents:[F

    aget v7, v7, v10

    sub-float/2addr v6, v7

    invoke-direct {p0, v5, v6, v4}, Lcom/layar/util/OrientedBoundingBox;->clipTest(FF[F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v9

    .line 144
    .local v2, notAllClipped:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 145
    aget v5, v4, v8

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_1

    aget v5, v4, v8

    .line 149
    :goto_1
    return v5

    .end local v2           #notAllClipped:Z
    :cond_0
    move v2, v8

    .line 142
    goto :goto_0

    .line 146
    .restart local v2       #notAllClipped:Z
    :cond_1
    aget v5, v4, v9

    const v6, 0x7f7fffff

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    aget v5, v4, v9

    goto :goto_1

    .line 149
    :cond_2
    const/high16 v5, -0x4080

    goto :goto_1
.end method
