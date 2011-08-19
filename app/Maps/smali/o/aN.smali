.class public abstract Lo/aN;
.super Lak/m;

# interfaces
.implements Lcom/google/googlenav/login/h;


# instance fields
.field protected final a:LaU/a;

.field protected final b:Lh/eY;

.field private final c:Ljava/util/Vector;

.field private final d:Lcom/google/googlenav/bL;

.field private final e:Lo/bx;

.field private volatile f:Z

.field private volatile g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;Lo/bx;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lak/m;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lo/aN;->c:Ljava/util/Vector;

    iput-boolean v1, p0, Lo/aN;->f:Z

    iput-boolean v1, p0, Lo/aN;->g:Z

    iput-object p1, p0, Lo/aN;->a:LaU/a;

    iput-object p2, p0, Lo/aN;->b:Lh/eY;

    iput-object p3, p0, Lo/aN;->d:Lcom/google/googlenav/bL;

    iput-object p4, p0, Lo/aN;->e:Lo/bx;

    return-void
.end method

.method static synthetic a(Lo/aN;)Lcom/google/googlenav/bL;
    .locals 1

    iget-object v0, p0, Lo/aN;->d:Lcom/google/googlenav/bL;

    return-object v0
.end method

.method private a(I)Lcom/google/googlenav/login/k;
    .locals 1

    iget-object v0, p0, Lo/aN;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/login/k;

    return-object p0
.end method

.method static synthetic a(Lo/aN;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/aN;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, LA/a;->a(I)[B

    move-result-object v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ln/a;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lo/aN;)V
    .locals 0

    invoke-direct {p0}, Lo/aN;->l()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lo/aN;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lo/aN;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lo/aN;)Z
    .locals 1

    iget-boolean v0, p0, Lo/aN;->f:Z

    return v0
.end method

.method static synthetic d(Lo/aN;)V
    .locals 0

    invoke-direct {p0}, Lo/aN;->o()V

    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0, p0}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-static {v0}, LA/a;->a([B)I

    move-result v0

    :goto_0
    if-ne v0, v4, :cond_0

    move v0, v4

    :goto_1
    return v0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lo/aN;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lo/aN;->f:Z

    iget-object v0, p0, Lo/aN;->a:LaU/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aN;->a:LaU/a;

    new-instance v1, Lo/bJ;

    invoke-direct {v1, p0}, Lo/bJ;-><init>(Lo/aN;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V
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

.method private declared-synchronized o()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lo/aN;->f:Z

    invoke-virtual {p0}, Lo/aN;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x4c

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lo/aN;->a:LaU/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/aN;->a:LaU/a;

    new-instance v2, Lo/bL;

    invoke-direct {v2, p0, v0}, Lo/bL;-><init>(Lo/aN;Ljava/lang/String;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/16 v1, 0x4b

    :try_start_1
    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized R_()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lo/aN;->f:Z

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lak/h;->c(Lak/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized S_()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/aN;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aN;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lo/aN;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lo/aN;->a(I)Lcom/google/googlenav/login/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/login/k;->S_()V
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

.method public W_()Z
    .locals 1

    iget-boolean v0, p0, Lo/aN;->f:Z

    return v0
.end method

.method public X_()V
    .locals 1

    invoke-virtual {p0}, Lo/aN;->I_()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/aN;->b:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/h;)V

    :cond_0
    invoke-super {p0}, Lak/m;->X_()V

    return-void
.end method

.method public a()I
    .locals 1

    const/16 v0, 0x47

    return v0
.end method

.method protected abstract a(Lh/eY;LaU/a;Lo/aN;Z)Lo/X;
.end method

.method public a(Lcom/google/googlenav/login/k;)V
    .locals 1

    iget-object v0, p0, Lo/aN;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/M;->g:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lo/aN;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->a(II)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Law/e;)Z
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 1

    iget-boolean v0, p0, Lo/aN;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/aN;->I_()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Ls/M;->h:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/aN;->b(Law/e;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized an_()V
    .locals 3

    const/4 v2, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lo/aN;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/aN;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lo/aN;->e:Lo/bx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aN;->e:Lo/bx;

    invoke-interface {v0}, Lo/bx;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aN;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aN;->f:Z

    iget-object v0, p0, Lo/aN;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, v1}, Lo/aN;->a(I)Lcom/google/googlenav/login/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/login/k;->an_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ao_()V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lo/aN;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/aN;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lo/aN;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0, v1}, Lo/aN;->a(I)Lcom/google/googlenav/login/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/login/k;->ao_()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/aN;->a:LaU/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/aN;->a:LaU/a;

    new-instance v1, Lo/bK;

    invoke-direct {v1, p0}, Lo/bK;-><init>(Lo/aN;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/google/googlenav/login/k;)V
    .locals 1

    iget-object v0, p0, Lo/aN;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Law/e;)Z
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    invoke-static {p1, v5, v6}, Law/b;->c(Law/e;II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lo/aN;->a:LaU/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/aN;->a:LaU/a;

    new-instance v2, Lo/bM;

    invoke-direct {v2, p0}, Lo/bM;-><init>(Lo/aN;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lo/aN;->c(Law/e;)V

    :goto_1
    return v5

    :pswitch_1
    iget-object v1, p0, Lo/aN;->a:LaU/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/aN;->a:LaU/a;

    iget-object v2, p0, Lo/aN;->b:Lh/eY;

    iget-object v3, p0, Lo/aN;->a:LaU/a;

    invoke-virtual {p0, p1}, Lo/aN;->a(Law/e;)Z

    move-result v4

    invoke-virtual {p0, v2, v3, p0, v4}, Lo/aN;->a(Lh/eY;LaU/a;Lo/aN;Z)Lo/X;

    move-result-object v2

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lo/aN;->a:LaU/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/aN;->a:LaU/a;

    new-instance v2, Lo/bN;

    invoke-direct {v2, p0}, Lo/bN;-><init>(Lo/aN;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0, v5, v6}, Law/b;->c(Law/e;II)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aN;->f:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected c(Law/e;)V
    .locals 2

    const/4 v0, 0x6

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lo/aN;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized g()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lo/aN;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lo/aN;->a(I)Lcom/google/googlenav/login/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/login/k;->g()V
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

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract m()Ljava/lang/String;
.end method

.method protected abstract n()I
.end method

.method protected q()V
    .locals 0

    return-void
.end method

.method protected r()Z
    .locals 1

    iget-object v0, p0, Lo/aN;->b:Lh/eY;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized s()V
    .locals 3

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/aN;->q()V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lo/aN;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/aN;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lo/aN;->e:Lo/bx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aN;->e:Lo/bx;

    invoke-interface {v0}, Lo/bx;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aN;->f:Z

    iget-object v0, p0, Lo/aN;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, v1}, Lo/aN;->a(I)Lcom/google/googlenav/login/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/login/k;->R_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()Z
    .locals 1

    invoke-virtual {p0}, Lo/aN;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aN;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized u()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/aN;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized v()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/aN;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public w()V
    .locals 7

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/aN;->W_()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v6

    new-instance v0, Lo/bH;

    invoke-virtual {p0}, Lo/aN;->n()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lo/aN;->a:LaU/a;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lo/bH;-><init>(Lo/aN;ILo/r;LaU/a;Z)V

    invoke-virtual {v6, v0}, Lak/h;->c(Lak/d;)V

    goto :goto_0
.end method

.method protected x()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lo/aN;->e:Lo/bx;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lo/aN;->g:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/aN;->W_()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lo/aN;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lo/aN;->e:Lo/bx;

    invoke-interface {v0}, Lo/bx;->c()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
