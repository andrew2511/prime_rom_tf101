.class public Lo/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/a;
.implements Lcom/google/googlenav/login/k;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/Runnable;

.field private static d:Lcom/google/googlenav/ui/aT;

.field private static volatile g:Z


# instance fields
.field private final b:Lo/bg;

.field private final c:LT/a;

.field private e:Z

.field private volatile f:Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/aw;

    invoke-direct {v0}, Lo/aw;-><init>()V

    sput-object v0, Lo/by;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lo/bg;LT/c;Lcom/google/googlenav/ui/aT;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/by;->e:Z

    iput-object p1, p0, Lo/by;->b:Lo/bg;

    new-instance v0, LT/a;

    invoke-direct {v0, p2, p0}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/by;->c:LT/a;

    sput-object p3, Lo/by;->d:Lcom/google/googlenav/ui/aT;

    return-void
.end method

.method public static a(Lcom/google/googlenav/a;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lo/ax;

    invoke-direct {v0, p0}, Lo/ax;-><init>(Lcom/google/googlenav/a;)V

    new-instance v1, Lcom/google/googlenav/V;

    invoke-direct {v1}, Lcom/google/googlenav/V;-><init>()V

    invoke-static {}, Lf/C;->g()Lf/C;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->b(Z)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(I)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/V;->a(Lcom/google/googlenav/a;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/V;->e(Z)Lcom/google/googlenav/V;

    :cond_0
    invoke-virtual {v0, v3}, Lcom/google/googlenav/V;->f(Z)Lcom/google/googlenav/V;

    new-instance v1, Lcom/google/googlenav/z;

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/z;-><init>(Lcom/google/googlenav/bs;Lf/Y;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    invoke-static {v3}, Lo/by;->b(Z)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    invoke-static {p0}, Lo/by;->b(Z)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lo/by;->g:Z

    return v0
.end method

.method static synthetic b()Lcom/google/googlenav/ui/aT;
    .locals 1

    sget-object v0, Lo/by;->d:Lcom/google/googlenav/ui/aT;

    return-object v0
.end method

.method private static b(Z)V
    .locals 0

    sput-boolean p0, Lo/by;->g:Z

    invoke-static {}, Lo/by;->k()V

    return-void
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/by;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/by;->e:Z

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p0, v0, v1}, Lo/by;->a(Lcom/google/googlenav/a;J)V

    return-void
.end method

.method private i()V
    .locals 3

    const-wide/32 v1, 0x1d4c0

    iget-object v0, p0, Lo/by;->c:LT/a;

    invoke-virtual {v0, v1, v2}, LT/a;->a(J)V

    iget-object v0, p0, Lo/by;->c:LT/a;

    invoke-virtual {v0, v1, v2}, LT/a;->c(J)V

    iget-object v0, p0, Lo/by;->c:LT/a;

    invoke-virtual {v0}, LT/a;->b()V

    return-void
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v0

    iget-object v1, p0, Lo/by;->c:LT/a;

    invoke-virtual {v0, v1}, LT/c;->b(LT/b;)I

    return-void
.end method

.method private static k()V
    .locals 2

    sget-object v0, Lo/by;->d:Lcom/google/googlenav/ui/aT;

    if-eqz v0, :cond_0

    sget-object v0, Lo/by;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v0

    sget-object v1, Lo/by;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public R_()V
    .locals 0

    invoke-direct {p0}, Lo/by;->h()V

    return-void
.end method

.method public S_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/by;->e:Z

    invoke-direct {p0}, Lo/by;->j()V

    return-void
.end method

.method public a(Lcom/google/googlenav/a;J)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lo/by;->e:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/google/googlenav/a;->b(Lcom/google/googlenav/z;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lo/by;->h:J

    sub-long v2, v0, v2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_3

    iput-wide v0, p0, Lo/by;->h:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lo/by;->b:Lo/bg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/by;->b:Lo/bg;

    invoke-virtual {v0, v4, v4}, Lo/bg;->a(ZZ)V

    :cond_2
    invoke-static {p1}, Lo/by;->a(Lcom/google/googlenav/a;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Lcom/google/googlenav/a;->b(Lcom/google/googlenav/z;)V

    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/googlenav/z;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/z;Z)V
    .locals 1

    invoke-direct {p0}, Lo/by;->j()V

    iget-boolean v0, p0, Lo/by;->f:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lo/by;->e:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/by;->i()V

    :cond_0
    return-void
.end method

.method public an_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/by;->f:Z

    invoke-direct {p0}, Lo/by;->j()V

    return-void
.end method

.method public ao_()V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/googlenav/z;)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/by;->e:Z

    invoke-static {}, Lo/aF;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/by;->f:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo/by;->h()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lo/by;->j()V

    invoke-direct {p0}, Lo/by;->i()V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    invoke-direct {p0}, Lo/by;->j()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p0, v0, v1}, Lo/by;->a(Lcom/google/googlenav/a;J)V

    return-void
.end method
