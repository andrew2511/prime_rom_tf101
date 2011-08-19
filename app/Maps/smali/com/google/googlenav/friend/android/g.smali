.class public Lcom/google/googlenav/friend/android/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/friend/android/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/googlenav/friend/android/A;->n(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/google/googlenav/friend/android/M;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->b()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v9

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->d()Landroid/location/Location;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/friend/android/g;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->f()J

    move-result-wide v2

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->e()J

    move-result-wide v1

    :goto_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    invoke-virtual {v3}, Lac/m;->p()Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v5, v3, v5

    cmp-long v0, v5, v1

    if-ltz v0, :cond_3

    move v0, v9

    :goto_2
    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->i()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    monitor-enter v5

    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    sub-long v7, v3, v7

    cmp-long v0, v7, v1

    if-ltz v0, :cond_4

    move v0, v9

    goto :goto_3

    :cond_3
    move v0, v10

    goto :goto_2

    :cond_4
    move v0, v10

    goto :goto_3

    :cond_5
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move-wide v1, v2

    goto :goto_1
.end method
