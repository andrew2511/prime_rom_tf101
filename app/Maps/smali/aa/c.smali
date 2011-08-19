.class Laa/c;
.super Laa/w;


# instance fields
.field final synthetic a:Laa/D;

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Laa/E;


# direct methods
.method constructor <init>(Laa/D;Laa/C;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Laa/c;->a:Laa/D;

    const-string v0, "driveabout_base_location"

    invoke-direct {p0, v0, p2}, Laa/w;-><init>(Ljava/lang/String;Laa/C;)V

    invoke-static {p1}, Laa/D;->a(Laa/D;)Laa/g;

    move-result-object v0

    invoke-interface {v0}, Laa/g;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Laa/D;->a(Laa/D;)Laa/g;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Laa/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Laa/c;->d:Z

    iput v2, p0, Laa/c;->e:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Laa/c;->a:Laa/D;

    invoke-static {v0}, Laa/D;->a(Laa/D;)Laa/g;

    move-result-object v0

    invoke-interface {v0}, Laa/g;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/c;->a:Laa/D;

    invoke-static {v0}, Laa/D;->a(Laa/D;)Laa/g;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Laa/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Laa/c;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Laa/c;->f:Z

    return v0
.end method

.method public c()Z
    .locals 2

    iget-boolean v0, p0, Laa/c;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Laa/c;->e:I

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

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Laa/c;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "driveabout_gps_fixup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Laa/c;->d:Z

    const/4 v0, 0x2

    iput v0, p0, Laa/c;->e:I

    iget-boolean v0, p0, Laa/c;->f:Z

    if-eqz v0, :cond_3

    invoke-static {}, Laa/D;->b()F

    move-result v0

    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_4

    move v0, v2

    :goto_2
    if-nez v0, :cond_2

    iget-boolean v1, p0, Laa/c;->f:Z

    if-nez v1, :cond_0

    :cond_2
    iput-boolean v0, p0, Laa/c;->f:Z

    new-instance v0, Laa/E;

    invoke-direct {v0, p1}, Laa/E;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Laa/c;->g:Laa/E;

    iget-object v0, p0, Laa/c;->g:Laa/E;

    invoke-virtual {v0, v2}, Laa/E;->a(Z)V

    iget-object v0, p0, Laa/c;->g:Laa/E;

    iget-boolean v1, p0, Laa/c;->f:Z

    invoke-virtual {v0, v1}, Laa/E;->b(Z)V

    iget-object v0, p0, Laa/c;->g:Laa/E;

    :goto_3
    invoke-super {p0, v0}, Laa/w;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Laa/D;->a()F

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move-object v0, p1

    goto :goto_3
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Laa/c;->d:Z

    iput-boolean v1, p0, Laa/c;->f:Z

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laa/c;->d:Z

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Laa/c;->e:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Laa/c;->f:Z

    :cond_0
    return-void
.end method
