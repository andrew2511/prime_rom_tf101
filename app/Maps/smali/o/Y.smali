.class public Lo/Y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/k;
.implements Ljava/lang/Runnable;
.implements Lo/bw;


# instance fields
.field private a:Lo/bP;

.field private final b:LT/a;

.field private final c:Lo/g;

.field private d:Z

.field private volatile e:Z

.field private f:J


# direct methods
.method public constructor <init>(LT/c;Lo/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/Y;->d:Z

    new-instance v0, LT/a;

    invoke-direct {v0, p1, p0}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/Y;->b:LT/a;

    iput-object p2, p0, Lo/Y;->c:Lo/g;

    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/Y;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/Y;->d:Z

    invoke-virtual {p0}, Lo/Y;->a()V

    return-void
.end method

.method private i()V
    .locals 3

    const-wide/16 v1, 0x7530

    iget-object v0, p0, Lo/Y;->b:LT/a;

    invoke-virtual {v0}, LT/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Y;->b:LT/a;

    invoke-virtual {v0, v1, v2}, LT/a;->a(J)V

    iget-object v0, p0, Lo/Y;->b:LT/a;

    invoke-virtual {v0, v1, v2}, LT/a;->c(J)V

    iget-object v0, p0, Lo/Y;->b:LT/a;

    invoke-virtual {v0}, LT/a;->b()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v0

    iget-object v1, p0, Lo/Y;->b:LT/a;

    invoke-virtual {v0, v1}, LT/c;->b(LT/b;)I

    return-void
.end method

.method private k()V
    .locals 1

    invoke-direct {p0}, Lo/Y;->j()V

    iget-boolean v0, p0, Lo/Y;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/Y;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/Y;->i()V

    :cond_0
    return-void
.end method


# virtual methods
.method public R_()V
    .locals 0

    invoke-direct {p0}, Lo/Y;->h()V

    return-void
.end method

.method public S_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/Y;->d:Z

    invoke-direct {p0}, Lo/Y;->j()V

    return-void
.end method

.method public a()V
    .locals 3

    iget-boolean v0, p0, Lo/Y;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/Y;->c:Lo/g;

    invoke-virtual {v0}, Lo/g;->h()Lac/s;

    move-result-object v0

    invoke-virtual {v0}, Lac/s;->b()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v2, Lo/a;

    invoke-direct {v2, v0, p0}, Lo/a;-><init>(Lac/s;Lo/bw;)V

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lo/Y;->f:J

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lo/Y;->k()V

    goto :goto_0
.end method

.method public a(Lo/bP;)V
    .locals 0

    iput-object p1, p0, Lo/Y;->a:Lo/bP;

    return-void
.end method

.method public declared-synchronized a([Law/e;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lo/Y;->k()V

    iget-object v0, p0, Lo/Y;->a:Lo/bP;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Y;->a:Lo/bP;

    invoke-interface {v0, p1}, Lo/bP;->a([Law/e;)V
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

.method public an_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/Y;->e:Z

    invoke-direct {p0}, Lo/Y;->j()V

    return-void
.end method

.method public ao_()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lo/Y;->k()V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/Y;->d:Z

    invoke-static {}, Lo/aF;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/Y;->e:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/Y;->i()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lo/Y;->h()V

    goto :goto_0
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lo/Y;->j()V

    invoke-virtual {p0}, Lo/Y;->a()V

    return-void
.end method
