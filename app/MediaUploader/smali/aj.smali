.class public final Laj;
.super Ljava/io/InputStream;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Lag;

.field private c:I

.field private d:Ljava/lang/Object;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laj;->d:Ljava/lang/Object;

    iput-object p1, p0, Laj;->a:Ljava/io/InputStream;

    iput p2, p0, Laj;->c:I

    return-void
.end method

.method private a([BII)I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Laj;->c:I

    if-lez v1, :cond_2

    :try_start_0
    iget-object v0, p0, Laj;->a:Ljava/io/InputStream;

    iget v1, p0, Laj;->c:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Laj;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Laj;->c:I

    :cond_0
    if-lez v0, :cond_1

    iget v1, p0, Laj;->c:I

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0}, Laj;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Laj;->c()V

    throw v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Laj;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Laj;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Laj;->e:Z

    iget-object v1, p0, Laj;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private d()I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Laj;->c:I

    if-lez v1, :cond_1

    :try_start_0
    iget-object v0, p0, Laj;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Laj;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Laj;->c:I

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Laj;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Laj;->c()V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Laj;->d:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Laj;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Laj;->d:Ljava/lang/Object;

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Laj;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Laj;->b:Lag;

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lag;

    const/high16 v1, 0x1

    iget v2, p0, Laj;->c:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Lag;-><init>(I)V

    iput-object v0, p0, Laj;->b:Lag;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_1
    :try_start_1
    iget v1, p0, Laj;->c:I

    if-lez v1, :cond_3

    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Laj;->a([BII)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v2, p0, Laj;->b:Lag;

    invoke-virtual {v2, v0, v1}, Lag;->a([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "DelimitedInputStream"

    invoke-static {v1, v0}, Le;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Laj;->b:Lag;

    invoke-virtual {v0}, Lag;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Laj;->b:Lag;

    invoke-virtual {v1}, Lag;->b()V

    throw v0

    :cond_3
    iget-object v0, p0, Laj;->b:Lag;

    invoke-virtual {v0}, Lag;->b()V

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    invoke-virtual {p0}, Laj;->read()I
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

.method public final declared-synchronized read()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laj;->b:Lag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laj;->b:Lag;

    invoke-virtual {v0}, Lag;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Laj;->d()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Laj;->read([BII)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laj;->b:Lag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laj;->b:Lag;

    invoke-virtual {v0, p1, p2, p3}, Lag;->a([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Laj;->a([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
