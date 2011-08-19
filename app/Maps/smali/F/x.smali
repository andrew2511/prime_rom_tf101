.class LF/x;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:J

.field private final c:LF/e;

.field private d:LF/p;

.field private final e:Ljava/util/List;

.field private f:LF/l;

.field private volatile g:Z

.field private volatile h:Z

.field private final i:Ljava/lang/Thread;

.field private j:Le/j;

.field private k:Z

.field private final l:Ljava/io/File;


# direct methods
.method constructor <init>(LF/e;Le/j;Ljava/lang/Thread;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LF/x;->h:Z

    iput-object p1, p0, LF/x;->c:LF/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LF/x;->e:Ljava/util/List;

    new-instance v0, LF/p;

    invoke-direct {v0, p0}, LF/p;-><init>(LF/x;)V

    iput-object v0, p0, LF/x;->d:LF/p;

    iput-object p3, p0, LF/x;->i:Ljava/lang/Thread;

    iput-object p2, p0, LF/x;->j:Le/j;

    iput-object p4, p0, LF/x;->l:Ljava/io/File;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LF/x;->b:J

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, LF/x;->f:LF/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/x;->f:LF/l;

    invoke-virtual {v0}, LF/l;->u()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, LF/x;->f:LF/l;

    :cond_0
    iget-boolean v0, p0, LF/x;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, LF/x;->o()V

    :cond_1
    return-void
.end method

.method private a(LF/l;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, LF/l;->u()I

    move-result v0

    if-ne v0, v5, :cond_1

    move v0, v5

    :goto_0
    iget-object v1, p0, LF/x;->d:LF/p;

    invoke-virtual {v1}, LF/p;->a()LF/B;

    move-result-object v1

    invoke-virtual {v1}, LF/B;->f()[LF/M;

    move-result-object v2

    invoke-virtual {p1}, LF/l;->o()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, LF/x;->d:LF/p;

    invoke-virtual {v3}, LF/p;->b()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LF/l;->l()[LF/M;

    move-result-object v0

    aget-object v0, v0, v4

    aget-object v3, v2, p2

    invoke-virtual {v3}, LF/M;->v()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, LF/M;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LF/M;->a(Ljava/lang/String;)V

    :cond_3
    aput-object v0, v2, p2

    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v1}, LF/B;->m()I

    move-result v1

    invoke-virtual {v0, v2, v1, v5}, LF/p;->a([LF/M;IZ)V

    goto :goto_1

    :cond_4
    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, LF/x;->a(ILF/l;)V

    goto :goto_1
.end method

.method private a(LF/M;LF/M;I)Z
    .locals 6

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->p()D

    move-result-wide v0

    invoke-virtual {p1}, LF/M;->o()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p2}, LF/M;->o()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v0, v4

    cmpl-double v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(LF/l;)V
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, LF/x;->f:LF/l;

    invoke-virtual {p1}, LF/l;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, LF/x;->j:Le/j;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LF/x;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, LF/x;->o()V

    :cond_0
    invoke-virtual {p1}, LF/l;->l()[LF/M;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v0

    if-lt v1, v5, :cond_2

    aget-object v1, v0, v4

    invoke-virtual {v1}, LF/M;->u()[LF/o;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v5, :cond_2

    aget-object v1, v0, v6

    aget-object v2, v0, v4

    invoke-virtual {p1}, LF/l;->n()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, LF/x;->a(LF/M;LF/M;I)Z

    move-result v1

    if-eqz v1, :cond_2

    array-length v1, v0

    sub-int/2addr v1, v4

    new-array v1, v1, [LF/M;

    array-length v2, v1

    invoke-static {v0, v4, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :cond_2
    array-length v1, v0

    if-lt v1, v5, :cond_5

    aget-object v1, v0, v6

    invoke-virtual {v1}, LF/M;->o()I

    move-result v1

    move v2, v1

    move v1, v4

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_4

    aget-object v3, v0, v1

    invoke-virtual {v3}, LF/M;->o()I

    move-result v3

    if-ge v3, v2, :cond_3

    aget-object v2, v0, v1

    invoke-virtual {v2}, LF/M;->o()I

    move-result v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    array-length v1, v0

    move v3, v6

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    invoke-virtual {v4}, LF/M;->o()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, LF/M;->d(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    aget-object v1, v0, v6

    invoke-virtual {v1}, LF/M;->w()Z

    move-result v1

    if-eqz v1, :cond_6

    aget-object v1, v0, v6

    invoke-virtual {v1}, LF/M;->A()LF/l;

    move-result-object v1

    if-nez v1, :cond_6

    aget-object v1, v0, v6

    iget-object v2, p0, LF/x;->c:LF/e;

    aget-object v3, v0, v6

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, LF/e;->a(LF/M;I)LF/l;

    move-result-object v2

    invoke-virtual {v1, v2}, LF/M;->a(LF/l;)V

    :cond_6
    iget-object v1, p0, LF/x;->d:LF/p;

    aget-object v2, v0, v6

    invoke-virtual {v2}, LF/M;->g()Z

    move-result v2

    invoke-virtual {v1, v0, v6, v2}, LF/p;->a([LF/M;IZ)V

    :goto_3
    return-void

    :cond_7
    invoke-virtual {p0, v5, p1}, LF/x;->a(ILF/l;)V

    goto :goto_3
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, LF/x;->f:LF/l;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0}, LF/p;->a()LF/B;

    move-result-object v0

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v0

    invoke-virtual {v0}, LF/M;->A()LF/l;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, LF/x;->d:LF/p;

    invoke-virtual {v1}, LF/p;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LF/x;->c:LF/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, LF/e;->a(LF/M;I)LF/l;

    move-result-object v1

    invoke-virtual {v0, v1}, LF/M;->a(LF/l;)V

    goto :goto_0
.end method

.method private final n()V
    .locals 0

    return-void
.end method

.method private o()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LF/x;->a:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LF/x;->b:J

    iget-object v0, p0, LF/x;->j:Le/j;

    invoke-virtual {v0}, Le/j;->b()V

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0}, LF/p;->a()LF/B;

    move-result-object v1

    iget-object v0, p0, LF/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/G;

    invoke-interface {v0, v1}, LF/G;->c(LF/B;)V
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

.method declared-synchronized a(ILF/l;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0}, LF/p;->a()LF/B;

    move-result-object v1

    iget-object v0, p0, LF/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/G;

    invoke-interface {v0, p1, p2, v1}, LF/G;->a(ILF/l;LF/B;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, LF/l;->t()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p2}, LF/l;->s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, LF/l;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, LF/l;->p()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1
.end method

.method declared-synchronized a(LF/G;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LF/x;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LF/x;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

.method public a(LF/M;I)V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    invoke-direct {p0}, LF/x;->n()V

    iget-boolean v0, p0, LF/x;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LF/x;->a:Z

    if-nez p2, :cond_1

    iput-wide v3, p0, LF/x;->b:J

    invoke-virtual {p0, p1, v2}, LF/x;->a(LF/M;Z)V

    const-string v0, "j"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, LF/x;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, LF/x;->a(ILF/l;)V

    const-string v0, "j"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;I)V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LF/x;->b:J

    goto :goto_0
.end method

.method public a(LF/M;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, LF/x;->n()V

    if-eqz p2, :cond_1

    new-array v0, v4, [LF/M;

    aput-object p1, v0, v2

    iget-object v1, p0, LF/x;->d:LF/p;

    invoke-virtual {v1, v0, v2, v2}, LF/p;->a([LF/M;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iget-object v1, p0, LF/x;->d:LF/p;

    invoke-virtual {v1}, LF/p;->a()LF/B;

    move-result-object v1

    invoke-virtual {v1}, LF/B;->f()[LF/M;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    if-ne v3, p1, :cond_4

    move v0, v2

    :cond_2
    if-ltz v0, :cond_0

    invoke-virtual {p1}, LF/M;->w()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, LF/M;->A()LF/l;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, LF/x;->c:LF/e;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, LF/e;->a(LF/M;I)LF/l;

    move-result-object v2

    invoke-virtual {p1, v2}, LF/M;->a(LF/l;)V

    :cond_3
    iget-object v2, p0, LF/x;->d:LF/p;

    invoke-virtual {v2, v1, v0, v4}, LF/p;->a([LF/M;IZ)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public a(LF/l;)V
    .locals 3

    invoke-direct {p0}, LF/x;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LF/x;->k:Z

    iget-object v0, p0, LF/x;->f:LF/l;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, LF/x;->f:LF/l;

    invoke-direct {p0, v0}, LF/x;->b(LF/l;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0}, LF/p;->a()LF/B;

    move-result-object v0

    invoke-virtual {v0}, LF/B;->f()[LF/M;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, LF/M;->A()LF/l;

    move-result-object v2

    if-ne v2, p1, :cond_2

    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LF/M;->a(LF/l;)V

    invoke-direct {p0, p1, v1}, LF/x;->a(LF/l;I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method declared-synchronized a(LF/w;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lah/i;

    invoke-direct {v0, p1}, Lah/i;-><init>(LF/w;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    iget-object v0, p0, LF/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/G;

    invoke-interface {v0, p1, p2}, LF/G;->b(LF/w;I)V
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

.method public a(Laa/E;)V
    .locals 6

    invoke-direct {p0}, LF/x;->n()V

    iget-boolean v0, p0, LF/x;->h:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0}, LF/p;->a()LF/B;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LF/B;->i()LF/M;

    move-result-object v1

    iget-object v2, p0, LF/x;->j:Le/j;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LF/M;->c()I

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, LF/x;->a:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, LF/x;->k:Z

    if-nez v2, :cond_2

    iget-object v2, p0, LF/x;->f:LF/l;

    if-nez v2, :cond_3

    :cond_2
    iget-object v1, p0, LF/x;->f:LF/l;

    if-nez v1, :cond_0

    iget-object v1, p0, LF/x;->c:LF/e;

    invoke-virtual {v0}, LF/B;->g()LF/M;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v0, v2}, LF/e;->a(Laa/E;LF/M;I)LF/l;

    move-result-object v0

    iput-object v0, p0, LF/x;->f:LF/l;

    invoke-virtual {p0}, LF/x;->f()V

    goto :goto_0

    :cond_3
    iget-wide v2, p0, LF/x;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, LF/x;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, LF/x;->a:Z

    iget-object v0, p0, LF/x;->j:Le/j;

    invoke-virtual {v0, p1, v1}, Le/j;->a(Laa/E;LF/M;)V

    invoke-virtual {p0}, LF/x;->f()V

    goto :goto_0
.end method

.method public a(Laa/E;LF/M;)V
    .locals 2

    invoke-direct {p0}, LF/x;->n()V

    iget-object v0, p0, LF/x;->c:LF/e;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, LF/e;->a(Laa/E;LF/M;I)LF/l;

    move-result-object v0

    iput-object v0, p0, LF/x;->f:LF/l;

    return-void
.end method

.method public a(Laa/E;[LF/u;II[LF/K;)V
    .locals 6

    invoke-direct {p0}, LF/x;->n()V

    iget-object v0, p0, LF/x;->c:LF/e;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, LF/e;->a(Laa/E;[LF/u;II[LF/K;)LF/l;

    move-result-object v0

    iput-object v0, p0, LF/x;->f:LF/l;

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, LF/x;->n()V

    iget-boolean v0, p0, LF/x;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LF/x;->l:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/navgation_location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0, p1}, LF/p;->a(Landroid/location/Location;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v2

    iget-object v3, p0, LF/x;->d:LF/p;

    invoke-virtual {v3}, LF/p;->a()LF/B;

    move-result-object v3

    invoke-virtual {v3}, LF/B;->g()LF/M;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, LF/M;->z()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, LF/x;->h:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, LF/M;->x()J

    move-result-wide v4

    invoke-virtual {v2}, Lad/t;->q()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, LF/M;->x()J

    move-result-wide v4

    invoke-virtual {v2}, Lad/t;->r()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    invoke-virtual {v3}, LF/M;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, LF/M;->y()V

    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0, v8}, LF/p;->a(I)Z

    :cond_1
    invoke-direct {p0}, LF/x;->m()V

    :cond_2
    iget-boolean v0, p0, LF/x;->g:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    iput-boolean v8, p0, LF/x;->g:Z

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, LF/x;->h:Z

    return-void
.end method

.method declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0}, LF/p;->a()LF/B;

    move-result-object v1

    iget-object v0, p0, LF/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/G;

    invoke-interface {v0, v1}, LF/G;->f(LF/B;)V
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

.method declared-synchronized b(LF/G;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LF/x;->e:Ljava/util/List;

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

.method declared-synchronized b(LF/w;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LF/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/G;

    invoke-interface {v0, p1, p2}, LF/G;->a(LF/w;I)V
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

.method declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0}, LF/p;->a()LF/B;

    move-result-object v1

    invoke-virtual {v1}, LF/B;->h()LF/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/G;

    invoke-interface {v0, v1}, LF/G;->e(LF/B;)V
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

.method declared-synchronized d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0}, LF/p;->a()LF/B;

    move-result-object v1

    iget-object v0, p0, LF/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/G;

    invoke-interface {v0, v1}, LF/G;->a(LF/B;)V
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

.method declared-synchronized e()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0}, LF/p;->a()LF/B;

    move-result-object v1

    iget-object v0, p0, LF/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/G;

    invoke-interface {v0, v1}, LF/G;->d(LF/B;)V
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

.method declared-synchronized f()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0}, LF/p;->a()LF/B;

    move-result-object v1

    iget-object v0, p0, LF/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/G;

    invoke-interface {v0, v1}, LF/G;->b(LF/B;)V
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

.method public g()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, LF/x;->n()V

    iput-boolean v1, p0, LF/x;->k:Z

    iget-boolean v0, p0, LF/x;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, LF/x;->a(ILF/l;)V

    :cond_0
    return-void
.end method

.method h()Z
    .locals 1

    iget-boolean v0, p0, LF/x;->h:Z

    return v0
.end method

.method public i()V
    .locals 6

    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0}, LF/p;->a()LF/B;

    move-result-object v0

    invoke-virtual {v0}, LF/B;->f()[LF/M;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, LF/M;->w()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, LF/M;->A()LF/l;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, LF/x;->c:LF/e;

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, LF/e;->a(LF/M;I)LF/l;

    move-result-object v4

    invoke-virtual {v3, v4}, LF/M;->a(LF/l;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, LF/x;->a(I)V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, LF/x;->a(I)V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, LF/x;->d:LF/p;

    invoke-virtual {v0}, LF/p;->d()V

    return-void
.end method
