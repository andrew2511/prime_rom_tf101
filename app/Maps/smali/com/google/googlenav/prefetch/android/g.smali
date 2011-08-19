.class public Lcom/google/googlenav/prefetch/android/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:LG/w;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(LG/w;)V
    .locals 2

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/prefetch/android/g;-><init>(LG/w;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(LG/w;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/g;->a:LG/w;

    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/g;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/googlenav/prefetch/android/g;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Law/e;)Lcom/google/googlenav/prefetch/android/g;
    .locals 15

    const/4 v14, 0x3

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x2

    invoke-virtual {p0, v12}, Law/e;->f(I)Law/e;

    move-result-object v0

    new-instance v1, LG/w;

    invoke-virtual {v0, v14}, Law/e;->d(I)I

    move-result v2

    invoke-virtual {v0, v12}, Law/e;->d(I)I

    move-result v3

    invoke-virtual {v0, v11}, Law/e;->d(I)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, LG/w;-><init>(III)V

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v11}, Law/e;->i(I)I

    move-result v2

    move v3, v13

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v11, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-virtual {v4, v12}, Law/e;->d(I)I

    move-result v5

    invoke-virtual {v4, v11}, Law/e;->i(I)I

    move-result v6

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    move v8, v13

    :goto_1
    if-ge v8, v6, :cond_0

    invoke-virtual {v4, v11, v8}, Law/e;->d(II)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v14}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/prefetch/android/g;

    invoke-direct {v3, v1, v0, v2}, Lcom/google/googlenav/prefetch/android/g;-><init>(LG/w;Ljava/util/Map;Ljava/lang/String;)V

    return-object v3
.end method

.method private static a(J)Z
    .locals 6

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    sub-long v2, v0, p0

    const-wide v4, 0x9fa52400L

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown Usage"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "My Location"

    goto :goto_0

    :pswitch_1
    const-string v0, "Offline Maps (lab)"

    goto :goto_0

    :pswitch_2
    const-string v0, "Search"

    goto :goto_0

    :pswitch_3
    const-string v0, "Directions Endpoint"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()LG/w;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/g;->a:LG/w;

    return-object v0
.end method

.method public declared-synchronized a(I)Ljava/util/LinkedList;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/g;->b:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized b(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/prefetch/android/g;->a(I)Ljava/util/LinkedList;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized c(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/googlenav/prefetch/android/g;

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/g;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/g;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized d(I)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/googlenav/prefetch/android/g;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void
.end method

.method protected e()I
    .locals 11

    const/4 v0, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/g;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/googlenav/prefetch/android/g;->a(I)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v1, v7

    const-wide/32 v9, 0x5265c00

    div-long/2addr v7, v9

    long-to-int v0, v7

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    const v1, 0x7fffffff

    sub-int v0, v1, v0

    :goto_1
    return v0

    :cond_1
    const/16 v7, 0x1f

    sub-int v0, v7, v0

    int-to-double v7, v0

    const-wide/high16 v9, 0x3ff0

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x403f

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4024

    mul-double/2addr v7, v9

    double-to-int v0, v7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    :cond_2
    mul-int/2addr v0, v0

    add-int/2addr v0, v4

    :goto_2
    move v4, v0

    goto :goto_0

    :cond_3
    if-nez v5, :cond_5

    mul-int/2addr v0, v0

    add-int/2addr v0, v4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_2
.end method

.method public declared-synchronized f()Law/e;
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v1, Law/e;

    sget-object v0, Ls/T;->J:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    new-instance v0, Law/e;

    sget-object v2, Ls/T;->H:Law/f;

    invoke-direct {v0, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/g;->a:LG/w;

    invoke-virtual {v3}, LG/w;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Law/e;->a(II)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/g;->a:LG/w;

    invoke-virtual {v3}, LG/w;->d()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Law/e;->a(II)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/g;->a:LG/w;

    invoke-virtual {v3}, LG/w;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Law/e;->a(II)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Law/e;->a(ILaw/e;)V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/g;->a(I)Ljava/util/LinkedList;

    move-result-object v3

    new-instance v4, Law/e;

    sget-object v5, Ls/T;->K:Law/f;

    invoke-direct {v4, v5}, Law/e;-><init>(Law/f;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Law/e;->a(II)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x2

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Law/e;->a(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {v1, v0, v4}, Law/e;->a(ILaw/e;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Law/e;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    const/16 v10, 0xa

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/g;->e(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/g;->a(I)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    minutes ago: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v6, v1, v6

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
