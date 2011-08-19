.class public Lcom/google/googlenav/appwidget/hotpot/z;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/location/LocationManager;

.field private c:Lcom/google/googlenav/appwidget/hotpot/widget/h;

.field private d:Lcom/google/googlenav/appwidget/hotpot/widget/g;

.field private e:Lcom/google/googlenav/appwidget/hotpot/i;

.field private f:Landroid/net/ConnectivityManager;

.field private g:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

.field private h:Lab/d;

.field private i:Lcom/google/googlenav/appwidget/hotpot/B;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/g;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/i;Lcom/google/googlenav/appwidget/hotpot/persistence/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/B;->a:Lcom/google/googlenav/appwidget/hotpot/B;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->i:Lcom/google/googlenav/appwidget/hotpot/B;

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/z;->d:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    iput-object p3, p0, Lcom/google/googlenav/appwidget/hotpot/z;->c:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    iput-object p4, p0, Lcom/google/googlenav/appwidget/hotpot/z;->e:Lcom/google/googlenav/appwidget/hotpot/i;

    iput-object p5, p0, Lcom/google/googlenav/appwidget/hotpot/z;->g:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    invoke-interface {p3}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->m()Lab/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->h:Lab/d;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->f:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private a(J)Landroid/location/Location;
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v7

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    :cond_0
    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, p1, p2}, Lcom/google/googlenav/appwidget/hotpot/z;->a(Landroid/location/Location;J)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v7

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method private a(Landroid/app/PendingIntent;)V
    .locals 7

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/B;->b:Lcom/google/googlenav/appwidget/hotpot/B;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->i:Lcom/google/googlenav/appwidget/hotpot/B;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized a(Landroid/location/Location;ZZ)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/z;->h()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->f:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lab/d;

    invoke-static {p1}, Lbc/a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lab/d;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->i:Lcom/google/googlenav/appwidget/hotpot/B;

    sget-object v2, Lcom/google/googlenav/appwidget/hotpot/B;->c:Lcom/google/googlenav/appwidget/hotpot/B;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->c:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->e()Lab/d;

    move-result-object v1

    invoke-virtual {v1}, Lab/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lab/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->c:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Lab/d;)V

    :cond_2
    :goto_1
    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/B;->a:Lcom/google/googlenav/appwidget/hotpot/B;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->i:Lcom/google/googlenav/appwidget/hotpot/B;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    const-string v1, "location_fix"

    invoke-static {v1, v0}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz p2, :cond_4

    const-string v1, "is_manual"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p3, :cond_5

    const-string v1, "is_latitude"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->e:Lcom/google/googlenav/appwidget/hotpot/i;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/appwidget/hotpot/i;->a(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private a(Landroid/location/Location;)Z
    .locals 12

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->c:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->e()Lab/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->c:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lab/d;

    invoke-static {p1}, Lbc/a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lab/d;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lab/d;->a()Lf/h;

    move-result-object v2

    invoke-virtual {v1}, Lab/d;->a()Lf/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf/h;->b(Lf/h;)J

    move-result-wide v2

    long-to-float v4, v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lab/d;->b()J

    move-result-wide v4

    invoke-virtual {v0}, Lab/d;->b()J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-wide v10, v4

    move-wide v4, v2

    move-wide v2, v10

    :goto_1
    iget-object v6, p0, Lcom/google/googlenav/appwidget/hotpot/z;->h:Lab/d;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/googlenav/appwidget/hotpot/z;->h:Lab/d;

    invoke-virtual {v6}, Lab/d;->a()Lf/h;

    move-result-object v6

    invoke-virtual {v1}, Lab/d;->a()Lf/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lf/h;->b(Lf/h;)J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    :cond_2
    iput-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->h:Lab/d;

    :cond_3
    if-eqz v0, :cond_4

    const-wide/32 v0, 0xf4240

    cmp-long v0, v4, v0

    if-lez v0, :cond_4

    const-wide/32 v0, 0xdbba0

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->c:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->c:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->c:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->c:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Lab/d;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->g:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->c()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->d:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->c()V

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Lab/d;->b()J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->h:Lab/d;

    invoke-virtual {v1}, Lab/d;->b()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x927c0

    cmp-long v1, v6, v8

    if-lez v1, :cond_3

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    move-wide v10, v4

    move-wide v4, v2

    move-wide v2, v10

    goto :goto_1
.end method

.method private a(Landroid/location/Location;J)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    sub-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    const-wide/16 v0, 0x3a98

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/appwidget/hotpot/z;->a(J)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/z;->h()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/z;->a(Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/z;->a(Landroid/location/Location;ZZ)V

    goto :goto_0
.end method

.method private g()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->a:Landroid/content/Context;

    const-class v2, Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "location_provider_update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private h()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->a:Landroid/content/Context;

    const-class v2, Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "location_update_initiated"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->c:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->h:Lab/d;

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b(Lab/d;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.stationary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "stationary_stopped_place"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/z;->a(Landroid/location/Location;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/z;->h()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.stationary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "stationary_stopped_place"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0, v3, v1}, Lcom/google/googlenav/appwidget/hotpot/z;->a(Landroid/location/Location;ZZ)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v1, "location_update_initiated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0, v2, v3}, Lcom/google/googlenav/appwidget/hotpot/z;->a(Landroid/location/Location;ZZ)V

    move v0, v2

    goto :goto_0

    :cond_1
    const-string v1, "force_location_update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/z;->f()V

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v1, "location_provider_update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "providerEnabled"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "providerEnabled"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->c:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/z;->c()V

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->d:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->b()Landroid/app/PendingIntent;

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public c()V
    .locals 4

    const/4 v3, 0x0

    const-wide/32 v0, 0x1b7740

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/appwidget/hotpot/z;->a(J)Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v3}, Lcom/google/googlenav/appwidget/hotpot/z;->a(Landroid/location/Location;ZZ)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v2, "network"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->c:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1, v3}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b(Z)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/z;->d:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->b()Landroid/app/PendingIntent;

    :cond_1
    const-wide/16 v1, 0x3a98

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/z;->a(Landroid/location/Location;J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/z;->h()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/z;->a(Landroid/app/PendingIntent;)V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 7

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->b:Landroid/location/LocationManager;

    const-wide v2, 0x7fffffffffffffffL

    const v4, 0x7f7fffff

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/z;->g()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->i:Lcom/google/googlenav/appwidget/hotpot/B;

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/B;->b:Lcom/google/googlenav/appwidget/hotpot/B;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/B;->c:Lcom/google/googlenav/appwidget/hotpot/B;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/z;->i:Lcom/google/googlenav/appwidget/hotpot/B;

    :cond_0
    return-void
.end method
