.class public LG/H;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LG/Q;LG/Q;LG/Q;LG/Q;)D
    .locals 8

    iget v0, p0, LG/Q;->b:I

    iget v1, p1, LG/Q;->b:I

    sub-int/2addr v0, v1

    iget v1, p1, LG/Q;->a:I

    iget v2, p0, LG/Q;->a:I

    sub-int/2addr v1, v2

    iget v2, p0, LG/Q;->a:I

    iget v3, p2, LG/Q;->a:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iget v4, p0, LG/Q;->b:I

    iget v5, p2, LG/Q;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    int-to-long v6, v1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-double v2, v2

    iget v4, p3, LG/Q;->a:I

    iget v5, p2, LG/Q;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    int-to-long v6, v0

    mul-long/2addr v4, v6

    iget v0, p3, LG/Q;->b:I

    iget v6, p2, LG/Q;->b:I

    sub-int/2addr v0, v6

    int-to-long v6, v0

    int-to-long v0, v1

    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    long-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static a(FF)F
    .locals 2

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4334

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x43b4

    sub-float v0, v1, v0

    :cond_0
    return v0
.end method

.method public static a(II)F
    .locals 5

    const/high16 v0, 0x42b4

    int-to-double v1, p1

    int-to-double v3, p0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b4

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public static a(LG/Q;LG/Q;LG/Q;)I
    .locals 6

    iget v0, p2, LG/Q;->a:I

    iget v1, p0, LG/Q;->a:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p2, LG/Q;->b:I

    iget v3, p1, LG/Q;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p2, LG/Q;->b:I

    iget v3, p0, LG/Q;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p2, LG/Q;->a:I

    iget v5, p1, LG/Q;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-long v2, v2

    const/16 v4, 0x3f

    shr-long/2addr v0, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(LG/Q;FLG/Q;)V
    .locals 4

    iget v0, p0, LG/Q;->a:I

    int-to-double v0, v0

    iget v2, p0, LG/Q;->b:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    float-to-int v0, p1

    iput v0, p2, LG/Q;->a:I

    const/4 v0, 0x0

    iput v0, p2, LG/Q;->b:I

    :goto_0
    return-void

    :cond_0
    div-float v0, p1, v0

    iget v1, p0, LG/Q;->b:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, LG/Q;->a:I

    iget v1, p0, LG/Q;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, LG/Q;->b:I

    goto :goto_0
.end method

.method public static a(LG/Q;LG/Q;)V
    .locals 1

    iget v0, p0, LG/Q;->b:I

    neg-int v0, v0

    iput v0, p1, LG/Q;->a:I

    iget v0, p0, LG/Q;->a:I

    iput v0, p1, LG/Q;->b:I

    return-void
.end method

.method public static a(LG/Q;LG/Q;LG/Q;LG/Q;LG/Q;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v0, p0, LG/Q;->b:I

    iget v1, p1, LG/Q;->b:I

    sub-int/2addr v0, v1

    iget v1, p1, LG/Q;->a:I

    iget v2, p0, LG/Q;->a:I

    sub-int/2addr v1, v2

    iget v2, p3, LG/Q;->a:I

    iget v3, p2, LG/Q;->a:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iget v4, p3, LG/Q;->b:I

    iget v5, p2, LG/Q;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    int-to-long v6, v1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    invoke-static {p0, p1, p2}, LG/H;->a(LG/Q;LG/Q;LG/Q;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4, p2}, LG/Q;->b(LG/Q;)V

    move v0, v8

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p3}, LG/H;->a(LG/Q;LG/Q;LG/Q;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4, p3}, LG/Q;->b(LG/Q;)V

    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v9

    goto :goto_0

    :cond_2
    iget v4, p0, LG/Q;->a:I

    iget v5, p2, LG/Q;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    int-to-long v6, v0

    mul-long/2addr v4, v6

    iget v0, p0, LG/Q;->b:I

    iget v6, p2, LG/Q;->b:I

    sub-int/2addr v0, v6

    int-to-long v6, v0

    int-to-long v0, v1

    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    long-to-double v0, v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_3

    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_4

    :cond_3
    move v0, v9

    goto :goto_0

    :cond_4
    iget v2, p2, LG/Q;->a:I

    int-to-double v2, v2

    iget v4, p3, LG/Q;->a:I

    iget v5, p2, LG/Q;->a:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p4, LG/Q;->a:I

    iget v2, p2, LG/Q;->b:I

    int-to-double v2, v2

    iget v4, p3, LG/Q;->b:I

    iget v5, p2, LG/Q;->b:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p4, LG/Q;->b:I

    move v0, v8

    goto :goto_0
