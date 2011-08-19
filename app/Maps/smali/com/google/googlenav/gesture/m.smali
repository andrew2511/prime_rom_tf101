.class public Lcom/google/googlenav/gesture/m;
.super Lcom/google/googlenav/gesture/j;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/gesture/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/gesture/j;-><init>(Lcom/google/googlenav/gesture/h;)V

    return-void
.end method


# virtual methods
.method protected a(F)F
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected a(Lcom/google/googlenav/gesture/l;I)F
    .locals 1

    invoke-virtual {p1, p2}, Lcom/google/googlenav/gesture/l;->a(I)F

    move-result v0

    return v0
.end method

.method protected b(Lcom/google/googlenav/gesture/l;I)F
    .locals 1

    invoke-virtual {p1, p2}, Lcom/google/googlenav/gesture/l;->b(I)F

    move-result v0

    return v0
.end method

.method protected b(Lcom/google/googlenav/gesture/w;)Z
    .locals 1

    const-string v0, "t"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/gesture/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/gesture/m;->a:Lcom/google/googlenav/gesture/h;

    invoke-interface {v0, p1}, Lcom/google/googlenav/gesture/h;->b(Lcom/google/googlenav/gesture/w;)Z

    move-result v0

    return v0
.end method

.method protected d(Lcom/google/googlenav/gesture/w;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/m;->a:Lcom/google/googlenav/gesture/h;

    invoke-interface {v0, p1}, Lcom/google/googlenav/gesture/h;->c(Lcom/google/googlenav/gesture/w;)V

    return-void
.end method

.method protected f(Lcom/google/googlenav/gesture/w;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/m;->a:Lcom/google/googlenav/gesture/h;

    invoke-interface {v0, p1}, Lcom/google/googlenav/gesture/h;->a(Lcom/google/googlenav/gesture/w;)Z

    move-result v0

    return v0
.end method
