.class public Lcom/google/googlenav/au;
.super Lak/m;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/google/googlenav/h;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/googlenav/ae;

.field private final e:J

.field private f:Lcom/google/googlenav/bG;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/ae;)V
    .locals 2

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/au;->b:Lcom/google/googlenav/h;

    iput-object p2, p0, Lcom/google/googlenav/au;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/au;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/google/googlenav/au;->d:Lcom/google/googlenav/ae;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/au;->e:J

    return-void
.end method

.method private declared-synchronized m()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/au;->h:Ljava/lang/String;
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
.method public a()I
    .locals 1

    invoke-static {}, Lo/av;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method a(Z)Law/e;
    .locals 6

    const/4 v2, 0x1

    new-instance v1, Law/e;

    sget-object v0, LaG/a;->f:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {v1, v0, v2}, Law/e;->b(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/au;->c:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/au;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/googlenav/au;->e:J

    invoke-virtual {v1, v0, v2, v3}, Law/e;->b(IJ)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/googlenav/au;->b:Lcom/google/googlenav/h;

    invoke-virtual {v2}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Law/e;->b(ILaw/e;)V

    iget-object v0, p0, Lcom/google/googlenav/au;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/au;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/google/googlenav/E;->a(Ljava/util/List;)Lcom/google/googlenav/E;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0}, Lcom/google/googlenav/E;->a()Law/e;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Law/e;->b(ILaw/e;)V

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/au;->h:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/googlenav/au;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_3
    return-object v1

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/au;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;

    sget-object v3, Lo/N;->b:Lo/N;

    invoke-virtual {v0}, Lo/d;->c()Lo/N;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/N;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    invoke-virtual {v0}, Lo/d;->a()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Law/e;->a(IJ)V

    goto :goto_0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/g;->u:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-static {}, Lo/av;->p()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/au;->a(Z)Law/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/googlenav/au;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Ls/g;->v:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/googlenav/au;->g:Z

    iget-boolean v1, p0, Lcom/google/googlenav/au;->g:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bG;

    invoke-direct {v1, v0}, Lcom/google/googlenav/bG;-><init>(Law/e;)V

    iput-object v1, p0, Lcom/google/googlenav/au;->f:Lcom/google/googlenav/bG;

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public i_()V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/au;->d:Lcom/google/googlenav/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/au;->d:Lcom/google/googlenav/ae;

    iget-boolean v1, p0, Lcom/google/googlenav/au;->g:Z

    iget-object v2, p0, Lcom/google/googlenav/au;->f:Lcom/google/googlenav/bG;

    iget-object v3, p0, Lcom/google/googlenav/au;->b:Lcom/google/googlenav/h;

    iget-object v4, p0, Lcom/google/googlenav/au;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ae;->a(ZLcom/google/googlenav/bG;Lcom/google/googlenav/h;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/au;->b:Lcom/google/googlenav/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/au;->b:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
