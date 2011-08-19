.class public LaO/b;
.super Lak/m;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Law/e;

.field private final c:I

.field private d:[Lcom/google/googlenav/c;

.field private final e:LaO/e;


# direct methods
.method public constructor <init>(ILaw/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LaO/b;-><init>(ILaw/e;LaO/e;)V

    return-void
.end method

.method public constructor <init>(ILaw/e;LaO/e;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaO/b;->a:Ljava/lang/Object;

    iput p1, p0, LaO/b;->c:I

    iput-object p2, p0, LaO/b;->b:Law/e;

    iput-object p3, p0, LaO/b;->e:LaO/e;

    return-void
.end method


# virtual methods
.method public X_()V
    .locals 2

    iget-object v0, p0, LaO/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LaO/b;->d:[Lcom/google/googlenav/c;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/googlenav/c;

    iput-object v1, p0, LaO/b;->d:[Lcom/google/googlenav/c;

    iget-object v1, p0, LaO/b;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/z;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    iget v2, p0, LaO/b;->c:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x1

    iget-object v2, p0, LaO/b;->b:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    invoke-static {p1, v0}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v6, 0x1

    sget-object v0, Ls/z;->c:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    iget-object v2, p0, LaO/b;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-array v3, v1, [Lcom/google/googlenav/c;

    iput-object v3, p0, LaO/b;->d:[Lcom/google/googlenav/c;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    iget-object v5, p0, LaO/b;->d:[Lcom/google/googlenav/c;

    invoke-static {v4}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LaO/b;->e:LaO/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, LaO/b;->e:LaO/e;

    invoke-interface {v0}, LaO/e;->a()V

    :cond_1
    iget-object v0, p0, LaO/b;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return v6

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()[Lcom/google/googlenav/c;
    .locals 1

    iget-object v0, p0, LaO/b;->d:[Lcom/google/googlenav/c;

    return-object v0
.end method

.method public m()[Lcom/google/googlenav/c;
    .locals 2

    iget-object v0, p0, LaO/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LaO/b;->d:[Lcom/google/googlenav/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, LaO/b;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, LaO/b;->d:[Lcom/google/googlenav/c;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
