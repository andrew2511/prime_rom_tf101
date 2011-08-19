.class Laa/o;
.super Ljava/lang/Object;

# interfaces
.implements Laa/g;


# instance fields
.field private final a:Landroid/location/LocationManager;

.field private b:Landroid/location/GpsStatus;

.field private final c:Laa/F;

.field private final d:LQ/g;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Laa/F;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laa/F;-><init>(Laa/n;)V

    iput-object v0, p0, Laa/o;->c:Laa/F;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Laa/o;->a:Landroid/location/LocationManager;

    new-instance v0, Laa/s;

    invoke-direct {v0, p0}, Laa/s;-><init>(Laa/o;)V

    new-instance v1, LQ/d;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-direct {v1, v0, v2}, LQ/d;-><init>(LQ/e;Lac/p;)V

    invoke-virtual {v1, p1}, LQ/d;->a(Landroid/content/Context;)V

    iput-object v1, p0, Laa/o;->d:LQ/g;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Laa/n;)V
    .locals 0

    invoke-direct {p0, p1}, Laa/o;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Laa/o;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Laa/o;->a:Landroid/location/LocationManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Laa/o;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laa/o;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Laa/C;)V
    .locals 1

    iget-object v0, p0, Laa/o;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public a(Laa/x;)V
    .locals 1

    iget-object v0, p0, Laa/o;->c:Laa/F;

    invoke-virtual {v0, p1}, Laa/F;->a(Laa/x;)V

    return-void
.end method

.method public a(Ljava/lang/String;JFLaa/C;)V
    .locals 6

    iget-object v0, p0, Laa/o;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/o;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/location/GpsStatus$Listener;)Z
    .locals 1

    iget-object v0, p0, Laa/o;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Laa/o;->d:LQ/g;

    iget-object v1, p0, Laa/o;->c:Laa/F;

    invoke-virtual {v0, v1}, LQ/g;->b(LQ/i;)V

    return-void
.end method

.method public b(Laa/C;)V
    .locals 2

    iget-object v0, p0, Laa/o;->c:Laa/F;

    invoke-virtual {v0, p1}, Laa/F;->a(Laa/C;)V

    iget-object v0, p0, Laa/o;->d:LQ/g;

    iget-object v1, p0, Laa/o;->c:Laa/F;

    invoke-virtual {v0, v1}, LQ/g;->a(LQ/i;)V

    return-void
.end method

.method public b(Landroid/location/GpsStatus$Listener;)V
    .locals 1

    iget-object v0, p0, Laa/o;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Laa/o;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/o;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Laa/k;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Laa/o;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Laa/o;->b:Landroid/location/GpsStatus;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iput-object v0, p0, Laa/o;->b:Landroid/location/GpsStatus;

    iget-object v0, p0, Laa/o;->b:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/GpsSatellite;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Laa/k;

    invoke-direct {v0, v2, v1}, Laa/k;-><init>(II)V

    return-object v0
.end method

.method public d()F
    .locals 1

    iget-object v0, p0, Laa/o;->d:LQ/g;

    invoke-virtual {v0}, LQ/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/o;->d:LQ/g;

    invoke-virtual {v0}, LQ/g;->d()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x4080

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Laa/o;->d:LQ/g;

    invoke-virtual {v0}, LQ/g;->h()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Laa/o;->d:LQ/g;

    invoke-virtual {v0}, LQ/g;->i()V

    return-void
.end method
