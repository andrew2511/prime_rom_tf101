.class public abstract LJ/l;
.super LJ/e;


# instance fields
.field private volatile a:I

.field private volatile c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LJ/e;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LJ/l;->a:I

    return-void
.end method

.method static synthetic a(LJ/l;)I
    .locals 2

    iget v0, p0, LJ/l;->a:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, LJ/l;->a:I

    return v0
.end method

.method static synthetic b(LJ/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJ/l;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, LJ/l;->c:Ljava/lang/String;

    iget v0, p0, LJ/l;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LJ/l;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LJ/l;->b:Z

    new-instance v0, LJ/n;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, LJ/n;-><init>(LJ/l;LT/c;Ljava/lang/String;)V

    invoke-virtual {v0}, LJ/n;->b()V

    return-void
.end method

.method protected abstract b(Ljava/lang/String;)LJ/a;
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LJ/l;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, LJ/l;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
