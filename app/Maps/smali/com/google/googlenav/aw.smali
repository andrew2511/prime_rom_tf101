.class public Lcom/google/googlenav/aw;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/aw;->a:Z

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/aw;->b:Ljava/util/Map;

    invoke-static {}, Lcom/google/googlenav/aw;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 6

    invoke-static {}, Lcom/google/googlenav/G;->values()[Lcom/google/googlenav/G;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/google/googlenav/aw;->b:Ljava/util/Map;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/google/googlenav/G;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/googlenav/aw;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/aw;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/google/googlenav/G;LT/c;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/googlenav/aw;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/google/googlenav/aw;->d(Lcom/google/googlenav/G;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, LT/d;

    new-instance v2, Lcom/google/googlenav/L;

    invoke-direct {v2, v1, p0}, Lcom/google/googlenav/L;-><init>(Ljava/util/List;Lcom/google/googlenav/G;)V

    invoke-direct {v0, p1, v2}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LT/d;->b()V

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/google/googlenav/G;Landroid/os/Handler;JJLT/c;J)V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/googlenav/aw;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/google/googlenav/aw;->d(Lcom/google/googlenav/G;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide v3, p2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/Q;

    invoke-static {v0}, Lcom/google/googlenav/Q;->a(Lcom/google/googlenav/Q;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-long/2addr v3, p4

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-static {p0, v0}, Lcom/google/googlenav/aw;->c(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    invoke-virtual {v0}, Lcom/google/googlenav/Q;->run()V

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/googlenav/M;

    invoke-direct {v0, v1}, Lcom/google/googlenav/M;-><init>(Ljava/util/List;)V

    new-instance v1, LT/a;

    invoke-direct {v1, p6, v0}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p7, p8}, LT/a;->a(J)V

    invoke-virtual {v1}, LT/a;->b()V

    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;I)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/googlenav/aw;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/googlenav/aw;->c(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    invoke-virtual {p1}, Lcom/google/googlenav/Q;->run()V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/aw;->a:Z

    return-void
.end method

.method public static b(Lcom/google/googlenav/G;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/googlenav/aw;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/google/googlenav/aw;->d(Lcom/google/googlenav/G;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/Q;

    invoke-static {p0, v0}, Lcom/google/googlenav/aw;->c(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    invoke-virtual {v0}, Lcom/google/googlenav/Q;->run()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/googlenav/aw;->c(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    return-void
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/aw;->a:Z

    return-void
.end method

.method private static c(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V
    .locals 3

    invoke-static {}, Lac/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lac/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/google/googlenav/Q;->a(Lcom/google/googlenav/Q;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->s()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to run a DeferredTask of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on a non-UI thread : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static c(Lcom/google/googlenav/G;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/googlenav/aw;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static d(Lcom/google/googlenav/G;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/google/googlenav/G;->a(Lcom/google/googlenav/G;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/googlenav/aw;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    sget-object v0, Lcom/google/googlenav/aw;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/google/googlenav/aw;->a:Z

    return v0
.end method
