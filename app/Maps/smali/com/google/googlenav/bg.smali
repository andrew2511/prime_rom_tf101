.class public Lcom/google/googlenav/bg;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/aa;

.field private b:Ljava/util/Map;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/google/googlenav/aa;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/bg;->b:Ljava/util/Map;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/bg;->c:J

    iput-object p1, p0, Lcom/google/googlenav/bg;->a:Lcom/google/googlenav/aa;

    return-void
.end method

.method public static a()Lcom/google/googlenav/bg;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/t;->a()Lcom/google/googlenav/bg;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 12

    const-wide/32 v10, 0xa4cb80

    iget-object v0, p0, Lcom/google/googlenav/bg;->a:Lcom/google/googlenav/aa;

    invoke-interface {v0}, Lcom/google/googlenav/aa;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/bg;->c:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/google/googlenav/bg;->c:J

    sub-long v1, v0, v10

    iget-object v0, p0, Lcom/google/googlenav/bg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-gez v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    add-long v6, v4, v10

    iget-wide v8, p0, Lcom/google/googlenav/bg;->c:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_0

    add-long/2addr v4, v10

    iput-wide v4, p0, Lcom/google/googlenav/bg;->c:J

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/bG;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bg;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    const-wide/32 v6, 0xa4cb80

    iget-object v0, p0, Lcom/google/googlenav/bg;->a:Lcom/google/googlenav/aa;

    invoke-interface {v0}, Lcom/google/googlenav/aa;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/googlenav/bg;->b:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/googlenav/bg;->b:Ljava/util/Map;

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long v2, v0, v6

    iget-wide v4, p0, Lcom/google/googlenav/bg;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/googlenav/bg;->c:J

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/googlenav/c;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/bg;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/googlenav/bg;->b()V

    iget-object v1, p0, Lcom/google/googlenav/bg;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
