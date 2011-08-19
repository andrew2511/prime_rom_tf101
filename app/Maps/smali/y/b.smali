.class public Ly/b;
.super Ly/a;


# instance fields
.field a:Lp/n;

.field b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ly/a;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Ly/b;->a(I)V

    return-void
.end method

.method private v()V
    .locals 1

    iget-object v0, p0, Ly/b;->b:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Ly/b;->w()V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ly/b;->y()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Ly/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly/b;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Ly/b;->a:Lp/n;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ly/b;->a:Lp/n;

    invoke-interface {v2}, Lp/n;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ly/b;->b:[B

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized a()I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ly/b;->v()V

    iget-object v0, p0, Ly/b;->b:[B

    array-length v0, v0

    iget-object v1, p0, Ly/b;->a:Lp/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ly/b;->a:Lp/n;

    invoke-interface {v1}, Lp/n;->e()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b()Ljava/io/InputStream;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ly/b;->v()V

    iget-object v0, p0, Ly/b;->a:Lp/n;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ly/b;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ln/e;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Ly/b;->b:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Ly/b;->a:Lp/n;

    invoke-interface {v2}, Lp/n;->f()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln/e;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ly/a;->c(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Ly/b;->b:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ly/a;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Ly/b;->b:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
