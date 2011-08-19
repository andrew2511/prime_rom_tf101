.class public Lcom/google/googlenav/friend/android/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/a;
.implements Lo/r;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/googlenav/friend/android/I;

.field private final d:Lcom/google/googlenav/friend/android/D;

.field private final e:Lcom/google/googlenav/friend/android/E;

.field private final f:Ljava/util/List;

.field private g:Lcom/google/googlenav/friend/android/K;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LA/n;->a()V

    iput-object v1, p0, Lcom/google/googlenav/friend/android/p;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/googlenav/friend/android/p;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/google/googlenav/friend/android/p;->c:Lcom/google/googlenav/friend/android/I;

    new-instance v0, Lcom/google/googlenav/friend/android/D;

    invoke-direct {v0}, Lcom/google/googlenav/friend/android/D;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/p;->d:Lcom/google/googlenav/friend/android/D;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/p;->f:Ljava/util/List;

    iput-object v1, p0, Lcom/google/googlenav/friend/android/p;->e:Lcom/google/googlenav/friend/android/E;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/friend/android/I;Lcom/google/googlenav/friend/android/E;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/friend/android/p;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/googlenav/friend/android/p;->c:Lcom/google/googlenav/friend/android/I;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/p;->f:Ljava/util/List;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/p;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->b:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/friend/android/g;

    invoke-direct {v1}, Lcom/google/googlenav/friend/android/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/googlenav/friend/android/D;

    invoke-direct {v0}, Lcom/google/googlenav/friend/android/D;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/p;->d:Lcom/google/googlenav/friend/android/D;

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/p;->d:Lcom/google/googlenav/friend/android/D;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/google/googlenav/friend/android/p;->e:Lcom/google/googlenav/friend/android/E;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/p;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->f:Ljava/util/List;

    return-object v0
.end method

.method static b(Landroid/location/Location;)Law/e;
    .locals 5

    const/4 v2, 0x0

    const/high16 v4, -0x8000

    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "levelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string v2, "levelNumberE3"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Law/e;

    sget-object v3, Ls/x;->a:Law/f;

    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Law/e;->b(ILjava/lang/String;)V

    if-eq v0, v4, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v2, v1, v0}, Law/e;->h(II)V

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/googlenav/friend/android/p;)Lcom/google/googlenav/friend/android/K;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->g:Lcom/google/googlenav/friend/android/K;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/friend/android/p;)Lcom/google/googlenav/friend/android/I;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->c:Lcom/google/googlenav/friend/android/I;

    return-object v0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->a:Landroid/content/Context;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/A;->r(Landroid/content/Context;)V

    return-void
.end method

