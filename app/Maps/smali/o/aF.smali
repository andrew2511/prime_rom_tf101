.class public Lo/aF;
.super Lo/aN;


# static fields
.field private static c:Lo/aF;


# instance fields
.field private d:Li/aE;


# direct methods
.method private constructor <init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)V
    .locals 3

    new-instance v0, Lo/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/y;-><init>(IZ)V

    invoke-direct {p0, p1, p2, p3, v0}, Lo/aN;-><init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;Lo/bx;)V

    return-void
.end method

.method public static declared-synchronized a(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)Lo/aF;
    .locals 2

    const-class v0, Lo/aF;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lo/aF;

    invoke-direct {v1, p0, p1, p2}, Lo/aF;-><init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)V

    sput-object v1, Lo/aF;->c:Lo/aF;

    sget-object v1, Lo/aF;->c:Lo/aF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)Lo/aF;
    .locals 2

    const-class v0, Lo/aF;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/aF;->o()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1, p2}, Lo/aF;->a(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)Lo/aF;

    :cond_0
    invoke-static {}, Lo/aF;->l()Lo/aF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized l()Lo/aF;
    .locals 2

    const-class v0, Lo/aF;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/aF;->c:Lo/aF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized o()Z
    .locals 2

    const-class v0, Lo/aF;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/aF;->c:Lo/aF;
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

.method public static p()Z
    .locals 1

    const-string v0, "TERMS_ACCEPTED_SETTING"

    invoke-static {v0}, Lo/aF;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Lh/eY;LaU/a;Lo/aN;Z)Lo/X;
    .locals 1

    new-instance v0, Lo/m;

    invoke-direct {v0, p1, p2, p0, p4}, Lo/m;-><init>(Lh/eY;LaU/a;Lo/aN;Z)V

    return-object v0
.end method

.method public a(Li/aE;)V
    .locals 0

    iput-object p1, p0, Lo/aF;->d:Li/aE;

    return-void
.end method

.method protected a(Law/e;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Law/e;->b(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_0
.end method

.method public declared-synchronized an_()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lo/aN;->an_()V

    iget-object v0, p0, Lo/aF;->d:Li/aE;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/aF;->d:Li/aE;

    invoke-virtual {v0}, Li/aE;->D()Li/C;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aF;->d:Li/aE;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Li/aE;->c(I)V

    :cond_0
    iget-object v0, p0, Lo/aF;->d:Li/aE;

    invoke-virtual {v0}, Li/aE;->Y()Li/br;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Li/br;->a(ILcom/google/googlenav/j;LaU/a;Li/aD;)V

    iget-object v0, p0, Lo/aF;->d:Li/aE;

    invoke-virtual {v0}, Li/aE;->Z()Lc/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/k;->a(Lo/i;)V

    invoke-static {}, Lo/ce;->h()V
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

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lo/aF;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aF;->b:Lh/eY;

    const/16 v1, 0x17b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17c

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_0
    return-void
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    const-string v0, "TERMS_ACCEPTED_SETTING"

    return-object v0
.end method

.method protected n()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected q()V
    .locals 3

    const/16 v0, 0x3d

    const-string v1, "a"

    const-string v2, "s"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
