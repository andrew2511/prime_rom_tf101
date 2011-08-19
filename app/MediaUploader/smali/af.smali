.class public Laf;
.super LY;

# interfaces
.implements LaG;
.implements Ly;


# instance fields
.field private a:Lax;

.field private b:Ljava/io/ByteArrayOutputStream;

.field private c:Ljava/lang/Exception;

.field private d:Ljava/io/DataInputStream;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, LY;-><init>()V

    iput v2, p0, Laf;->i:I

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

    new-instance v0, Lax;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lax;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Laf;->a:Lax;

    iget-object v0, p0, Laf;->a:Lax;

    invoke-virtual {v0, p0}, Lax;->a(LaG;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Laf;->a:Lax;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lax;->a(Ljava/lang/String;)V

    iget-object v0, p0, Laf;->a:Lax;

    invoke-virtual {v0, v2}, Lax;->b(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laf;->a:Lax;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lax;->a(Ljava/lang/String;)V

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

    iput p1, p0, Laf;->i:I

    invoke-virtual {p0}, Laf;->g()V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Laf;->i:I

    if-nez v0, :cond_1

    iget-object v0, p0, Laf;->b:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laf;->a:Lax;

    iget-object v1, p0, Laf;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lax;->a([B)V

    :cond_0
    invoke-static {}, Lal;->b()Lal;

    move-result-object v0

    iget-object v1, p0, Laf;->a:Lax;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lal;->a(LaF;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Laf;->a(I)V
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

.method private l()V
    .locals 2

    iget v0, p0, Laf;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Laf;->c:Ljava/lang/Exception;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Laf;->c:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_2

    iget-object p0, p0, Laf;->c:Ljava/lang/Exception;

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_2
    iget-object v0, p0, Laf;->c:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    iget-object p0, p0, Laf;->c:Ljava/lang/Exception;

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/io/DataOutputStream;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laf;->b:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Laf;->b:Ljava/io/ByteArrayOutputStream;

    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Laf;->b:Ljava/io/ByteArrayOutputStream;

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

    invoke-direct {p0}, Laf;->l()V

    invoke-direct {p0}, Laf;->m()V

    iget-object v0, p0, Laf;->e:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laf;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laf;->e:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laf;->f:[Ljava/lang/String;

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

.method public final declared-synchronized a(LaF;LaH;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Laf;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_1
    new-instance v0, Lay;

    invoke-direct {v0, p2}, Lay;-><init>(LaH;)V

    invoke-virtual {v0}, Lay;->a()I

    move-result v1

    iput v1, p0, Laf;->g:I

    invoke-virtual {v0}, Lay;->d()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laf;->e:[Ljava/lang/String;

    invoke-virtual {v0}, Lay;->e()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laf;->f:[Ljava/lang/String;

    invoke-virtual {v0}, Lay;->b()I

    move-result v1

    iput v1, p0, Laf;->h:I

    invoke-virtual {v0}, Lay;->c()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Laf;->d:Ljava/io/DataInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x2

    :try_start_2
    invoke-direct {p0, v0}, Laf;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iput-object v0, p0, Laf;->c:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x2

    :try_start_4
    invoke-direct {p0, v0}, Laf;->a(I)V
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
    iput-object v0, p0, Laf;->c:Ljava/lang/Exception;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v0, 0x2

    :try_start_6
    invoke-direct {p0, v0}, Laf;->a(I)V

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Laf;->a(I)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public final declared-synchronized a(LaF;Ljava/lang/Exception;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Laf;->c:Ljava/lang/Exception;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Laf;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laf;->a:Lax;

    invoke-virtual {v0, p1, p2}, Lax;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    invoke-direct {p0}, Laf;->l()V

    invoke-direct {p0}, Laf;->m()V

    iget-object v0, p0, Laf;->d:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laf;->d:Ljava/io/DataInputStream;
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

.method public declared-synchronized c()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Laf;->l()V

    invoke-direct {p0}, Laf;->m()V

    iget v0, p0, Laf;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Laf;->l()V

    invoke-direct {p0}, Laf;->m()V

    const-string v0, "content-type"

    invoke-virtual {p0, v0}, Laf;->a(Ljava/lang/String;)Ljava/lang/String;
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

.method public declared-synchronized e()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Laf;->l()V

    invoke-direct {p0}, Laf;->m()V

    iget v0, p0, Laf;->h:I
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

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laf;->b:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, LD;->a(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Laf;->b:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Laf;->a:Lax;

    iget-object v0, p0, Laf;->d:Ljava/io/DataInputStream;

    invoke-static {v0}, LD;->a(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Laf;->d:Ljava/io/DataInputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Laf;->e:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Laf;->f:[Ljava/lang/String;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Laf;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Laf;->i:I
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

.method public final declared-synchronized i()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Laf;->i:I
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

.method public final declared-synchronized j()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Laf;->i:I
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

.method public final declared-synchronized k()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Laf;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
