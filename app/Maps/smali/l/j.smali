.class public Ll/j;
.super Ll/m;


# direct methods
.method public constructor <init>(Landroid/location/LocationListener;)V
    .locals 1

    const-string v0, "gps_fixup_provider"

    invoke-direct {p0, v0, p1}, Ll/m;-><init>(Ljava/lang/String;Landroid/location/LocationListener;)V

    return-void
.end method

.method static a()F
    .locals 1

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->g:F

    return v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 2

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ll/j;->b()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->setAccuracy(F)V

    :cond_0
    return-void
.end method

.method static b()F
    .locals 1

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->w:F

    return v0
.end method

.method private b(Landroid/location/Location;)V
    .locals 2

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    invoke-static {}, Ll/j;->a()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->removeSpeed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    new-instance v0, Ll/g;

    invoke-direct {v0, p1}, Ll/g;-><init>(Landroid/location/Location;)V

    sget-object v1, Ll/s;->a:Ll/s;

    invoke-virtual {v0, v1}, Ll/g;->a(Ll/s;)V

    invoke-direct {p0, v0}, Ll/j;->a(Landroid/location/Location;)V

    invoke-direct {p0, v0}, Ll/j;->b(Landroid/location/Location;)V

    invoke-super {p0, v0}, Ll/m;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
