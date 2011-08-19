.class public Lp/j;
.super Ljava/io/InputStream;


# instance fields
.field protected a:Ljava/io/InputStream;

.field protected b:Lp/f;

.field protected c:I

.field protected d:Ljava/lang/Object;

.field protected volatile e:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp/j;->d:Ljava/lang/Object;

    iput-object p1, p0, Lp/j;->a:Ljava/io/InputStream;

    iput p2, p0, Lp/j;->c:I

    return-void
.end method

.method private a([BII)I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lp/j;->c:I

    if-lez v1, :cond_2

    :try_start_0
    iget-object v0, p0, Lp/j;->a:Ljava/io/InputStream;

    iget v1, p0, Lp/j;->c:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lp/j;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lp/j;->c:I

    :cond_0
    if-lez v0, :cond_1

    iget v1, p0, Lp/j;->c:I

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lp/j;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lp/j;->c()V

    throw v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lp/j;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lp/j;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lp/j;->e:Z

    iget-object v1, p0, Lp/j;->d:Ljava/lang/Object;

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

.method private d()I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lp/j;->c:I

    if-lez v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lp/j;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lp/j;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lp/j;->c:I

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lp/j;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lp/j;->c()V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lp/j;->d:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lp/j;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lp/j;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lp/j;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp/j;->b:Lp/f;

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lp/f;

    const/high16 v1, 0x1

    iget v2, p0, Lp/j;->c:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Lp/f;-><init>(I)V

    iput-object v0, p0, Lp/j;->b:Lp/f;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_1
    :try_start_1
    iget v1, p0, Lp/j;->c:I

    if-lez v1, :cond_3

    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lp/j;->a([BII)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v2, p0, Lp/j;->b:Lp/f;

    invoke-virtual {v2, v0, v1}, Lp/f;->a([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "DelimitedInputStream"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lp/j;->b:Lp/f;

    invoke-virtual {v0}, Lp/f;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lp/j;->b:Lp/f;

    invoke-virtual {v1}, Lp/f;->b()V

    throw v0

    :cond_3
    iget-object v0, p0, Lp/j;->b:Lp/f;

    invoke-virtual {v0}, Lp/f;->b()V

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    invoke-virtual {p0}, Lp/j;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp/j;->b:Lp/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp/j;->b:Lp/f;

    invoke-virtual {v0}, Lp/f;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lp/j;->d()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lp/j;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp/j;->b:Lp/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp/j;->b:Lp/f;

    invoke-virtual {v0, p1, p2, p3}, Lp/f;->a([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lp/j;->a([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
