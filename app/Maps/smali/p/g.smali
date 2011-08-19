.class public Lp/g;
.super LA/v;

# interfaces
.implements Ln/d;
.implements Ly/p;


# instance fields
.field protected a:I

.field private final c:Ly/h;

.field private final d:Lp/b;

.field private e:Ljava/io/ByteArrayOutputStream;

.field private f:Ljava/lang/Exception;

.field private g:Ljava/io/DataInputStream;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, LA/v;-><init>()V

    iput v0, p0, Lp/g;->a:I

    iput-boolean v0, p0, Lp/g;->l:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    invoke-static {}, Lp/b;->b()Lp/b;

    move-result-object v0

    iput-object v0, p0, Lp/g;->d:Lp/b;

    new-instance v0, Ly/h;

    invoke-direct {v0, p1, v2}, Ly/h;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lp/g;->c:Ly/h;

    iget-object v0, p0, Lp/g;->c:Ly/h;

    invoke-virtual {v0, p0}, Ly/h;->a(Ly/p;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lp/g;->c:Ly/h;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ly/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lp/g;->c:Ly/h;

    invoke-virtual {v0, v2}, Ly/h;->d(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lp/g;->c:Ly/h;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ly/h;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection.setState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    iput p1, p0, Lp/g;->a:I

    invoke-virtual {p0}, Lp/g;->m()V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private n()V
    .locals 1

    const-string v0, "AsyncHttpConnection.assertStateInit()"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private o()V
    .locals 2

    const-string v0, "AsyncHttpConnection.assertStateCompleted()"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    iget v0, p0, Lp/g;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lp/g;->f:Ljava/lang/Exception;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lp/g;->f:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lp/g;->f:Ljava/lang/Exception;

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_2
    iget-object v0, p0, Lp/g;->f:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lp/g;->f:Ljava/lang/Exception;

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/io/DataOutputStream;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.openDataOutputStream()"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lp/g;->n()V

    iget-object v0, p0, Lp/g;->e:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lp/g;->e:Ljava/io/ByteArrayOutputStream;

    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lp/g;->e:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection.getHeaderField(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lp/g;->o()V

    invoke-direct {p0}, Lp/g;->p()V

    iget-object v0, p0, Lp/g;->h:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lp/g;->h:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lp/g;->h:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lp/g;->i:[Ljava/lang/String;

    aget-object v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.setConnectionProperty()"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lp/g;->n()V

    iget-object v0, p0, Lp/g;->c:Ly/h;

    invoke-virtual {v0, p1, p2}, Ly/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ly/d;Ljava/lang/Exception;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lp/g;->f:Ljava/lang/Exception;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lp/g;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ly/d;Ly/j;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.requestComplete(request, response)"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    iget v0, p0, Lp/g;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_1
    new-instance v0, Ly/n;

    invoke-direct {v0, p2}, Ly/n;-><init>(Ly/j;)V

    invoke-virtual {v0}, Ly/n;->a()I

    move-result v1

    iput v1, p0, Lp/g;->j:I

    invoke-virtual {v0}, Ly/n;->d()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lp/g;->h:[Ljava/lang/String;

    invoke-virtual {v0}, Ly/n;->e()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lp/g;->i:[Ljava/lang/String;

    invoke-virtual {v0}, Ly/n;->b()I

    move-result v1

    iput v1, p0, Lp/g;->k:I

    invoke-virtual {v0}, Ly/n;->c()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lp/g;->g:Ljava/io/DataInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x2

    :try_start_2
    invoke-direct {p0, v0}, Lp/g;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iput-object v0, p0, Lp/g;->f:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x2

    :try_start_4
    invoke-direct {p0, v0}, Lp/g;->a(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    iput-object v0, p0, Lp/g;->f:Ljava/lang/Exception;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v0, 0x2

    :try_start_6
    invoke-direct {p0, v0}, Lp/g;->a(I)V

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lp/g;->a(I)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.submitRequest()"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    iget v0, p0, Lp/g;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lp/g;->e:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp/g;->c:Ly/h;

    iget-object v1, p0, Lp/g;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ly/h;->a([B)V

    :cond_0
    iget-object v0, p0, Lp/g;->d:Lp/b;

    iget-object v1, p0, Lp/g;->c:Ly/h;

    invoke-virtual {v0, v1, p1}, Lp/b;->a(Ly/d;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lp/g;->a(I)V
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

.method public declared-synchronized b()Ljava/io/DataInputStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.openDataInputStream()"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lp/g;->o()V

    invoke-direct {p0}, Lp/g;->p()V

    iget-object v0, p0, Lp/g;->g:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp/g;->g:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()J
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.getLength()"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lp/g;->o()V

    invoke-direct {p0}, Lp/g;->p()V

    iget v0, p0, Lp/g;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.getResponseCode()"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lp/g;->o()V

    invoke-direct {p0}, Lp/g;->p()V

    iget v0, p0, Lp/g;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.getContentType()"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lp/g;->o()V

    invoke-direct {p0}, Lp/g;->p()V

    const-string v0, "content-type"

    invoke-virtual {p0, v0}, Lp/g;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.close()"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lp/g;->e:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Ln/c;->a(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lp/g;->e:Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lp/g;->c:Ly/h;

    invoke-virtual {v0}, Ly/h;->d()V

    iget-object v0, p0, Lp/g;->g:Ljava/io/DataInputStream;

    invoke-static {v0}, Ln/c;->b(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lp/g;->g:Ljava/io/DataInputStream;

    iget-boolean v0, p0, Lp/g;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lp/g;->h:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lp/g;->i:[Ljava/lang/String;

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lp/g;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.isInit()"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    iget v0, p0, Lp/g;->a:I
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

.method public declared-synchronized i()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.isCompleted()"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    iget v0, p0, Lp/g;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method public declared-synchronized j()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AsyncHttpConnection.isClosed()"

    invoke-static {v0}, Lp/g;->b(Ljava/lang/String;)V

    iget v0, p0, Lp/g;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

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

.method public declared-synchronized k()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lp/g;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