.method a(Landroid/location/Location;Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/p;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/googlenav/friend/android/A;->n(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/android/A;->c(Landroid/content/Context;Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/friend/android/K;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/p;->g:Lcom/google/googlenav/friend/android/K;

    return-void
.end method

.method public a(Lcom/google/googlenav/z;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/z;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->e:Lcom/google/googlenav/friend/android/E;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/E;->a()Li/br;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v2, v2}, Li/br;->a(ILcom/google/googlenav/j;LaU/a;Li/aD;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->c:Lcom/google/googlenav/friend/android/I;

    invoke-interface {v0}, Lcom/google/googlenav/friend/android/I;->m()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->a:Landroid/content/Context;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/android/A;->c(Landroid/content/Context;J)V

    return-void
.end method

.method public a(Lf/h;Ljava/lang/Long;Law/e;ZLo/aT;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/p;->f()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/A;->f(Landroid/content/Context;)V

    return-void
.end method

.method public a(ZLo/aT;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/p;->f()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/A;->d(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/location/Location;)Z
    .locals 3

    new-instance v0, Lcom/google/googlenav/friend/android/M;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/p;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/googlenav/friend/android/p;->f:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/googlenav/friend/android/M;-><init>(Landroid/content/Context;Landroid/location/Location;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/p;->a(Lcom/google/googlenav/friend/android/M;)Z

    move-result v0

    return v0
.end method

.method a(Lcom/google/googlenav/friend/android/M;)Z
    .locals 7

    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->d()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->d()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->b()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/p;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/p;->e()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/p;->a()V

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->f()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->e()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/p;->a()V

    move v0, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/p;->b(Lcom/google/googlenav/friend/android/M;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/p;->c(Lcom/google/googlenav/friend/android/M;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/p;->b()V

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/friend/android/p;->a(Landroid/location/Location;Landroid/location/Location;)V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/p;->d(Lcom/google/googlenav/friend/android/M;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->c:Lcom/google/googlenav/friend/android/I;

    invoke-interface {v0}, Lcom/google/googlenav/friend/android/I;->l()V

    return-void
.end method

.method public b(Lcom/google/googlenav/z;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->c:Lcom/google/googlenav/friend/android/I;

    invoke-interface {v0}, Lcom/google/googlenav/friend/android/I;->m()V

    return-void
.end method

.method public b(ZLo/aT;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/p;->f()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/A;->e(Landroid/content/Context;)V

    return-void
.end method

.method b(Lcom/google/googlenav/friend/android/M;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->b()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/friend/android/p;->d:Lcom/google/googlenav/friend/android/D;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/friend/android/D;->a(Lcom/google/googlenav/friend/android/M;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/friend/android/M;->d()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long v0, v1, v3

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/p;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method c()J
    .locals 2

    invoke-static {}, Lo/aX;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method c(Lcom/google/googlenav/friend/android/M;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/friend/android/s;

    invoke-interface {p0, p1}, Lcom/google/googlenav/friend/android/s;->a(Lcom/google/googlenav/friend/android/M;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(Lcom/google/googlenav/friend/android/M;)V
    .locals 23

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/friend/android/M;->d()Landroid/location/Location;

    move-result-object v22

    invoke-static {}, Lcom/google/googlenav/friend/android/A;->b()V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v5

    invoke-virtual {v5}, Lak/h;->f()V

    invoke-static/range {v22 .. v22}, Lcom/google/googlenav/friend/android/A;->a(Landroid/location/Location;)Lf/h;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-int v8, v5

    invoke-static/range {v22 .. v22}, Lbc/a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v7

    new-instance v18, Lcom/google/googlenav/friend/android/h;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/friend/android/p;->a:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, v22

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/friend/android/h;-><init>(Lcom/google/googlenav/friend/android/p;Landroid/content/Context;Landroid/location/Location;Landroid/location/Location;)V

    new-instance v5, Lo/an;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/friend/android/M;->g()J

    move-result-wide v13

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/googlenav/d;->al()I

    move-result v15

    const/16 v17, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getTime()J

    move-result-wide v20

    move-object/from16 v16, p0

    invoke-direct/range {v5 .. v21}, Lo/an;-><init>(Lf/h;Ljava/lang/String;ILaw/e;ZZZJILo/r;LaU/a;Lo/cb;ZJ)V

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->hasSpeed()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getSpeed()F

    move-result v6

    invoke-virtual {v5, v6}, Lo/an;->a(F)V

    :cond_0
    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->hasBearing()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getBearing()F

    move-result v6

    invoke-virtual {v5, v6}, Lo/an;->b(F)V

    :cond_1
    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->hasAltitude()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lo/an;->a(D)V

    :cond_2
    invoke-static/range {v22 .. v22}, Lcom/google/googlenav/friend/android/p;->b(Landroid/location/Location;)Law/e;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v6}, Lo/an;->a(Law/e;)V

    :cond_3
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v6

    invoke-virtual {v6, v5}, Lak/h;->c(Lak/d;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/friend/android/p;->f:Ljava/util/List;

    move-object v5, v0

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/friend/android/p;->f:Ljava/util/List;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/friend/android/p;->f:Ljava/util/List;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/friend/android/p;->f:Ljava/util/List;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/friend/android/M;->j()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v5

    invoke-virtual {v5}, Lac/m;->p()Lac/p;

    move-result-object v5

    invoke-interface {v5}, Lac/p;->a()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/friend/android/M;->h()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/friend/android/M;->k()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/friend/android/p;->b()V

    invoke-static/range {p0 .. p0}, Lo/by;->a(Lcom/google/googlenav/a;)V

    :cond_5
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v5

    invoke-virtual {v5}, Lak/h;->g()V

    return-void

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method d()Z
    .locals 1

    invoke-static {}, Lo/aF;->p()Z

    move-result v0

    return v0
.end method

.method e()Z
    .locals 1

    invoke-static {}, Lo/ce;->a()Z

    move-result v0

    return v0
.end method
