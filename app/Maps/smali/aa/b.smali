.class public Laa/b;
.super Ljava/lang/Object;

# interfaces
.implements Laa/g;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/location/Location;

.field private g:Landroid/location/Location;

.field private h:F

.field private i:Laa/k;

.field private j:Laa/C;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x4080

    iput v0, p0, Laa/b;->h:F

    iput-boolean v1, p0, Laa/b;->c:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Laa/b;->a:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Laa/b;->b:Ljava/util/List;

    iput-boolean v1, p0, Laa/b;->d:Z

    iput-boolean v1, p0, Laa/b;->e:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    const-string v0, "gps"

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Laa/b;->f:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "network"

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Laa/b;->g:Landroid/location/Location;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Laa/b;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v1, p0, Laa/b;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public declared-synchronized a(Laa/C;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laa/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/z;

    iget-object v0, v0, Laa/z;->b:Laa/C;

    if-ne v0, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public a(Laa/x;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;JFLaa/C;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Laa/z;

    invoke-direct {v0, p1, p5}, Laa/z;-><init>(Ljava/lang/String;Laa/C;)V

    iget-object v1, p0, Laa/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Laa/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LaT/f;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lah/H;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    check-cast p1, Lah/H;

    invoke-virtual {p1}, Lah/H;->c()Ljava/lang/String;

    move-result-object v1

    instance-of v0, p1, Lah/t;

    if-eqz v0, :cond_5

    check-cast p1, Lah/t;

    new-instance v2, Landroid/location/Location;

    invoke-virtual {p1}, Lah/t;->a()Landroid/location/Location;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v2, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    iget-boolean v0, p0, Laa/b;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setTime(J)V

    :cond_1
    const-string v0, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v2, p0, Laa/b;->f:Landroid/location/Location;

    :cond_2
    :goto_1
    iget-object v0, p0, Laa/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/z;

    iget-object v4, v0, Laa/z;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, v0, Laa/z;->b:Laa/C;

    invoke-interface {v0, v2}, Laa/C;->onLocationChanged(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    const-string v0, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v2, p0, Laa/b;->g:Landroid/location/Location;

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lah/y;

    if-eqz v0, :cond_9

    const-string v0, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Laa/b;->d:Z

    :cond_6
    :goto_3
    iget-object v0, p0, Laa/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/z;

    iget-object v3, v0, Laa/z;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, v0, Laa/z;->b:Laa/C;

    invoke-interface {v0, v1}, Laa/C;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string v0, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Laa/b;->e:Z

    goto :goto_3

    :cond_9
    instance-of v0, p1, Lah/J;

    if-eqz v0, :cond_d

    const-string v0, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Laa/b;->d:Z

    :cond_a
    :goto_5
    iget-object v0, p0, Laa/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/z;

    iget-object v3, v0, Laa/z;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v0, v0, Laa/z;->b:Laa/C;

    invoke-interface {v0, v1}, Laa/C;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const-string v0, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Laa/b;->e:Z

    goto :goto_5

    :cond_d
    instance-of v0, p1, Lah/b;

    if-eqz v0, :cond_f

    check-cast p1, Lah/b;

    iget-object v0, p0, Laa/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/z;

    iget-object v3, v0, Laa/z;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v0, v0, Laa/z;->b:Laa/C;

    invoke-virtual {p1}, Lah/b;->a()I

    move-result v3

    invoke-virtual {p1}, Lah/b;->b()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v0, v1, v3, v4}, Laa/C;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_7

    :cond_f
    instance-of v0, p1, Lah/o;

    if-eqz v0, :cond_11

    check-cast p1, Lah/o;

    invoke-virtual {p1}, Lah/o;->a()Laa/B;

    move-result-object v0

    invoke-virtual {v0}, Laa/B;->c()F

    move-result v0

    iput v0, p0, Laa/b;->h:F

    iget-object v0, p0, Laa/b;->j:Laa/C;

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lah/o;->a()Laa/B;

    move-result-object v0

    iget-boolean v1, p0, Laa/b;->c:Z

    if-eqz v1, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Laa/B;->a(J)V

    :cond_10
    iget-object v0, p0, Laa/b;->j:Laa/C;

    invoke-virtual {p1}, Lah/o;->a()Laa/B;

    move-result-object v1

    invoke-interface {v0, v1}, Laa/C;->a(Laa/B;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_11
    move v0, v5

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Landroid/location/GpsStatus$Listener;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laa/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laa/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Laa/b;->j:Laa/C;

    return-void
.end method

.method public b(Laa/C;)V
    .locals 0

    iput-object p1, p0, Laa/b;->j:Laa/C;

    return-void
.end method

.method public declared-synchronized b(Landroid/location/GpsStatus$Listener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laa/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(LaT/f;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lah/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    check-cast p1, Lah/g;

    new-instance v0, Laa/k;

    invoke-virtual {p1}, Lah/g;->b()I

    move-result v1

    invoke-virtual {p1}, Lah/g;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Laa/k;-><init>(II)V

    iput-object v0, p0, Laa/b;->i:Laa/k;

    iget-object v0, p0, Laa/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsStatus$Listener;

    invoke-virtual {p1}, Lah/g;->a()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laa/b;->d:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Laa/b;->e:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized c()Laa/k;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laa/b;->i:Laa/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Laa/b;->h:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
