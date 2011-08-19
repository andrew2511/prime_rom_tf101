.class public LH/g;
.super LH/b;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final g:Landroid/content/Context;

.field private h:Lf/h;

.field private i:Landroid/location/Location;

.field private j:LH/c;

.field private k:Z

.field private l:Lar/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, LH/b;-><init>(ZZ)V

    iput-object v1, p0, LH/g;->h:Lf/h;

    iput-object v1, p0, LH/g;->i:Landroid/location/Location;

    iput-boolean v2, p0, LH/g;->k:Z

    iput-object v1, p0, LH/g;->l:Lar/b;

    iput-object p1, p0, LH/g;->g:Landroid/content/Context;

    return-void
.end method

.method static a(Law/e;Law/f;)Law/e;
    .locals 2

    :try_start_0
    new-instance v0, Law/e;

    invoke-direct {v0, p1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {p0}, Law/e;->f()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Law/e;->a([B)Law/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "RMI"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, LH/g;->k:Z

    return-void
.end method

.method public ah_()Law/e;
    .locals 2

    iget-object v0, p0, LH/g;->l:Lar/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, LH/g;->i:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, LH/g;->l:Lar/b;

    iget-object v1, p0, LH/g;->i:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lar/b;->a(Landroid/location/Location;)Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, LZ/l;->j:Law/f;

    invoke-static {v0, v1}, LH/g;->a(Law/e;Law/f;)Law/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "network"

    return-object v0
.end method

.method protected f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LH/g;->l:Lar/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, LH/g;->l:Lar/b;

    invoke-virtual {v0}, Lar/b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, LH/g;->l:Lar/b;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, LH/g;->k()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected g()V
    .locals 6

    new-instance v0, LH/c;

    const-string v1, ""

    invoke-direct {v0, v1}, LH/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LH/g;->j:LH/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getMainLooper() returned null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LH/g;->l:Lar/b;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lar/b;

    iget-object v1, p0, LH/g;->g:Landroid/content/Context;

    const/4 v2, 0x5

    const/16 v5, 0x2d0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lar/b;-><init>(Landroid/content/Context;ILandroid/location/LocationListener;Landroid/os/Looper;I)V

    iput-object v0, p0, LH/g;->l:Lar/b;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public h()Lf/h;
    .locals 1

    iget-object v0, p0, LH/g;->h:Lf/h;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, LH/g;->k:Z

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    const/4 v6, -0x1

    const-wide v4, 0x412e848000000000L

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LH/g;->j:LH/c;

    invoke-virtual {v0, p1}, LH/c;->a(Landroid/location/Location;)V

    iput-object p1, p0, LH/g;->i:Landroid/location/Location;

    new-instance v0, Lf/h;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V

    iput-object v0, p0, LH/g;->h:Lf/h;

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_1

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

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    move v4, v0

    :goto_2
    const/4 v5, 0x0

    iget-object v1, p0, LH/g;->h:Lf/h;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, LH/g;->a(Lf/h;IIILG/Z;J)V

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_2
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
