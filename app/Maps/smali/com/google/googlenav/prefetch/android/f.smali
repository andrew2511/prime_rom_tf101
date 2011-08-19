.class public Lcom/google/googlenav/prefetch/android/f;
.super Ljava/lang/Object;

# interfaces
.implements LE/i;


# instance fields
.field private a:I

.field private b:Z

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/googlenav/prefetch/android/f;->a:I

    iput-boolean v0, p0, Lcom/google/googlenav/prefetch/android/f;->b:Z

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/f;->d:Ljava/util/Map;

    return-void
.end method

.method public static a(Lf/h;)LG/w;
    .locals 2

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v0

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v1

    invoke-static {v0, v1}, LG/Q;->b(II)LG/Q;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1, v0}, LG/w;->a(ILG/Q;)LG/w;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/google/googlenav/prefetch/android/f;
    .locals 1

    sget-object v0, Lcom/google/googlenav/prefetch/android/s;->a:Lcom/google/googlenav/prefetch/android/f;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/f;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/f;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/g;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/prefetch/android/g;->c(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/f;->e()V

    return-void
.end method

.method public a(Lcom/google/googlenav/prefetch/android/g;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/google/googlenav/prefetch/android/g;->c(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/f;->e()V

    return-void
.end method

.method public a(Lcom/google/googlenav/prefetch/android/w;)V
    .locals 2

    invoke-static {}, LA/n;->b()V

    new-instance v0, Lcom/google/googlenav/prefetch/android/q;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/prefetch/android/q;-><init>(Lcom/google/googlenav/prefetch/android/f;LT/c;Lcom/google/googlenav/prefetch/android/w;)V

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/q;->b()V

    return-void
.end method

.method public declared-synchronized a(Lf/h;ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/googlenav/prefetch/android/f;->a(Lf/h;)LG/w;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/googlenav/prefetch/android/g;

    invoke-direct {v0, v1}, Lcom/google/googlenav/prefetch/android/g;-><init>(LG/w;)V

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Lcom/google/googlenav/prefetch/android/g;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p2}, Lcom/google/googlenav/prefetch/android/g;->b(I)V

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/googlenav/prefetch/android/f;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/f;->a:I

    iget v0, p0, Lcom/google/googlenav/prefetch/android/f;->a:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    new-instance v0, LT/d;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/prefetch/android/p;

    invoke-direct {v2, p0}, Lcom/google/googlenav/prefetch/android/p;-><init>(Lcom/google/googlenav/prefetch/android/f;)V

    invoke-direct {v0, v1, v2}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LT/d;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/prefetch/android/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lf/h;I)Z
    .locals 4

    invoke-virtual {p1}, Lf/h;->b()I

    move-result v0

    invoke-virtual {p1}, Lf/h;->d()I

    move-result v1

    invoke-static {v0, v1}, LG/Q;->b(II)LG/Q;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1, v0}, LG/w;->a(ILG/Q;)LG/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/prefetch/android/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/googlenav/prefetch/android/g;->d(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)I
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/g;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/prefetch/android/g;->d(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_0
    monitor-exit v1

    return v3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/googlenav/prefetch/android/f;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/f;->g()V

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/f;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/prefetch/android/f;->b:Z
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

.method public c(I)Ljava/util/List;
    .locals 8

    new-instance v1, Ljava/util/TreeMap;

    new-instance v0, Lcom/google/googlenav/prefetch/android/o;

    invoke-direct {v0, p0}, Lcom/google/googlenav/prefetch/android/o;-><init>(Lcom/google/googlenav/prefetch/android/f;)V

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/g;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/prefetch/android/g;->d(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/prefetch/android/g;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public declared-synchronized c()Ljava/util/Vector;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/f;->e()V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/googlenav/prefetch/android/g;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/prefetch/android/g;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/google/googlenav/prefetch/android/g;->a()LG/w;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/f;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/f;->a(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/f;->a(I)V

    return-void
.end method

.method protected e()V
    .locals 4

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/g;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/g;->d()V

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public f()V
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/f;->e()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Law/e;

    sget-object v4, Ls/T;->I:Law/f;

    invoke-direct {v3, v4}, Law/e;-><init>(Law/f;)V

    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/prefetch/android/g;

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/g;->f()Law/e;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Law/e;->a(ILaw/e;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "TileHistoryTracker - error writing tile history"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v2, v3}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "TILE_HISTORY"

    invoke-interface {v0, v1, v2}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method protected declared-synchronized g()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string v1, "TILE_HISTORY"

    invoke-interface {v0, v1}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v2, Ls/T;->I:Law/f;

    invoke-static {v2, v1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Law/e;->i(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/prefetch/android/g;->a(Law/e;)Lcom/google/googlenav/prefetch/android/g;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/googlenav/prefetch/android/g;->a()LG/w;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Lac/d;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "TileHistoryTracker - error reading tile history"

    invoke-static {v2, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-string v1, "TILE_HISTORY"

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    :cond_3
    invoke-static {}, Lac/d;->a()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/16 v7, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tile History"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/f;->c()Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "coords: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "score: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/prefetch/android/g;

    invoke-virtual {v1}, Lcom/google/googlenav/prefetch/android/g;->e()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/f;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/prefetch/android/d;

    if-eqz v1, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/googlenav/prefetch/android/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/f;->c:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/g;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
