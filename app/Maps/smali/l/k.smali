.class public Ll/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ll/r;

.field private final b:Ll/t;

.field private final c:Ll/B;

.field private d:Ll/j;

.field private e:Ll/P;

.field private f:Ll/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;LC/b;)V
    .locals 3

    new-instance v0, Ll/r;

    invoke-direct {v0}, Ll/r;-><init>()V

    invoke-static {p1, p2}, Ll/k;->a(Landroid/content/Context;LC/b;)Ll/t;

    move-result-object v1

    invoke-static {p2}, Ll/k;->a(LC/b;)Ll/B;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Ll/k;-><init>(Ll/r;Ll/t;Landroid/content/Context;Ll/B;)V

    return-void
.end method

.method constructor <init>(Ll/r;Ll/t;Landroid/content/Context;Ll/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/k;->a:Ll/r;

    iput-object p2, p0, Ll/k;->b:Ll/t;

    iput-object p4, p0, Ll/k;->c:Ll/B;

    invoke-direct {p0}, Ll/k;->f()V

    return-void
.end method

.method private static a(LC/b;)Ll/B;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ll/d;

    invoke-direct {v0, p0}, Ll/d;-><init>(LC/b;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ll/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll/p;-><init>(Ll/A;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;LC/b;)Ll/t;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ll/e;

    invoke-direct {v0, p0, v2}, Ll/e;-><init>(Landroid/content/Context;Ll/A;)V

    if-eqz p1, :cond_0

    new-instance v1, Ll/L;

    invoke-direct {v1, p1, v0, v2}, Ll/L;-><init>(LC/b;Ll/t;Ll/A;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private d()V
    .locals 7

    iget-object v0, p0, Ll/k;->b:Ll/t;

    invoke-interface {v0}, Ll/t;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll/k;->b:Ll/t;

    const-string v1, "gps"

    invoke-static {}, Ll/k;->h()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    iget-object v5, p0, Ll/k;->a:Ll/r;

    invoke-interface/range {v0 .. v6}, Ll/t;->a(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ll/k;->b:Ll/t;

    invoke-interface {v2}, Ll/t;->a()Ljava/util/List;

    move-result-object v2

    const-string v3, "gps"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ll/k;->b:Ll/t;

    const-string v4, "gps"

    invoke-interface {v3, v4}, Ll/t;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-static {}, Ll/r;->e()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    iget-object v4, p0, Ll/k;->a:Ll/r;

    invoke-virtual {v4, v3}, Ll/r;->onLocationChanged(Landroid/location/Location;)V

    :cond_0
    const-string v3, "network"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ll/k;->b:Ll/t;

    const-string v3, "network"

    invoke-interface {v2, v3}, Ll/t;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-static {}, Ll/k;->g()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    iget-object v0, p0, Ll/k;->a:Ll/r;

    invoke-virtual {v0, v2}, Ll/r;->onLocationChanged(Landroid/location/Location;)V

    :cond_1
    return-void

    :cond_2
    move-object v2, v8

    goto :goto_1

    :cond_3
    move-object v3, v8

    goto :goto_0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Ll/k;->c:Ll/B;

    iget-object v1, p0, Ll/k;->a:Ll/r;

    invoke-interface {v0, v1}, Ll/B;->a(Landroid/location/LocationListener;)Ll/j;

    move-result-object v0

    iput-object v0, p0, Ll/k;->d:Ll/j;

    iget-object v0, p0, Ll/k;->c:Ll/B;

    iget-object v1, p0, Ll/k;->a:Ll/r;

    iget-object v2, p0, Ll/k;->b:Ll/t;

    invoke-interface {v0, v1, v2}, Ll/B;->a(Landroid/location/LocationListener;Ll/t;)Ll/P;

    move-result-object v0

    iput-object v0, p0, Ll/k;->e:Ll/P;

    iget-object v0, p0, Ll/k;->a:Ll/r;

    invoke-virtual {v0}, Ll/r;->b()LK/e;

    iget-object v0, p0, Ll/k;->c:Ll/B;

    iget-object v1, p0, Ll/k;->a:Ll/r;

    iget-object v2, p0, Ll/k;->b:Ll/t;

    invoke-interface {v0, v1, v2}, Ll/B;->b(Landroid/location/LocationListener;Ll/t;)Ll/b;

    move-result-object v0

    iput-object v0, p0, Ll/k;->f:Ll/b;

    iget-object v0, p0, Ll/k;->a:Ll/r;

    const-string v1, "gps"

    iget-object v2, p0, Ll/k;->d:Ll/j;

    invoke-virtual {v0, v1, v2}, Ll/r;->a(Ljava/lang/String;Landroid/location/LocationListener;)V

    iget-object v0, p0, Ll/k;->a:Ll/r;

    const-string v1, "gps_fixup_provider"

    iget-object v2, p0, Ll/k;->e:Ll/P;

    invoke-virtual {v0, v1, v2}, Ll/r;->a(Ljava/lang/String;Landroid/location/LocationListener;)V

    iget-object v0, p0, Ll/k;->a:Ll/r;

    const-string v1, "network"

    iget-object v2, p0, Ll/k;->e:Ll/P;

    invoke-virtual {v0, v1, v2}, Ll/r;->a(Ljava/lang/String;Landroid/location/LocationListener;)V

    iget-object v0, p0, Ll/k;->a:Ll/r;

    const-string v1, "base_location_provider"

    iget-object v2, p0, Ll/k;->f:Ll/b;

    invoke-virtual {v0, v1, v2}, Ll/r;->a(Ljava/lang/String;Landroid/location/LocationListener;)V

    return-void
.end method

.method private static g()J
    .locals 2

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->y:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private static h()I
    .locals 1

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->c:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Ll/k;->e()V

    invoke-direct {p0}, Ll/k;->d()V

    return-void
.end method

.method public a(Landroid/location/LocationListener;)V
    .locals 2

    iget-object v0, p0, Ll/k;->a:Ll/r;

    const-string v1, "integrated_location_provider"

    invoke-virtual {v0, v1, p1}, Ll/r;->a(Ljava/lang/String;Landroid/location/LocationListener;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Ll/k;->b:Ll/t;

    iget-object v1, p0, Ll/k;->a:Ll/r;

    invoke-interface {v0, v1}, Ll/t;->a(Landroid/location/LocationListener;)V

    iget-object v0, p0, Ll/k;->a:Ll/r;

    invoke-virtual {v0}, Ll/r;->a()V

    return-void
.end method

.method public c()LK/e;
    .locals 1

    iget-object v0, p0, Ll/k;->a:Ll/r;

    invoke-virtual {v0}, Ll/r;->b()LK/e;

    move-result-object v0

    return-object v0
.end method