.end method

.method public static b(FF)F
    .locals 3

    const/high16 v2, 0x43b4

    sub-float v0, p1, p0

    :goto_0
    const/high16 v1, 0x4334

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_0
    :goto_1
    const/high16 v1, -0x3ccc

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    add-float/2addr v0, v2

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static b(LG/Q;LG/Q;)F
    .locals 3

    iget v0, p1, LG/Q;->a:I

    iget v1, p0, LG/Q;->a:I

    sub-int/2addr v0, v1

    iget v1, p1, LG/Q;->b:I

    iget v2, p0, LG/Q;->b:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, LG/H;->a(II)F

    move-result v0

    return v0
.end method

.method public static b(LG/Q;LG/Q;LG/Q;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v0, p0, LG/Q;->a:I

    iget v1, p0, LG/Q;->b:I

    iget v2, p1, LG/Q;->a:I

    iget v3, p1, LG/Q;->b:I

    iget v4, p2, LG/Q;->a:I

    iget v5, p2, LG/Q;->b:I

    if-gt v1, v5, :cond_0

    if-gt v3, v5, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    if-lt v4, v0, :cond_1

    if-lt v4, v2, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    if-ge v4, v0, :cond_2

    if-ge v4, v2, :cond_2

    move v0, v8

    goto :goto_0

    :cond_2
    if-lt v2, v0, :cond_4

    sub-int/2addr v4, v0

    int-to-long v6, v4

    sub-int/2addr v3, v1

    int-to-long v3, v3

    mul-long/2addr v3, v6

    sub-int v1, v5, v1

    int-to-long v5, v1

    sub-int v0, v2, v0

    int-to-long v0, v0

    mul-long/2addr v0, v5

    cmp-long v0, v3, v0

    if-lez v0, :cond_3

    move v0, v9

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_0

    :cond_4
    sub-int/2addr v4, v0

    int-to-long v6, v4

    sub-int/2addr v3, v1

    int-to-long v3, v3

    mul-long/2addr v3, v6

    sub-int v1, v5, v1

    int-to-long v5, v1

    sub-int v0, v2, v0

    int-to-long v0, v0

    mul-long/2addr v0, v5

    cmp-long v0, v3, v0

    if-gez v0, :cond_5

    move v0, v9

    goto :goto_0

    :cond_5
    move v0, v8

    goto :goto_0
.end method

.method public static b(LG/Q;LG/Q;LG/Q;LG/Q;)Z
    .locals 12

    iget v0, p1, LG/Q;->a:I

    iget v1, p0, LG/Q;->a:I

    sub-int/2addr v0, v1

    iget v1, p1, LG/Q;->b:I

    iget v2, p0, LG/Q;->b:I

    sub-int/2addr v1, v2

    iget v2, p3, LG/Q;->a:I

    iget v3, p2, LG/Q;->a:I

    sub-int/2addr v2, v3

    iget v3, p3, LG/Q;->b:I

    iget v4, p2, LG/Q;->b:I

    sub-int/2addr v3, v4

    iget v4, p2, LG/Q;->a:I

    iget v5, p0, LG/Q;->a:I

    sub-int/2addr v4, v5

    iget v5, p2, LG/Q;->b:I

    iget v6, p0, LG/Q;->b:I

    sub-int/2addr v5, v6

    int-to-long v6, v2

    int-to-long v8, v1

    mul-long/2addr v6, v8

    int-to-long v8, v3

    int-to-long v10, v0

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_6

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    int-to-long v6, v4

    int-to-long v8, v1

    mul-long/2addr v6, v8

    int-to-long v4, v5

    int-to-long v8, v0

    mul-long/2addr v4, v8

    sub-long v4, v6, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-static {p2, p3, p0}, LG/H;->f(LG/Q;LG/Q;LG/Q;)Z

    move-result p0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    invoke-static {p0, p1, p2}, LG/H;->f(LG/Q;LG/Q;LG/Q;)Z

    move-result p0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2}, LG/H;->f(LG/Q;LG/Q;LG/Q;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0, p1, p3}, LG/H;->f(LG/Q;LG/Q;LG/Q;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2, p3, p0}, LG/H;->f(LG/Q;LG/Q;LG/Q;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p2, p3, p1}, LG/H;->f(LG/Q;LG/Q;LG/Q;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    goto :goto_0

    :cond_6
    neg-int p0, v4

    int-to-long p0, p0

    int-to-long p2, v1

    mul-long/2addr p0, p2

    int-to-long p2, v5

    int-to-long v0, v0

    mul-long/2addr p2, v0

    add-long/2addr p0, p2

    long-to-double p0, p0

    long-to-double p2, v6

    div-double/2addr p0, p2

    const-wide/16 p2, 0x0

    cmpl-double p2, p0, p2

    if-ltz p2, :cond_7

    const-wide/high16 p2, 0x3ff0

    cmpg-double p0, p0, p2

    if-lez p0, :cond_8

    :cond_7
    const/4 p0, 0x0

    goto :goto_0

    :cond_8
    int-to-long p0, v4

    int-to-long p2, v3

    mul-long/2addr p0, p2

    int-to-long p2, v5

    int-to-long v0, v2

    mul-long/2addr p2, v0

    sub-long/2addr p0, p2

    long-to-double p0, p0

    neg-long p2, v6

    long-to-double p2, p2

    div-double/2addr p0, p2

    const-wide/16 p2, 0x0

    cmpl-double p2, p0, p2

    if-ltz p2, :cond_9

    const-wide/high16 p2, 0x3ff0

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static c(LG/Q;LG/Q;)J
    .locals 6

    iget v0, p0, LG/Q;->a:I

    int-to-long v0, v0

    iget v2, p1, LG/Q;->b:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, LG/Q;->b:I

    int-to-long v2, v2

    iget v4, p1, LG/Q;->a:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static c(LG/Q;LG/Q;LG/Q;)V
    .locals 2

    iget v0, p0, LG/Q;->a:I

    iget v1, p1, LG/Q;->a:I

    add-int/2addr v0, v1

    iput v0, p2, LG/Q;->a:I

    iget v0, p0, LG/Q;->b:I

    iget v1, p1, LG/Q;->b:I

    add-int/2addr v0, v1

    iput v0, p2, LG/Q;->b:I

    return-void
.end method

.method public static d(LG/Q;LG/Q;LG/Q;)V
    .locals 2

    iget v0, p0, LG/Q;->a:I

    iget v1, p1, LG/Q;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, LG/Q;->a:I

    iget v0, p0, LG/Q;->b:I

    iget v1, p1, LG/Q;->b:I

    sub-int/2addr v0, v1

    iput v0, p2, LG/Q;->b:I

    return-void
.end method

.method public static e(LG/Q;LG/Q;LG/Q;)V
    .locals 2

    iget v0, p0, LG/Q;->a:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, LG/Q;->a:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p2, LG/Q;->a:I

    iget v0, p0, LG/Q;->b:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, LG/Q;->b:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p2, LG/Q;->b:I

    return-void
.end method

.method private static f(LG/Q;LG/Q;LG/Q;)Z
    .locals 8

    iget v0, p1, LG/Q;->a:I

    iget v1, p0, LG/Q;->a:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p1, LG/Q;->b:I

    iget v3, p0, LG/Q;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p2, LG/Q;->a:I

    iget v5, p0, LG/Q;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    iget v6, p2, LG/Q;->b:I

    iget v7, p0, LG/Q;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    mul-long/2addr v4, v0

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    mul-long/2addr v0, v0

    mul-long/2addr v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
