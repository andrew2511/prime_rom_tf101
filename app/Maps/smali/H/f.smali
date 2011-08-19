.class public LH/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile f:LH/f;


# instance fields
.field a:[LH/l;

.field b:Z

.field c:Z

.field d:Z

.field private e:LH/j;


# direct methods
.method public constructor <init>(ZLjava/util/Vector;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LH/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LH/h;-><init>(LH/n;)V

    iput-object v0, p0, LH/f;->e:LH/j;

    new-array v0, v2, [LH/l;

    iput-object v0, p0, LH/f;->a:[LH/l;

    iput-boolean v3, p0, LH/f;->b:Z

    iput-boolean v2, p0, LH/f;->c:Z

    iput-boolean v2, p0, LH/f;->d:Z

    if-nez p1, :cond_0

    const-string v0, "foo"

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [LH/l;

    iput-object v0, p0, LH/f;->a:[LH/l;

    iget-object v0, p0, LH/f;->a:[LH/l;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-direct {p0}, LH/f;->B()V

    goto :goto_1
.end method

.method private B()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LH/f;->a:[LH/l;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LH/f;->a:[LH/l;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, LH/l;->a(LH/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a()LH/f;
    .locals 1

    sget-object v0, LH/f;->f:LH/f;

    return-object v0
.end method

.method private static a(Lf/h;)Lf/h;
    .locals 1

    invoke-static {p0}, LH/e;->e(Lf/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LH/e;->i()LH/e;

    move-result-object v0

    invoke-virtual {v0, p0}, LH/e;->d(Lf/h;)Lf/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(LH/f;)V
    .locals 0

    sput-object p0, LH/f;->f:LH/f;

    return-void
.end method

.method protected static a(LH/l;LH/l;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, LH/l;->o()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, LH/l;->b:J

    iget-wide v2, p1, LH/l;->b:J

    const-wide/16 v4, 0x2af8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LH/l;->n()I

    move-result v0

    invoke-virtual {p1}, LH/l;->n()I

    move-result v1

    if-ge v0, v1, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, LH/f;->f:LH/f;

    return-void
.end method


# virtual methods
.method public A()LG/Z;
    .locals 1

    invoke-virtual {p0}, LH/f;->v()LH/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH/l;->x()LG/Z;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILH/l;)V
    .locals 1

    invoke-virtual {p0}, LH/f;->v()LH/l;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LH/f;->e:LH/j;

    invoke-interface {v0, p1, p0}, LH/j;->a(ILH/f;)V

    goto :goto_0
.end method

.method public a(LH/j;)V
    .locals 1

    iget-boolean v0, p0, LH/f;->c:Z

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, LH/f;->e:LH/j;

    return-void
.end method

.method public a(LH/o;)V
    .locals 1

    iget-boolean v0, p0, LH/f;->c:Z

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, LH/f;->e:LH/j;

    invoke-interface {v0, p1}, LH/j;->a(LH/o;)V

    return-void
.end method

.method public a(Lf/h;LH/l;)V
    .locals 1

    invoke-virtual {p0}, LH/f;->v()LH/l;

    move-result-object v0

    if-eq v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LH/f;->e:LH/j;

    invoke-interface {v0, p1, p0}, LH/j;->a(Lf/h;LH/f;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, LH/f;->d:Z

    return-void
.end method

.method public a(Lf/h;I)Z
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, LH/f;->h()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, LH/f;->p()Lf/h;

    move-result-object v2

    const-wide/32 v3, 0x1869f

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_2

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    mul-long/2addr v0, v0

    invoke-virtual {v2, p1}, Lf/h;->a(Lf/h;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0
.end method

.method public b(LH/o;)V
    .locals 1

    iget-object v0, p0, LH/f;->e:LH/j;

    invoke-interface {v0, p1}, LH/j;->b(LH/o;)V

    return-void
.end method

.method public c()[LH/l;
    .locals 1

    iget-object v0, p0, LH/f;->a:[LH/l;

    return-object v0
.end method

.method public d()Law/e;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LH/f;->a:[LH/l;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LH/f;->a:[LH/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LH/l;->j()Law/e;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LH/l;->j()Law/e;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public e()I
    .locals 1

    invoke-virtual {p0}, LH/f;->v()LH/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH/l;->l()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LH/f;->v()LH/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH/l;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, LH/f;->v()LH/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH/l;->m()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public h()I
    .locals 1

    invoke-virtual {p0}, LH/f;->v()LH/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH/l;->n()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x1869f

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, LH/f;->v()LH/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 5

    const/4 v4, 0x0

    move v0, v4

    move v1, v4

    :goto_0
    iget-object v2, p0, LH/f;->a:[LH/l;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, LH/f;->a:[LH/l;

    aget-object v2, v2, v0

    invoke-virtual {v2}, LH/l;->a()Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v2}, LH/l;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, LH/l;->b()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public k()Z
    .locals 4

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    iget-object v1, p0, LH/f;->a:[LH/l;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LH/f;->a:[LH/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LH/l;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, LH/l;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LH/l;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public l()Z
    .locals 1

    invoke-virtual {p0}, LH/f;->v()LH/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH/l;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized m()V
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, LH/f;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LH/f;->c:Z

    move v0, v1

    :goto_0
    iget-object v1, p0, LH/f;->a:[LH/l;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LH/f;->a:[LH/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LH/l;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, LH/f;->a:[LH/l;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LH/f;->a:[LH/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LH/l;->i()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LH/f;->a:[LH/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LH/l;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, LH/f;->b:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LH/f;->a:[LH/l;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LH/f;->a:[LH/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LH/l;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()Lf/h;
    .locals 1

    invoke-virtual {p0}, LH/f;->v()LH/l;

    invoke-virtual {p0}, LH/f;->q()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, LH/f;->a(Lf/h;)Lf/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Lf/h;
    .locals 1

    invoke-virtual {p0}, LH/f;->v()LH/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH/l;->s()Lf/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Lf/h;
    .locals 2

    invoke-virtual {p0}, LH/f;->q()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, LH/f;->a:[LH/l;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LH/f;->a:[LH/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LH/l;->h()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LH/f;->b:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, LH/f;->a:[LH/l;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LH/f;->a:[LH/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LH/l;->r()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

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

.method public s()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, LH/f;->v()LH/l;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, LH/l;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LH/l;->u()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    iget-object v1, p0, LH/f;->a:[LH/l;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, LH/f;->a:[LH/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LH/l;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public t()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LH/f;->a:[LH/l;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LH/f;->a:[LH/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LH/l;->t()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u()Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, LH/f;->b:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, LH/f;->v()LH/l;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LH/l;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, LH/l;->v()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_1
    iget-object v1, p0, LH/f;->a:[LH/l;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, LH/f;->a:[LH/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LH/l;->v()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method v()LH/l;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v3

    :goto_0
    iget-object v2, p0, LH/f;->a:[LH/l;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, LH/f;->a:[LH/l;

    aget-object v2, v2, v0

    invoke-static {v2, v1}, LH/f;->a(LH/l;LH/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, LH/f;->a:[LH/l;

    aget-object v1, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, LH/f;->d:Z

    return v0
.end method

.method public x()Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LH/f;->g()I

    move-result v0

    if-lt v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()LH/d;
    .locals 1

    invoke-virtual {p0}, LH/f;->v()LH/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH/l;->y()LH/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()LH/d;
    .locals 2

    invoke-virtual {p0}, LH/f;->y()LH/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH/d;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LH/d;->c()Lf/h;

    move-result-object v1

    invoke-static {v1}, LH/f;->a(Lf/h;)Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, LH/d;->a(Lf/h;)V

    :cond_0
    return-object v0
.end method
