.class public Ll/n;
.super Ll/m;


# direct methods
.method public static a()J
    .locals 4

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->b:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    invoke-super {p0, p1}, Ll/m;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
