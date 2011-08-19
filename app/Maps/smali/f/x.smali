.class public Lf/x;
.super Ljava/lang/Object;

# interfaces
.implements LA/f;
.implements Lac/h;
.implements Lf/r;


# instance fields
.field private final a:Ljava/util/Hashtable;

.field private final b:Ljava/util/Hashtable;

.field private volatile c:Lf/g;

.field private final d:Ljava/util/Vector;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lf/x;->d:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lf/x;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lf/x;->b:Ljava/util/Hashtable;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lf/x;->e:J

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lf/x;->f:J

    return-void
.end method

.method static synthetic a(Lf/x;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lf/x;->d:Ljava/util/Vector;

    return-object v0
.end method

.method private declared-synchronized a(Lf/K;Lf/U;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lf/x;->c(Lf/K;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/x;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/x;->c:Lf/g;

    if-nez v0, :cond_1

    new-instance v0, Lf/g;

    invoke-direct {v0, p0}, Lf/g;-><init>(Lf/x;)V

    iput-object v0, p0, Lf/x;->c:Lf/g;

    :cond_1
    iget-object v0, p0, Lf/x;->c:Lf/g;

    invoke-virtual {v0, p2}, Lf/g;->a(Lf/U;)V

    iget-object v0, p0, Lf/x;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lf/x;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lf/x;->b:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic c(Lf/x;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lf/x;->a:Ljava/util/Hashtable;

    return-object v0
.end method

.method private c(Lf/K;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lf/K;->e()Lf/l;

    move-result-object v0

    invoke-virtual {v0}, Lf/l;->a()I

    move-result v1

    iget-object v0, p0, Lf/x;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Lf/x;->d:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/T;

    invoke-interface {v0}, Lf/T;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/s;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Lf/K;)Lf/U;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lf/x;->a(Lf/K;Z)Lf/U;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lf/K;Z)Lf/U;
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/x;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/U;

    iget-object v1, p0, Lf/x;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/U;

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lf/x;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->b()J

    move-result-wide v2

    invoke-virtual {v0}, Lf/U;->a()J

    move-result-wide v4

    sub-long v6, v2, v4

    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    const-wide/high16 v8, -0x8000

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lf/x;->e:J

    cmp-long v1, v6, v4

    if-lez v1, :cond_1

    iget-wide v4, p0, Lf/x;->f:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget-object v1, p0, Lf/x;->c:Lf/g;

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1, v0}, Lf/x;->a(Lf/K;Lf/U;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v0, Lf/U;

    invoke-direct {v0, p1}, Lf/U;-><init>(Lf/K;)V

    invoke-direct {p0, p1, v0}, Lf/x;->a(Lf/K;Lf/U;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lf/x;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lf/x;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public a(Lf/T;)V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lf/x;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface {p1}, Lf/T;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->i()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lf/x;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lf/x;->e:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    :cond_0
    iput-wide v0, p0, Lf/x;->e:J

    :cond_1
    invoke-virtual {p0}, Lf/x;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;[Law/e;)V
    .locals 2

    iget-object v0, p0, Lf/x;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lf/x;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/T;

    invoke-interface {v0, p1, p2}, Lf/T;->a(Ljava/lang/String;[Law/e;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-virtual {p0}, Lf/x;->a()V

    return-void
.end method

.method public declared-synchronized ap()LA/c;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, LA/c;

    const-string v1, "LayerService"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LA/c;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lf/x;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/U;

    invoke-virtual {v0}, Lf/U;->ap()LA/c;

    move-result-object v0

    invoke-virtual {v2, v0}, LA/c;->a(LA/c;)LA/c;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/x;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/U;

    invoke-virtual {v0}, Lf/U;->ap()LA/c;

    move-result-object v0

    invoke-virtual {v2, v0}, LA/c;->a(LA/c;)LA/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lf/K;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/x;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/U;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/U;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lf/U;->d()V

    iget-object v0, p0, Lf/x;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public b(Lf/T;)V
    .locals 8

    const-wide/16 v6, -0x1

    iget-object v0, p0, Lf/x;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iput-wide v6, p0, Lf/x;->e:J

    iget-object v0, p0, Lf/x;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lf/x;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/T;

    invoke-interface {v0}, Lf/T;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->i()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lf/x;->e:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lf/x;->e:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :cond_0
    iput-wide v2, p0, Lf/x;->e:J

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lf/x;->a()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lf/x;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lf/x;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lf/x;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/T;

    invoke-interface {v0}, Lf/T;->o_()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    invoke-static {p0}, Lac/i;->c(Lac/h;)V

    return-void
.end method

.method public declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/x;->c:Lf/g;

    if-eqz v0, :cond_0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iget-object v1, p0, Lf/x;->c:Lf/g;

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/x;->c:Lf/g;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lf/x;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/x;->f:J
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

.method public declared-synchronized f()V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v2

    iget-object v0, p0, Lf/x;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/K;

    iget-object v1, p0, Lf/x;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/U;

    invoke-virtual {v1}, Lf/U;->b()J

    move-result-wide v5

    const-wide/16 v7, 0xfa0

    add-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-gez v1, :cond_0

    invoke-virtual {p0, v0}, Lf/x;->b(Lf/K;)V
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

.method public declared-synchronized g()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/x;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

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
