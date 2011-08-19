.class public Lo/bg;
.super Ljava/lang/Object;

# interfaces
.implements LH/o;
.implements Lcom/google/googlenav/login/k;
.implements Lo/r;


# instance fields
.field private volatile a:Z

.field private final b:Ljava/lang/Object;

.field private volatile c:Lo/aU;

.field private d:Lo/r;

.field private e:Lf/h;

.field private f:Ljava/lang/Long;

.field private final g:LaU/a;

.field private h:Ljava/util/Vector;


# direct methods
.method public constructor <init>(LaU/a;LT/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/bg;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lo/bg;->h:Ljava/util/Vector;

    iput-object p1, p0, Lo/bg;->g:LaU/a;

    return-void
.end method

.method public static a(Lf/h;JLf/h;)Z
    .locals 5

    const-wide/16 v2, 0x32

    const/4 v4, 0x0

    if-nez p3, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x1869f

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    cmp-long v0, p1, v2

    if-gez v0, :cond_5

    move-wide v0, v2

    :goto_1
    invoke-virtual {p3, p0}, Lf/h;->b(Lf/h;)J

    move-result-wide v2

    mul-long/2addr v0, v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move-wide v0, p1

    goto :goto_1
.end method

.method private b()Z
    .locals 1

    iget-boolean v0, p0, Lo/bg;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lo/ce;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lo/bg;->e:Lf/h;

    iput-object v0, p0, Lo/bg;->f:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public declared-synchronized R_()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lo/bg;->a:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/bg;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public S_()V
    .locals 2

    iget-object v0, p0, Lo/bg;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lo/bg;->c:Lo/aU;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a()Lo/aU;
    .locals 1

    iget-object v0, p0, Lo/bg;->c:Lo/aU;

    return-object v0
.end method

.method public a(ILH/f;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lo/bg;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Lo/bg;->h:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH/o;

    invoke-interface {v0, p1, p2}, LH/o;->a(ILH/f;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(LH/o;)V
    .locals 1

    iget-object v0, p0, Lo/bg;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lf/h;LH/f;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lo/bg;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Lo/bg;->h:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH/o;

    invoke-interface {v0, p1, p2}, LH/o;->a(Lf/h;LH/f;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/bg;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lo/aU;

    invoke-virtual {p2}, LH/f;->q()Lf/h;

    move-result-object v2

    invoke-virtual {p2}, LH/f;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, LH/f;->h()I

    move-result v4

    invoke-virtual {p2}, LH/f;->A()LG/Z;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lo/aU;-><init>(Lf/h;Ljava/lang/String;ILG/Z;)V

    iput-object v1, p0, Lo/bg;->c:Lo/aU;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lf/h;Ljava/lang/Long;Law/e;ZLo/aT;)V
    .locals 15

    invoke-direct {p0}, Lo/bg;->h()V

    if-eqz p4, :cond_0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v3

    new-instance v4, Lo/bW;

    const/4 v5, 0x1

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lo/bW;-><init>(ILo/aT;)V

    invoke-virtual {v3, v4}, Lak/h;->c(Lak/d;)V

    :cond_0
    invoke-static {}, Lo/ce;->b()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lo/ce;->f()V

    :cond_1
    iget-object v3, p0, Lo/bg;->d:Lo/r;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lo/bg;->d:Lo/r;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-interface/range {v3 .. v8}, Lo/r;->a(Lf/h;Ljava/lang/Long;Law/e;ZLo/aT;)V

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v3, v3

    move v6, v3

    :goto_1
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v14, 0x0

    const-string v5, "manual"

    const/4 v7, 0x0

    const-wide/16 v12, -0x1

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v14}, Lo/bg;->a(Lf/h;Ljava/lang/String;ILG/Z;Law/e;ZZZJZ)V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lo/bg;->e:Lf/h;

    move-object/from16 v0, p2

    move-object v1, p0

    iput-object v0, v1, Lo/bg;->f:Ljava/lang/Long;

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    move v6, v3

    goto :goto_1
.end method

.method public a(Lf/h;Ljava/lang/String;ILG/Z;Law/e;ZZZJZ)V
    .locals 19

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->b()J

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v17

    new-instance v2, Lo/an;

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/d;->al()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bg;->g:LaU/a;

    move-object v14, v0

    new-instance v15, Lo/k;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lo/k;-><init>(Lo/bg;)V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v13, p0

    move/from16 v16, p11

    invoke-direct/range {v2 .. v18}, Lo/an;-><init>(Lf/h;Ljava/lang/String;ILaw/e;ZZZJILo/r;LaU/a;Lo/cb;ZJ)V

    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, LG/Z;->c()Law/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/an;->a(Law/e;)V

    :cond_0
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public a(Lo/r;)V
    .locals 6

    const/4 v3, 0x0

    iput-object p1, p0, Lo/bg;->d:Lo/r;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/bg;->e:Lf/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/bg;->e:Lf/h;

    iget-object v2, p0, Lo/bg;->f:Ljava/lang/Long;

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, v3

    invoke-interface/range {v0 .. v5}, Lo/r;->a(Lf/h;Ljava/lang/Long;Law/e;ZLo/aT;)V

    invoke-direct {p0}, Lo/bg;->h()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lo/br;

    const/4 v2, 0x2

    iget-object v3, p0, Lo/bg;->g:LaU/a;

    invoke-direct {v1, v2, p0, v3, p1}, Lo/br;-><init>(ILo/r;LaU/a;Z)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public a(ZLo/aT;)V
    .locals 3

    invoke-direct {p0}, Lo/bg;->h()V

    if-eqz p1, :cond_0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lo/bW;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lo/bW;-><init>(ILo/aT;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    :cond_0
    invoke-static {}, Lo/ce;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/ce;->e()V

    iget-object v0, p0, Lo/bg;->d:Lo/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/bg;->d:Lo/r;

    invoke-interface {v0, p1, p2}, Lo/r;->a(ZLo/aT;)V

    :cond_1
    return-void
.end method

.method public a(ZZ)V
    .locals 12

    const/4 v11, 0x0

    iget-object v0, p0, Lo/bg;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/bg;->c:Lo/aU;

    if-nez v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lo/bg;->c:Lo/aU;

    iget-object v1, v1, Lo/aU;->a:Lf/h;

    iget-object v2, p0, Lo/bg;->c:Lo/aU;

    iget-object v2, v2, Lo/aU;->b:Ljava/lang/String;

    iget-object v3, p0, Lo/bg;->c:Lo/aU;

    iget v3, v3, Lo/aU;->c:I

    iget-object v4, p0, Lo/bg;->c:Lo/aU;

    iget-object v4, v4, Lo/aU;->d:LG/Z;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lo/bg;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v11}, Lo/bg;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    const/4 v5, 0x0

    invoke-static {}, Lo/ce;->b()Z

    move-result v6

    const-wide/16 v9, -0x1

    move-object v0, p0

    move v7, p1

    move v8, p2

    invoke-virtual/range {v0 .. v11}, Lo/bg;->a(Lf/h;Ljava/lang/String;ILG/Z;Law/e;ZZZJZ)V

    goto :goto_0
.end method

.method public declared-synchronized an_()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lo/bg;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ao_()V
    .locals 0

    return-void
.end method

.method public b(LH/o;)V
    .locals 1

    iget-object v0, p0, Lo/bg;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(ZLo/aT;)V
    .locals 3

    invoke-direct {p0}, Lo/bg;->h()V

    if-eqz p1, :cond_0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lo/bW;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2}, Lo/bW;-><init>(ILo/aT;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    :cond_0
    invoke-static {}, Lo/ce;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/ce;->g()V

    iget-object v0, p0, Lo/bg;->d:Lo/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/bg;->d:Lo/r;

    invoke-interface {v0, p1, p2}, Lo/r;->b(ZLo/aT;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lo/aF;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/bg;->a:Z
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
