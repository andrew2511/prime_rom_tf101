.class public Laa/l;
.super Laa/w;

# interfaces
.implements Laa/y;


# instance fields
.field private a:LF/M;

.field private d:I


# direct methods
.method constructor <init>(Laa/C;)V
    .locals 1

    const-string v0, "driveabout_polyline_snapping"

    invoke-direct {p0, v0, p1}, Laa/w;-><init>(Ljava/lang/String;Laa/C;)V

    const/4 v0, 0x2

    iput v0, p0, Laa/l;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "driveabout_polyline_snapping"

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Laa/l;->d:I

    return-void
.end method

.method public a(LF/M;)V
    .locals 0

    iput-object p1, p0, Laa/l;->a:LF/M;

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    move-object v0, p1

    check-cast v0, Laa/E;

    move-object v1, v0

    iget v2, p0, Laa/l;->d:I

    invoke-virtual {v1, v2}, Laa/E;->b(I)V

    iget-object v1, p0, Laa/l;->a:LF/M;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Laa/w;->onLocationChanged(Landroid/location/Location;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, LG/Q;->a(D)D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, LG/Q;->a(DD)LG/Q;

    move-result-object v3

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v4

    invoke-virtual {v4}, Lad/t;->F()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Laa/l;->a:LF/M;

    float-to-double v6, v4

    mul-double/2addr v1, v6

    invoke-virtual {v5, v3, v1, v2}, LF/M;->a(LG/Q;D)LF/i;

    move-result-object v1

    new-instance v2, Laa/E;

    invoke-direct {v2, p1}, Laa/E;-><init>(Landroid/location/Location;)V

    if-eqz v1, :cond_1

    const-wide/high16 v3, 0x3ff0

    invoke-virtual {v2, v3, v4}, Laa/E;->a(D)V

    invoke-virtual {v1}, LF/i;->c()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Laa/E;->setBearing(F)V

    invoke-virtual {v2, v1}, Laa/E;->a(LF/i;)V

    :goto_1
    invoke-super {p0, v2}, Laa/w;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Laa/E;->a(D)V

    goto :goto_1
.end method
