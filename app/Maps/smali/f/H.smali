.class public Lf/H;
.super Ljava/lang/Object;

# interfaces
.implements Lac/h;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:[Lf/o;


# instance fields
.field private volatile b:Lf/p;

.field private final c:Ljava/util/Hashtable;

.field private final d:Ljava/util/Hashtable;

.field private final e:J

.field private final f:LT/a;

.field private volatile g:Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lf/o;

    sput-object v0, Lf/H;->a:[Lf/o;

    return-void
.end method

.method public constructor <init>(JLT/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/H;->g:Z

    iput-wide p1, p0, Lf/H;->e:J

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lf/H;->h:J

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lf/H;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lf/H;->d:Ljava/util/Hashtable;

    invoke-static {p0}, Lac/i;->a(Lac/h;)V

    new-instance v0, LT/a;

    invoke-direct {v0, p3, p0}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lf/H;->f:LT/a;

    iget-object v0, p0, Lf/H;->f:LT/a;

    const-wide/16 v1, 0x4e91

    invoke-virtual {v0, v1, v2}, LT/a;->a(J)V

    invoke-virtual {p0}, Lf/H;->c()V

    return-void
.end method

.method static synthetic a(Lf/H;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lf/H;->d:Ljava/util/Hashtable;

    return-object v0
.end method

.method private declared-synchronized a(Lf/K;Lf/m;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/H;->b:Lf/p;

    if-nez v0, :cond_0

    new-instance v0, Lf/p;

    invoke-direct {v0, p0}, Lf/p;-><init>(Lf/H;)V

    iput-object v0, p0, Lf/H;->b:Lf/p;

    :cond_0
    iget-object v0, p0, Lf/H;->b:Lf/p;

    invoke-virtual {v0, p2}, Lf/p;->a(Lf/m;)V

    iget-object v0, p0, Lf/H;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lf/H;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lf/H;->c:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic c(Lf/H;)V
    .locals 0

    invoke-direct {p0}, Lf/H;->f()V

    return-void
.end method

.method static synthetic e()[Lf/o;
    .locals 1

    sget-object v0, Lf/H;->a:[Lf/o;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-boolean v0, p0, Lf/H;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/H;->f:LT/a;

    invoke-virtual {v0}, LT/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/H;->f:LT/a;

    invoke-virtual {v0}, LT/a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lf/K;Z)Lf/m;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lf/K;->e()Lf/l;

    move-result-object v0

    invoke-virtual {v0}, Lf/l;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x16

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lf/H;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/m;

    iget-object v1, p0, Lf/H;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/m;

    if-eqz v0, :cond_3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-virtual {v0}, Lf/m;->d()J

    move-result-wide v3

    invoke-interface {v2}, Lac/p;->b()J

    move-result-wide v5

    sub-long/2addr v5, v3

    if-eqz p2, :cond_0

    if-nez v1, :cond_0

    const-wide/high16 v7, -0x8000

    cmp-long v1, v3, v7

    if-eqz v1, :cond_0

    iget-wide v3, p0, Lf/H;->e:J

    const-wide/16 v7, 0x2

    div-long/2addr v3, v7

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    invoke-interface {v2}, Lac/p;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lf/H;->h:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-object v1, p0, Lf/H;->b:Lf/p;

    if-eqz v1, :cond_0

    :cond_2
    invoke-direct {p0, p1, v0}, Lf/H;->a(Lf/K;Lf/m;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    if-eqz v1, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    :try_start_2
    new-instance v0, Lf/m;

    invoke-direct {v0, p1}, Lf/m;-><init>(Lf/K;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, v0}, Lf/H;->a(Lf/K;Lf/m;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    invoke-static {p0}, Lac/i;->c(Lac/h;)V

    invoke-virtual {p0}, Lf/H;->d()V

    return-void
.end method

.method declared-synchronized a(J)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/H;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/K;

    iget-object v1, p0, Lf/H;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/m;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    invoke-virtual {v3}, Lac/m;->p()Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->b()J

    move-result-wide v3

    invoke-virtual {v1}, Lf/m;->e()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v1, v3, p1

    if-lez v1, :cond_0

    iget-object v1, p0, Lf/H;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lf/H;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/H;->b:Lf/p;

    if-eqz v0, :cond_0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iget-object v1, p0, Lf/H;->b:Lf/p;

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/H;->b:Lf/p;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lf/H;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/H;->h:J
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

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lf/H;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lf/H;->g:Z

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v0

    iget-object v1, p0, Lf/H;->f:LT/a;

    invoke-virtual {v0, v1}, LT/c;->b(LT/b;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    const-wide/32 v0, 0xea60

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lf/H;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TrafficService BG"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lac/i;->b()V

    goto :goto_0
.end method
