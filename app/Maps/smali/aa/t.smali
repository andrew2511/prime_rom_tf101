.class public Laa/t;
.super Laa/w;


# instance fields
.field private final a:LQ/f;

.field private final d:LQ/f;

.field private e:Landroid/location/Location;

.field private f:Z

.field private g:F


# direct methods
.method public constructor <init>(Laa/C;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "driveabout_orientation_filter"

    invoke-direct {p0, v0, p1}, Laa/w;-><init>(Ljava/lang/String;Laa/C;)V

    new-instance v0, LQ/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LQ/f;-><init>(Z)V

    iput-object v0, p0, Laa/t;->a:LQ/f;

    new-instance v0, LQ/f;

    invoke-direct {v0, v2}, LQ/f;-><init>(Z)V

    iput-object v0, p0, Laa/t;->d:LQ/f;

    iput-boolean v2, p0, Laa/t;->f:Z

    const/4 v0, 0x0

    iput v0, p0, Laa/t;->g:F

    return-void
.end method


# virtual methods
.method public a(Laa/B;)V
    .locals 5

    new-instance v0, Laa/B;

    invoke-direct {v0, p1}, Laa/B;-><init>(Laa/B;)V

    const-string v1, "driveabout_orientation_filter"

    invoke-virtual {v0, v1}, Laa/B;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Laa/B;->c()F

    move-result v1

    iget-boolean v2, p0, Laa/t;->f:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x41f0

    :goto_0
    iget-object v3, p0, Laa/t;->e:Landroid/location/Location;

    if-eqz v3, :cond_1

    iget-object v3, p0, Laa/t;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Laa/t;->g:F

    const v4, 0x3e4ccccd

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Laa/t;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-static {v3, v1}, LG/H;->a(FF)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Laa/t;->a:LQ/f;

    invoke-virtual {p1}, Laa/B;->b()J

    move-result-wide v2

    iget-object v4, p0, Laa/t;->e:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, LQ/f;->a(JF)F

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Laa/t;->f:Z

    :goto_1
    invoke-virtual {v0, v1}, Laa/B;->a(F)V

    iget-object v1, p0, Laa/t;->d:LQ/f;

    invoke-virtual {p1}, Laa/B;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Laa/B;->d()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, LQ/f;->a(JF)F

    move-result v1

    invoke-virtual {v0, v1}, Laa/B;->b(F)V

    iget-object v1, p0, Laa/t;->c:Laa/C;

    invoke-interface {v1, v0}, Laa/C;->a(Laa/B;)V

    return-void

    :cond_0
    const/high16 v2, 0x41c8

    goto :goto_0

    :cond_1
    iget-object v1, p0, Laa/t;->a:LQ/f;

    invoke-virtual {p1}, Laa/B;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Laa/B;->c()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, LQ/f;->a(JF)F

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Laa/t;->f:Z

    goto :goto_1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iput-object p1, p0, Laa/t;->e:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Laa/t;->g:F

    :cond_0
    return-void
.end method
