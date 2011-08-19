.class public abstract Lcom/google/googlenav/gesture/l;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x7fc0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/googlenav/gesture/l;->a:F

    iput v0, p0, Lcom/google/googlenav/gesture/l;->b:F

    iput v0, p0, Lcom/google/googlenav/gesture/l;->c:F

    return-void
.end method

.method public static a(FFFF)F
    .locals 4

    sub-float v0, p2, p0

    float-to-double v0, v0

    sub-float v2, p3, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public a()F
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/googlenav/gesture/l;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/googlenav/gesture/l;->a(I)F

    move-result v0

    invoke-virtual {p0, v1}, Lcom/google/googlenav/gesture/l;->b(I)F

    move-result v1

    invoke-virtual {p0, v3}, Lcom/google/googlenav/gesture/l;->a(I)F

    move-result v2

    invoke-virtual {p0, v3}, Lcom/google/googlenav/gesture/l;->b(I)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/gesture/l;->a(FFFF)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/l;->a:F

    :cond_0
    iget v0, p0, Lcom/google/googlenav/gesture/l;->a:F

    return v0
.end method

.method public abstract a(I)F
.end method

.method public b()F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/googlenav/gesture/l;->c:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/googlenav/gesture/l;->a(I)F

    move-result v0

    invoke-virtual {p0, v3}, Lcom/google/googlenav/gesture/l;->a(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v2}, Lcom/google/googlenav/gesture/l;->b(I)F

    move-result v1

    invoke-virtual {p0, v3}, Lcom/google/googlenav/gesture/l;->b(I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/googlenav/gesture/l;->c:F

    :cond_0
    iget v0, p0, Lcom/google/googlenav/gesture/l;->c:F

    return v0
.end method

.method public abstract b(I)F
.end method

.method public abstract c()J
.end method

.method public abstract d()F
.end method

.method public abstract e()F
.end method

.method public abstract f()V
.end method
