.class public Lo/bj;
.super Lak/m;

# interfaces
.implements Lcom/google/googlenav/login/k;


# instance fields
.field private volatile a:Lo/I;

.field private final b:Ljava/util/Vector;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lo/bj;->b:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public R_()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/bj;->b(Lo/am;)V

    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method public a()I
    .locals 1

    const/16 v0, 0x5f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->aa:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public declared-synchronized a(Lo/am;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/bj;->a:Lo/I;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lo/bj;->b(Lo/am;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-object v2, p0, Lo/bj;->a:Lo/I;

    invoke-virtual {v2}, Lo/I;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0, p1}, Lo/bj;->b(Lo/am;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    if-eqz p1, :cond_0

    :try_start_2
    invoke-interface {p1}, Lo/am;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Ls/N;->ab:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lo/I;

    invoke-direct {v2, v1}, Lo/I;-><init>(Law/e;)V

    iput-object v2, p0, Lo/bj;->a:Lo/I;

    :cond_0
    invoke-virtual {v0, v3}, Law/e;->d(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v3, v1}, Law/b;->c(Law/e;II)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->a(I)V

    :cond_1
    return v3
.end method

.method public an_()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lo/bj;->a:Lo/I;

    return-void
.end method

.method public ao_()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lo/bj;->a:Lo/I;

    return-void
.end method

.method public declared-synchronized b(Lo/am;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/bj;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lo/bj;->c:Z

    if-nez v0, :cond_1

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lak/h;->c(Lak/d;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/bj;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/bj;->a(Lo/am;)V

    return-void
.end method

.method public declared-synchronized i_()V
    .locals 4

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/bj;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Lo/bj;->b:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/am;

    invoke-interface {v0}, Lo/am;->a()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/bj;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()Lo/I;
    .locals 1

    iget-object v0, p0, Lo/bj;->a:Lo/I;

    return-object v0
.end method
