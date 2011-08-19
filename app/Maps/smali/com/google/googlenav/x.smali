.class Lcom/google/googlenav/x;
.super Lak/m;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aB;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/aB;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/x;->a:Lcom/google/googlenav/aB;

    invoke-direct {p0}, Lak/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/aB;Lcom/google/googlenav/bA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/x;-><init>(Lcom/google/googlenav/aB;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/R;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/x;->a:Lcom/google/googlenav/aB;

    invoke-static {v2}, Lcom/google/googlenav/aB;->b(Lcom/google/googlenav/aB;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v3}, Law/e;->h(II)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 2

    sget-object v0, Ls/R;->c:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/x;->a:Lcom/google/googlenav/aB;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aB;->a(Law/e;)V

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized i_()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/x;->a:Lcom/google/googlenav/aB;

    invoke-static {v0}, Lcom/google/googlenav/aB;->c(Lcom/google/googlenav/aB;)Lcom/google/googlenav/C;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/x;->a:Lcom/google/googlenav/aB;

    invoke-static {v0}, Lcom/google/googlenav/aB;->c(Lcom/google/googlenav/aB;)Lcom/google/googlenav/C;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/C;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/x;->a:Lcom/google/googlenav/aB;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/aB;->a(Lcom/google/googlenav/aB;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
