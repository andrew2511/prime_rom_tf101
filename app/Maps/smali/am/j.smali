.class Lam/j;
.super Lcom/google/android/maps/driveabout/vector/au;


# instance fields
.field private final d:Ljava/util/List;

.field private e:Lcom/google/android/maps/driveabout/vector/VectorMapView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/au;-><init>(Lcom/google/android/maps/driveabout/vector/r;)V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lam/j;->d:Ljava/util/List;

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lam/j;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/j;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->u()V

    :cond_0
    return-void
.end method

.method private declared-synchronized i()[Lcom/google/android/maps/driveabout/vector/bq;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lam/j;->d:Ljava/util/List;

    iget-object v1, p0, Lam/j;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/vector/bq;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/bq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public C_()Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lam/j;->i()[Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    move v1, v3

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bq;->C_()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public a()I
    .locals 1

    const v0, 0x7a120

    return v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lam/j;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-nez p1, :cond_0

    iget-object v0, p0, Lam/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/bq;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lam/j;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lam/j;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lam/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/u;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 4

    if-nez p4, :cond_0

    invoke-direct {p0}, Lam/j;->i()[Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bw;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lam/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public a(Ljava/util/List;FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;I)V
    .locals 10

    invoke-direct {p0}, Lam/j;->i()[Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v0, v7, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/bq;->a(Ljava/util/List;FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;I)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lam/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bq;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lam/j;->i()[Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a_(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lam/j;->i()[Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bq;->a_(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized b(Lcom/google/android/maps/driveabout/vector/bq;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lam/j;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lam/j;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(FFLcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lam/j;->i()[Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/bq;->b(FFLcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized c(Lcom/google/android/maps/driveabout/vector/bq;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lam/j;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lam/j;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lam/j;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lam/j;->i()[Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bq;->c(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lam/j;->i()[Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bq;->d(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
