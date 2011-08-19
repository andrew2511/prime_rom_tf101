.class public Lcom/google/googlenav/gesture/n;
.super Lcom/google/googlenav/gesture/B;


# instance fields
.field a:F

.field b:F


# direct methods
.method public constructor <init>(ILcom/google/googlenav/gesture/w;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/gesture/B;-><init>(ILcom/google/googlenav/gesture/w;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/gesture/n;->a:F

    return v0
.end method

.method public a(FF)V
    .locals 2

    const/high16 v1, 0x4000

    div-float v0, p1, v1

    iput v0, p0, Lcom/google/googlenav/gesture/n;->a:F

    div-float v0, p2, v1

    iput v0, p0, Lcom/google/googlenav/gesture/n;->b:F

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/gesture/n;->b:F

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/gesture/n;->a:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/gesture/n;->b:F

    return v0
.end method

.method public e()F
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/gesture/n;->c:Lcom/google/googlenav/gesture/w;

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/w;->c()F

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/gesture/n;->c:Lcom/google/googlenav/gesture/w;

    invoke-virtual {v1}, Lcom/google/googlenav/gesture/w;->a()F

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/gesture/n;->c:Lcom/google/googlenav/gesture/w;

    invoke-virtual {v2}, Lcom/google/googlenav/gesture/w;->b()F

    move-result v2

    iget v3, p0, Lcom/google/googlenav/gesture/n;->b:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    sub-float v0, v1, v0

    mul-float/2addr v0, v2

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4070

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
