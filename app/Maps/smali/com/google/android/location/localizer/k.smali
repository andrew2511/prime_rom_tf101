.class public Lcom/google/android/location/localizer/k;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(D)D
    .locals 4

    const-wide v0, 0x400921fb54442d18L

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(DDDD)D
    .locals 8

    invoke-static {p0, p1}, Lcom/google/android/location/localizer/k;->a(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Lcom/google/android/location/localizer/k;->a(D)D

    move-result-wide v4

    invoke-static {p2, p3}, Lcom/google/android/location/localizer/k;->a(D)D

    move-result-wide v2

    invoke-static {p6, p7}, Lcom/google/android/location/localizer/k;->a(D)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/k;->b(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(I)D
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x3e7ad7f29abcaf48L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(LW/o;)D
    .locals 2

    iget v0, p0, LW/o;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/k;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(LW/u;)D
    .locals 2

    iget v0, p0, LW/u;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/k;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(LW/u;LW/o;)D
    .locals 6

    invoke-static {p0}, Lcom/google/android/location/localizer/k;->b(LW/u;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/location/localizer/k;->b(LW/o;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/location/localizer/k;->a(LW/u;)D

    move-result-wide v2

    invoke-static {p1}, Lcom/google/android/location/localizer/k;->a(LW/o;)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lw/A;Lw/A;)D
    .locals 8

    invoke-interface {p0}, Lw/A;->b()D

    move-result-wide v0

    invoke-interface {p0}, Lw/A;->c()D

    move-result-wide v2

    invoke-interface {p1}, Lw/A;->b()D

    move-result-wide v4

    invoke-interface {p1}, Lw/A;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/k;->c(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(LW/o;LW/o;)I
    .locals 8

    iget v0, p0, LW/o;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v0

    iget v2, p0, LW/o;->b:I

    invoke-static {v2}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v2

    iget v4, p1, LW/o;->a:I

    invoke-static {v4}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v4

    iget v6, p1, LW/o;->b:I

    invoke-static {v6}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/k;->a(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static a(LW/t;LW/o;)I
    .locals 8

    iget v0, p0, LW/t;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v0

    iget v2, p0, LW/t;->b:I

    invoke-static {v2}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v2

    iget v4, p1, LW/o;->a:I

    invoke-static {v4}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v4

    iget v6, p1, LW/o;->b:I

    invoke-static {v6}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/k;->a(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static a(IILW/o;)LW/u;
    .locals 12

    const-wide v10, 0x3f847ae147ae147bL

    iget v0, p2, LW/o;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v0

    iget v2, p2, LW/o;->b:I

    invoke-static {v2}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v2

    add-double v4, v0, v10

    move-wide v6, v2

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/k;->a(DDDD)D

    move-result-wide v4

    div-double v8, v10, v4

    add-double v6, v2, v10

    move-wide v4, v0

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/k;->a(DDDD)D

    move-result-wide v4

    div-double v4, v10, v4

    new-instance v6, LW/u;

    int-to-double v10, p0

    mul-double v7, v10, v8

    add-double/2addr v0, v7

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/k;->b(D)I

    move-result v0

    int-to-double v7, p1

    mul-double/2addr v4, v7

    add-double v1, v4, v2

    invoke-static {v1, v2}, Lcom/google/android/location/localizer/k;->b(D)I

    move-result v1

    invoke-direct {v6, v0, v1}, LW/u;-><init>(II)V

    return-object v6
.end method

.method public static b(DDDD)D
    .locals 4

    sub-double v0, p4, p0

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sub-double p2, p6, p2

    const-wide/high16 p6, 0x3fe0

    mul-double/2addr p2, p6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double p6, v0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double/2addr p0, p4

    mul-double/2addr p0, p2

    mul-double/2addr p0, p2

    add-double/2addr p0, p6

    const-wide/high16 p2, 0x3ff0

    cmpl-double p2, p0, p2

    if-lez p2, :cond_0

    const-wide/high16 p0, 0x3ff0

    :cond_0
    const-wide/high16 p2, 0x4000

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    const-wide/high16 p6, 0x3ff0

    sub-double p0, p6, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double/2addr p0, p2

    const-wide p2, 0x415849c600000000L

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    int-to-double p0, p0

    return-wide p0
.end method

.method public static b(LW/o;)D
    .locals 2

    iget v0, p0, LW/o;->b:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/k;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static b(LW/o;LW/o;)D
    .locals 8

    iget v0, p0, LW/o;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v0

    iget v2, p0, LW/o;->b:I

    invoke-static {v2}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v2

    iget v4, p1, LW/o;->a:I

    invoke-static {v4}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v4

    iget v6, p1, LW/o;->b:I

    invoke-static {v6}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/k;->c(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static b(LW/t;LW/o;)D
    .locals 8

    iget v0, p0, LW/t;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v0

    iget v2, p0, LW/t;->b:I

    invoke-static {v2}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v2

    iget v4, p1, LW/o;->a:I

    invoke-static {v4}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v4

    iget v6, p1, LW/o;->b:I

    invoke-static {v6}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/k;->c(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static b(LW/u;)D
    .locals 2

    iget v0, p0, LW/u;->b:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/k;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static b(LW/u;LW/o;)D
    .locals 4

    invoke-static {p0}, Lcom/google/android/location/localizer/k;->a(LW/u;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/location/localizer/k;->a(LW/o;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(D)I
    .locals 2

    const-wide v0, 0x416312d000000000L

    mul-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method public static b(I)I
    .locals 1

    div-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static c(D)D
    .locals 4

    const-wide v0, -0x4006de04abbbd2e8L

    const-wide v2, 0x3ff921fb54442d18L

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static c(DDDD)D
    .locals 12

    invoke-static {p2, p3}, Lcom/google/android/location/localizer/k;->a(D)D

    move-result-wide v0

    invoke-static/range {p6 .. p7}, Lcom/google/android/location/localizer/k;->a(D)D

    move-result-wide v2

    invoke-static {p0, p1}, Lcom/google/android/location/localizer/k;->a(D)D

    move-result-wide v4

    invoke-static/range {p4 .. p5}, Lcom/google/android/location/localizer/k;->a(D)D

    move-result-wide v6

    sub-double v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_0

    sub-double v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/google/android/location/localizer/k;->a(DDDD)D

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_1
    sub-double p0, v4, v6

    sub-double p2, v0, v2

    add-double p4, v4, v6

    const-wide/high16 p6, 0x4000

    div-double p4, p4, p6

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double p4, p4, p4

    mul-double/2addr p0, p0

    mul-double p4, p4, p2

    mul-double p2, p2, p4

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide p2, 0x415849c600000000L

    mul-double/2addr p0, p2

    goto :goto_0
.end method

.method public static c(LW/o;LW/o;)D
    .locals 6

    invoke-static {p0}, Lcom/google/android/location/localizer/k;->b(LW/o;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/location/localizer/k;->b(LW/o;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/location/localizer/k;->a(LW/o;)D

    move-result-wide v2

    invoke-static {p1}, Lcom/google/android/location/localizer/k;->a(LW/o;)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static c(I)I
    .locals 1

    const v0, 0x20c49b

    if-le p0, v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    mul-int/lit16 v0, p0, 0x3e8

    goto :goto_0
.end method

.method public static c(LW/o;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, LW/o;->c:I

    const v1, 0x989680

    if-le v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, LW/o;->a:I

    if-nez v0, :cond_1

    iget v0, p0, LW/o;->b:I

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, LW/o;->a:I

    const v1, 0x35a4e900

    if-gt v0, v1, :cond_2

    iget v0, p0, LW/o;->a:I

    const v1, -0x35a4e900

    if-lt v0, v1, :cond_2

    iget v0, p0, LW/o;->b:I

    const v1, 0x6b49d200

    if-gt v0, v1, :cond_2

    iget v0, p0, LW/o;->b:I

    const v1, -0x6b49d200

    if-ge v0, v1, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(D)D
    .locals 2

    const-wide v0, 0x401921fb54442d18L

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static d(I)D
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x416312d000000000L

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static d(LW/o;LW/o;)D
    .locals 4

    invoke-static {p0}, Lcom/google/android/location/localizer/k;->a(LW/o;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/location/localizer/k;->a(LW/o;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static e(D)I
    .locals 4

    const-wide v0, 0x4066800000000000L

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    const-wide v2, 0x416312d000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method
