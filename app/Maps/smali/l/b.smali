.class public Ll/b;
.super Ll/m;


# instance fields
.field a:I

.field b:I

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/location/LocationListener;Ll/t;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "integrated_location_provider"

    invoke-direct {p0, v0, p1}, Ll/m;-><init>(Ljava/lang/String;Landroid/location/LocationListener;)V

    iput v2, p0, Ll/b;->a:I

    iput v2, p0, Ll/b;->b:I

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
    iput-boolean v0, p0, Ll/b;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    iget v0, p0, Ll/b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    iget-boolean v0, p0, Ll/b;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ll/b;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cell_provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ll/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Ll/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Ll/m;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "wifi_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Ll/b;->a:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Ll/b;->b:I

    goto :goto_0
.end method
