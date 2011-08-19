.class public Ll/P;
.super Ll/m;


# instance fields
.field a:I

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/location/LocationListener;Ll/t;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "base_location_provider"

    invoke-direct {p0, v0, p1}, Ll/m;-><init>(Ljava/lang/String;Landroid/location/LocationListener;)V

    iput v2, p0, Ll/P;->a:I

    invoke-interface {p2}, Ll/t;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gps"

    invoke-interface {p2, v0}, Ll/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Ll/P;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()F
    .locals 1

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->x:F

    return v0
.end method


# virtual methods
.method a()Z
    .locals 2

    iget-boolean v0, p0, Ll/P;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ll/P;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ll/P;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ll/g;

    invoke-direct {v0, p1}, Ll/g;-><init>(Landroid/location/Location;)V

    sget-object v1, Ll/s;->b:Ll/s;

    invoke-virtual {v0, v1}, Ll/g;->a(Ll/s;)V

    :goto_1
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {}, Ll/P;->b()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gtz v1, :cond_0

    :cond_2
    invoke-super {p0, v0}, Ll/m;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    :cond_3
    const-string v1, "gps_fixup_provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll/P;->b:Z

    const/4 v0, 0x2

    iput v0, p0, Ll/P;->a:I

    :cond_4
    move-object v0, p1

    goto :goto_1
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Ll/P;->a:I

    :cond_0
    return-void
.end method
