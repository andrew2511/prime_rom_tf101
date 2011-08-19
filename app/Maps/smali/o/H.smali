.class public Lo/H;
.super Lo/aN;


# static fields
.field private static c:J

.field private static d:J

.field private static e:Lo/H;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lo/H;->c:J

    sget-wide v0, Lo/H;->c:J

    sput-wide v0, Lo/H;->d:J

    return-void
.end method

.method protected constructor <init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)V
    .locals 3

    new-instance v0, Lo/y;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/y;-><init>(IZ)V

    invoke-direct {p0, p1, p2, p3, v0}, Lo/aN;-><init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;Lo/bx;)V

    return-void
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lo/H;->d:J

    return-wide p0
.end method

.method public static declared-synchronized a(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)Lo/H;
    .locals 2

    const-class v0, Lo/H;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lo/H;

    invoke-direct {v1, p0, p1, p2}, Lo/H;-><init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)V

    sput-object v1, Lo/H;->e:Lo/H;

    sget-object v1, Lo/H;->e:Lo/H;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lo/H;)V
    .locals 0

    invoke-direct {p0}, Lo/H;->p()V

    return-void
.end method

.method static synthetic a(Lo/H;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/H;->c(J)V

    return-void
.end method

.method private c(J)V
    .locals 2

    sput-wide p1, Lo/H;->d:J

    new-instance v0, Lo/bp;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lo/bp;-><init>(Lo/H;LT/c;J)V

    invoke-virtual {v0}, Lo/bp;->b()V

    return-void
.end method

.method public static j()Lo/H;
    .locals 1

    sget-object v0, Lo/H;->e:Lo/H;

    return-object v0
.end method

.method public static declared-synchronized l()Z
    .locals 2

    const-class v0, Lo/H;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/H;->e:Lo/H;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private p()V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lo/bS;

    new-instance v2, Lo/bo;

    invoke-direct {v2, p0}, Lo/bo;-><init>(Lo/H;)V

    invoke-direct {v1, v2}, Lo/bS;-><init>(Lo/bs;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    :cond_0
    return-void
.end method

.method private y()V
    .locals 3

    sget-wide v0, Lo/H;->c:J

    sput-wide v0, Lo/H;->d:J

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "GAIA_ID_PREF"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    invoke-interface {v0}, Ln/a;->a()V

    return-void
.end method


# virtual methods
.method public declared-synchronized R_()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lo/aN;->R_()V

    invoke-direct {p0}, Lo/H;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lh/eY;LaU/a;Lo/aN;Z)Lo/X;
    .locals 1

    new-instance v0, Lo/bG;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/bG;-><init>(Lh/eY;LaU/a;Lo/aN;Z)V

    return-object v0
.end method

.method protected a(Law/e;)Z
    .locals 4

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public declared-synchronized an_()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lo/aN;->an_()V

    invoke-direct {p0}, Lo/H;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lo/H;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/H;->b:Lh/eY;

    const/16 v1, 0x53

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x54

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_0
    return-void
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    const-string v0, "BUZZ_TERMS_ACCEPTED_SETTING"

    return-object v0
.end method

.method protected n()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public o()J
    .locals 4

    sget-wide v0, Lo/H;->d:J

    sget-wide v2, Lo/H;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lo/bq;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/bq;-><init>(Lo/H;LT/c;)V

    invoke-virtual {v0}, Lo/bq;->b()V

    :cond_0
    sget-wide v0, Lo/H;->d:J

    return-wide v0
.end method
