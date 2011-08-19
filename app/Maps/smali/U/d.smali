.class public LU/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DD)F
    .locals 6

    sub-double v0, p2, p0

    double-to-float v0, v0

    cmpg-double v1, p0, p2

    if-gez v1, :cond_0

    double-to-float v1, p0

    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float v0, v2

    add-float/2addr v0, v1

    return v0

    :cond_0
    double-to-float v1, p2

    goto :goto_0
.end method

.method public static a(FF)F
    .locals 6

    sub-float v0, p1, p0

    cmpg-float v1, p0, p1

    if-gez v1, :cond_0

    move v1, p0

    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float v0, v2

    add-float/2addr v0, v1

    return v0

    :cond_0
    move v1, p1

    goto :goto_0
.end method

.method public static a(FFFF)F
    .locals 4

    sub-float v0, p1, p3

    float-to-double v0, v0

    sub-float v2, p0, p2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(I)F
    .locals 6

    const/4 v0, 0x0

    sub-int v1, p0, v0

    int-to-float v1, v1

    if-ge v0, p0, :cond_0

    int-to-float v0, v0

    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v1

    mul-double v1, v2, v4

    double-to-float v1, v1

    add-float/2addr v0, v1

    return v0

    :cond_0
    int-to-float v0, p0

    goto :goto_0
.end method

.method public static a()I
    .locals 3

    const/4 v2, 0x1

    invoke-static {v2}, LU/d;->a(I)F

    move-result v0

    const/high16 v1, 0x3f00

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static b(FFFF)F
    .locals 6

    const-wide/high16 v4, 0x4000

    sub-float v0, p2, p0

    float-to-double v0, v0

    sub-float v2, p3, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
