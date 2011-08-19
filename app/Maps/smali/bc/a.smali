.class public Lbc/a;
.super LH/b;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Landroid/location/Location;

.field private final i:Lac/p;

.field private j:J

.field private k:Z

.field private final l:Z

.field private m:LH/c;

.field private n:LH/c;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, LH/b;-><init>(ZZ)V

    const-string v0, "cell"

    iput-object v0, p0, Lbc/a;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lbc/a;->k:Z

    iput-boolean p1, p0, Lbc/a;->l:Z

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    iput-object v0, p0, Lbc/a;->i:Lac/p;

    return-void
.end method

.method public static a(Landroid/location/Location;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "networkLocationType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "networkLocationType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Landroid/location/Location;Z)V
    .locals 11

    if-eqz p1, :cond_6

    if-eqz p2, :cond_2

    iget-object v0, p0, Lbc/a;->n:LH/c;

    :goto_0
    invoke-virtual {v0, p1}, LH/c;->a(Landroid/location/Location;)V

    new-instance v1, Lf/h;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v1, v0, v2}, Lf/h;-><init>(II)V

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    move v4, v0

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbc/a;->c:Z

    iget-object v0, p0, Lbc/a;->i:Lac/p;

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v5

    if-eqz p2, :cond_5

    const-string v0, "gps"

    iput-object v0, p0, Lbc/a;->g:Ljava/lang/String;

    iput-wide v5, p0, Lbc/a;->j:J

    invoke-virtual {p0}, Lbc/a;->n()I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    invoke-virtual {p0}, Lbc/a;->n()I

    move-result v0

    if-gt v0, v4, :cond_0

    iget-object v0, p0, Lbc/a;->h:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbc/a;->h:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    invoke-virtual {p0}, Lbc/a;->n()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_0

    iget-wide v7, p0, Lbc/a;->b:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1770

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    :cond_0
    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lbc/a;->a(Lf/h;IIILG/Z;J)V

    iput-object p1, p0, Lbc/a;->h:Landroid/location/Location;

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v0, p0, Lbc/a;->m:LH/c;

    goto/16 :goto_0

    :cond_3
    const/4 v0, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    move v4, v0

    goto :goto_2

    :cond_5
    iget-wide v7, p0, Lbc/a;->j:J

    const-wide/32 v9, 0xea60

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    invoke-static {p1}, Lbc/a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbc/a;->g:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lbc/a;->a(Lf/h;IIILG/Z;J)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lbc/a;->p()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lbc/a;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbc/a;->c:Z

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "network"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cell"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "wifi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private z()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbc/a;->j:J

    const/4 v0, 0x0

    iget-boolean v1, p0, Lbc/a;->l:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbc/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v2, "network"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lbc/a;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lbc/a;->i:Lac/p;

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lbc/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xafc80

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbc/a;->a(Landroid/location/Location;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lbc/a;->k()V

    goto :goto_0
.end method


# virtual methods
.method public a(LH/f;)V
    .locals 1

    invoke-super {p0, p1}, LH/b;->a(LH/f;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LH/f;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lbc/a;->k:Z

    invoke-virtual {p0}, Lbc/a;->f()V

    invoke-virtual {p0}, Lbc/a;->g()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lbc/a;->l:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, LH/b;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lbc/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbc/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lbc/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method protected g()V
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v0, LH/c;

    const-string v1, "n"

    invoke-direct {v0, v1}, LH/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbc/a;->m:LH/c;

    new-instance v0, LH/c;

    const-string v1, "g"

    invoke-direct {v0, v1}, LH/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbc/a;->n:LH/c;

    invoke-direct {p0}, Lbc/a;->z()V

    iget-boolean v0, p0, Lbc/a;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbc/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbc/a;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_0
    iget-boolean v0, p0, Lbc/a;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbc/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbc/a;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_1
    return-void
.end method

.method public h()Lf/h;
    .locals 7

    const/4 v2, 0x0

    const-wide v5, 0x412e848000000000L

    iget-object v0, p0, Lbc/a;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbc/a;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbc/a;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbc/a;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Lf/h;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v0, v3

    invoke-direct {v1, v2, v0}, Lf/h;-><init>(II)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lbc/a;->k:Z

    return v0
.end method

.method public j()Law/e;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-wide v4, 0x416312d000000000L

    iget-object v0, p0, Lbc/a;->h:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Law/e;

    sget-object v1, LZ/d;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const-string v1, "gps"

    invoke-virtual {v0, v7, v1}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lbc/a;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x6

    iget-object v2, p0, Lbc/a;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lbc/a;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v1, 0xd

    iget-object v2, p0, Lbc/a;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    new-instance v1, Law/e;

    sget-object v2, LZ/o;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget-object v2, p0, Lbc/a;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v6, v2}, Law/e;->h(II)V

    iget-object v2, p0, Lbc/a;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v7, v2}, Law/e;->h(II)V

    invoke-virtual {v0, v6, v1}, Law/e;->b(ILaw/e;)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lbc/a;->a(Landroid/location/Location;Z)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbc/a;->z()V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lbc/a;->z()V

    :cond_0
    return-void
.end method
