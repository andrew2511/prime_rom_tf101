.class public Lat/d;
.super Lat/a;

# interfaces
.implements Lat/f;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private b:Lat/g;

.field private c:Ln/n;

.field private d:Ljava/io/InputStream;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Vector;

.field private i:Z

.field private j:Ljava/io/DataInputStream;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:I

.field private n:Lp/n;

.field private o:[B

.field private p:I

.field private q:J


# direct methods
.method public constructor <init>(Lat/g;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lat/a;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lat/d;->a:J

    const-string v0, "GET"

    iput-object v0, p0, Lat/d;->e:Ljava/lang/String;

    iput-object p1, p0, Lat/d;->b:Lat/g;

    iput-object p2, p0, Lat/d;->g:Ljava/lang/String;

    iput p3, p0, Lat/d;->p:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lat/d;->h:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/d;->i:Z

    return-void
.end method

.method private a(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lat/d;->o:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lat/d;->o:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lat/d;->n:Lp/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lat/d;->n:Lp/n;

    invoke-interface {v0}, Lp/n;->f()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Ln/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lat/d;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/d;->d:Ljava/io/InputStream;

    invoke-static {v0, p1}, Ln/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private static a(Ln/n;)V
    .locals 0

    return-void
.end method

.method private b(Ln/n;)V
    .locals 5

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    iget-object v0, p0, Lat/d;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lat/d;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v2, v0, v4

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {p1, v2, v0}, Ln/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private u()Z
    .locals 1

    iget-object v0, p0, Lat/d;->d:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lat/d;->o:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lat/d;->n:Lp/n;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()I
    .locals 1

    iget-object v0, p0, Lat/d;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/d;->d:Ljava/io/InputStream;

    invoke-static {v0}, Ln/c;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lat/d;->o:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lat/d;->d:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lat/d;->o:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lat/d;->o:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lat/d;->n:Lp/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lat/d;->n:Lp/n;

    invoke-interface {v0}, Lp/n;->e()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lat/d;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/io/InputStream;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lat/d;->d:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lat/d;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lat/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/d;->j:Ljava/io/DataInputStream;

    invoke-static {v0}, Ln/c;->b(Ljava/io/InputStream;)V

    iget-object v0, p0, Lat/d;->c:Ln/n;

    invoke-static {v0}, Ln/c;->a(Ln/n;)V

    invoke-super {p0}, Lat/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(LT/b;)V
    .locals 1

    invoke-virtual {p0, p1}, Lat/d;->a(LT/b;)V

    iget-object v0, p0, Lat/d;->b:Lat/g;

    invoke-static {v0, p0}, Lat/g;->a(Lat/g;Lat/d;)Z

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lat/d;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected i()V
    .locals 2

    iget v0, p0, Lat/d;->p:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lat/d;->q:J

    invoke-super {p0}, Lat/a;->i()V

    :cond_0
    return-void
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lat/d;->q:J

    return-wide v0
.end method

.method public declared-synchronized o()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lat/d;->a()V

    iget v0, p0, Lat/d;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lat/d;->a()V

    iget-wide v0, p0, Lat/d;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lat/d;->a()V

    iget-object v0, p0, Lat/d;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r()Ljava/io/DataInputStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lat/d;->a()V

    iget-object v0, p0, Lat/d;->j:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 13

    const/4 v8, 0x0

    const/4 v12, 0x1

    sget-object v0, Lat/g;->a:Lag/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHttRequest.run(): this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lat/d;->b:Lat/g;

    invoke-static {v0}, Lat/g;->a(Lat/g;)LT/c;

    move-result-object v0

    new-instance v1, Lat/b;

    invoke-direct {v1, v0}, Lat/b;-><init>(LT/c;)V

    invoke-virtual {v1, p0}, Lat/b;->a(Lat/d;)V

    invoke-virtual {p0}, Lat/d;->s()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lat/b;->a(J)V

    invoke-virtual {v1}, Lat/b;->b()V

    const/4 v0, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lat/d;->h()V

    invoke-virtual {p0}, Lat/d;->i()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lat/d;->e:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lat/d;->b:Lat/g;

    iget-object v4, p0, Lat/d;->g:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lat/g;->a(Lat/g;Ljava/lang/String;Z)Ln/n;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {p0}, Lat/d;->f()Z

    move-result v3

    if-nez v3, :cond_3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v1}, Lat/b;->h()I

    if-nez v0, :cond_0

    invoke-static {v8}, Ln/c;->b(Ljava/io/InputStream;)V

    invoke-static {v8}, Ln/c;->a(Ljava/io/OutputStream;)V

    :goto_0
    invoke-static {v2}, Ln/c;->a(Ln/n;)V

    :cond_0
    :goto_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v2

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    :goto_2
    :try_start_7
    iget-object v6, p0, Lat/d;->b:Lat/g;

    invoke-static {v6}, Lat/g;->b(Lat/g;)Ln/b;

    move-result-object v6

    invoke-interface {v6}, Ln/b;->j()V

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    invoke-virtual {p0}, Lat/d;->e()I

    move-result v6

    if-ne v6, v12, :cond_1

    invoke-virtual {p0, v2}, Lat/d;->a(Ljava/lang/Exception;)V

    :cond_1
    invoke-virtual {p0}, Lat/d;->e()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    sget-object v6, Lat/g;->a:Lag/g;

    const-string v7, "AsyncHttpRequestImpl.run(): exception thrown "

    invoke-virtual {v6, v7, v2}, Lag/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    invoke-virtual {v1}, Lat/b;->h()I

    if-nez v0, :cond_0

    invoke-static {v3}, Ln/c;->b(Ljava/io/InputStream;)V

    invoke-static {v4}, Ln/c;->a(Ljava/io/OutputStream;)V

    invoke-static {v5}, Ln/c;->a(Ln/n;)V

    goto :goto_1

    :cond_3
    :try_start_9
    iput-object v2, p0, Lat/d;->c:Ln/n;

    invoke-virtual {p0}, Lat/d;->i()V

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v3, p0, Lat/d;->f:Ljava/lang/String;

    if-eqz v3, :cond_6

    const-string v3, "Content-Type"

    iget-object v4, p0, Lat/d;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ln/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0, v2}, Lat/d;->b(Ln/n;)V

    invoke-direct {p0}, Lat/d;->u()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lat/d;->i:Z

    if-eqz v3, :cond_4

    sget-object v3, Lat/g;->a:Lag/g;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending payload [bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lat/d;->v()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lag/g;->b(Ljava/lang/Object;)V

    const-string v3, "Content-Length"

    invoke-direct {p0}, Lat/d;->v()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ln/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {v2}, Ln/n;->a()Ljava/io/DataOutputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v3

    :goto_4
    :try_start_b
    invoke-direct {p0}, Lat/d;->u()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    move-result v4

    if-eqz v4, :cond_5

    :try_start_c
    invoke-direct {p0, v3}, Lat/d;->a(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    invoke-static {v3}, Ln/c;->a(Ljava/io/OutputStream;)V

    :cond_5
    invoke-interface {v2}, Ln/n;->d()I

    move-result v4

    invoke-interface {v2}, Ln/n;->c()J

    move-result-wide v5

    invoke-interface {v2}, Ln/n;->e()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Ln/n;->b()Ljava/io/DataInputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    move-result-object v8

    :try_start_e
    invoke-virtual {p0}, Lat/d;->i()V

    sget-object v9, Lat/g;->a:Lag/g;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response [http="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lag/g;->b(Ljava/lang/Object;)V

    invoke-static {v2}, Lat/d;->a(Ln/n;)V

    const/16 v9, 0xc8

    if-ne v4, v9, :cond_8

    iget-object v9, p0, Lat/d;->b:Lat/g;

    invoke-static {v9}, Lat/g;->b(Lat/g;)Ln/b;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ln/b;->a(Z)Z

    :goto_5
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    :try_start_f
    invoke-virtual {p0}, Lat/d;->f()Z

    move-result v9

    if-nez v9, :cond_9

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    invoke-virtual {v1}, Lat/b;->h()I

    if-nez v0, :cond_0

    invoke-static {v8}, Ln/c;->b(Ljava/io/InputStream;)V

    invoke-static {v3}, Ln/c;->a(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v3

    :catch_1
    move-exception v3

    move-object v4, v8

    move-object v5, v2

    move-object v2, v3

    move-object v3, v8

    goto/16 :goto_2

    :cond_6
    const-string v3, "Content-Type"

    const-string v4, "application/binary"

    invoke-interface {v2, v3, v4}, Ln/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_3

    :catchall_2
    move-exception v3

    move-object v4, v8

    move-object v5, v2

    move-object v2, v3

    move-object v3, v8

    :goto_6
    invoke-virtual {v1}, Lat/b;->h()I

    if-nez v0, :cond_7

    invoke-static {v3}, Ln/c;->b(Ljava/io/InputStream;)V

    invoke-static {v4}, Ln/c;->a(Ljava/io/OutputStream;)V

    invoke-static {v5}, Ln/c;->a(Ln/n;)V

    :cond_7
    throw v2

    :catchall_3
    move-exception v4

    :try_start_12
    invoke-static {v3}, Ln/c;->a(Ljava/io/OutputStream;)V

    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    :catch_2
    move-exception v4

    move-object v5, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v8

    goto/16 :goto_2

    :cond_8
    :try_start_13
    iget-object v9, p0, Lat/d;->b:Lat/g;

    invoke-static {v9}, Lat/g;->b(Lat/g;)Ln/b;

    move-result-object v9

    invoke-interface {v9}, Ln/b;->j()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    goto :goto_5

    :catch_3
    move-exception v4

    move-object v5, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v8

    goto/16 :goto_2

    :cond_9
    :try_start_14
    iput v4, p0, Lat/d;->m:I

    iput-wide v5, p0, Lat/d;->l:J

    iput-object v7, p0, Lat/d;->k:Ljava/lang/String;

    iput-object v8, p0, Lat/d;->j:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lat/d;->j()V

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    invoke-virtual {v1}, Lat/b;->h()I

    if-nez v12, :cond_0

    invoke-static {v8}, Ln/c;->b(Ljava/io/InputStream;)V

    invoke-static {v3}, Ln/c;->a(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    :catchall_5
    move-exception v4

    move-object v5, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_6

    :catchall_6
    move-exception v2

    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :try_start_18
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :catchall_7
    move-exception v2

    goto :goto_6

    :catchall_8
    move-exception v2

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    goto :goto_6

    :catchall_9
    move-exception v4

    move-object v5, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_6

    :cond_a
    move-object v3, v8

    goto/16 :goto_4
.end method

.method public declared-synchronized s()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lat/d;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lat/d;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lat/d;->c:Ln/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/d;->c:Ln/n;

    invoke-interface {v0}, Ln/n;->g()V

    :cond_0
    new-instance v0, Lat/e;

    invoke-direct {v0}, Lat/e;-><init>()V

    invoke-virtual {p0, v0}, Lat/d;->a(Ljava/lang/Exception;)V
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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lag/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lat/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
