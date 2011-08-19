.class Lcom/google/android/location/os/real/a;
.super Ljava/lang/Object;

# interfaces
.implements Ly/p;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/n;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private d:Ly/d;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/n;Z)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/real/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/location/os/real/a;->b:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlsClient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "-query"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/a;->c:Ljava/lang/String;

    return-void

    :cond_0
    const-string v1, "-upload"

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized a(Law/e;Law/e;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/a;->d:Ly/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Gls request still outstanding."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/location/os/real/n;->a(Ljava/util/Locale;Law/e;)Law/e;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Law/e;->b(ILaw/e;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Law/e;->e(II)Law/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/real/n;

    invoke-static {v1}, Lcom/google/android/location/os/real/n;->a(Lcom/google/android/location/os/real/n;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Law/e;

    sget-object v2, Lbd/a;->D:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/real/n;

    invoke-static {v1, v0}, Lcom/google/android/location/os/real/n;->a(Lcom/google/android/location/os/real/n;Law/e;)V

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1, v0}, Law/e;->b(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v1, Lcom/google/android/location/os/real/o;

    iget-boolean v2, p0, Lcom/google/android/location/os/real/a;->b:Z

    if-eqz v2, :cond_3

    const-string v2, "g:loc/ql"

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/location/os/real/o;-><init>(Ljava/lang/String;I[B)V

    iput-object v1, p0, Lcom/google/android/location/os/real/a;->d:Ly/d;

    iget-object v0, p0, Lcom/google/android/location/os/real/a;->d:Ly/d;

    invoke-virtual {v0, p0}, Ly/d;->a(Ly/p;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/a;->d:Ly/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ly/d;->d(I)V

    invoke-static {}, Lp/b;->b()Lp/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/a;->d:Ly/d;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lp/b;->a(Ly/d;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "GlsClient"

    const-string v2, "query(): unable to write request to payload"

    invoke-static {v1, v2, v0}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Lcom/google/android/location/os/real/a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/real/n;

    invoke-static {v0}, Lcom/google/android/location/os/real/n;->b(Lcom/google/android/location/os/real/n;)Lcom/google/android/location/os/real/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/r;->a(Law/e;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/real/n;

    invoke-static {v0}, Lcom/google/android/location/os/real/n;->b(Lcom/google/android/location/os/real/n;)Lcom/google/android/location/os/real/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/r;->b(Law/e;)V

    goto :goto_2

    :cond_3
    const-string v2, "g:loc/ul"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public declared-synchronized a(Ly/d;Ljava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/a;->d:Ly/d;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Response to unexpected request."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/location/os/real/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/real/n;

    invoke-static {v0}, Lcom/google/android/location/os/real/n;->b(Lcom/google/android/location/os/real/n;)Lcom/google/android/location/os/real/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/r;->a(Law/e;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/a;->d:Ly/d;

    iget-object v0, p0, Lcom/google/android/location/os/real/a;->c:Ljava/lang/String;

    const-string v1, "requestFailed"

    invoke-static {v0, v1, p2}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/real/n;

    invoke-static {v0}, Lcom/google/android/location/os/real/n;->b(Lcom/google/android/location/os/real/n;)Lcom/google/android/location/os/real/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/r;->b(Law/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Ly/d;Ly/j;)V
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/a;->d:Ly/d;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Response to unexpected request."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, Ly/j;->f()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p2}, Ly/j;->a()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    new-instance v1, Law/e;

    sget-object v2, Lbd/a;->w:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v1, v0}, Law/e;->a(Ljava/io/InputStream;)Law/e;

    invoke-static {v1}, Lcom/google/android/location/os/real/n;->a(Law/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    move-object v0, v1

    :goto_1
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/location/os/real/a;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/real/n;

    invoke-static {v1}, Lcom/google/android/location/os/real/n;->b(Lcom/google/android/location/os/real/n;)Lcom/google/android/location/os/real/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/real/r;->a(Law/e;)V

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/a;->d:Ly/d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/google/android/location/os/real/a;->c:Ljava/lang/String;

    const-string v3, "requestCompleted()"

    invoke-static {v2, v3, v0}, Lw/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/real/n;

    invoke-static {v1}, Lcom/google/android/location/os/real/n;->b(Lcom/google/android/location/os/real/n;)Lcom/google/android/location/os/real/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/real/r;->b(Law/e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v3

    goto :goto_1
.end method
