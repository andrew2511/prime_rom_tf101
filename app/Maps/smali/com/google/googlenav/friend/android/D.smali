.class public Lcom/google/googlenav/friend/android/D;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/friend/android/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)I
    .locals 2

    invoke-direct {p0, p2}, Lcom/google/googlenav/friend/android/D;->b(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/D;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/location/Location;)Z
    .locals 2

    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/location/Location;)Z
    .locals 2

    const-string v0, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/friend/android/M;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->b()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->d()Landroid/location/Location;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/friend/android/D;->a(Landroid/location/Location;Landroid/location/Location;)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->i()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-enter v2

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/friend/android/D;->a(Landroid/location/Location;Landroid/location/Location;)I

    move-result v0

    and-int/2addr v0, v4

    move v4, v0

    goto :goto_1

    :cond_1
    monitor-exit v2

    move v0, v4

    :cond_2
    and-int/lit8 v1, v0, 0x1

    if-ne v1, v5, :cond_4

    move v1, v5

    :goto_2
    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    move v0, v5

    :goto_3
    if-nez v1, :cond_3

    if-eqz v0, :cond_6

    :cond_3
    move v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v1, v6

    goto :goto_2

    :cond_5
    move v0, v6

    goto :goto_3

    :cond_6
    move v0, v6

    goto :goto_0
.end method
