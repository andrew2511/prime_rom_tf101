.class public Lo/bU;
.super Ljava/lang/Object;


# instance fields
.field private a:Law/e;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:J


# direct methods
.method public constructor <init>(Law/e;Ljava/lang/String;IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/bU;->b:Ljava/lang/String;

    iput p3, p0, Lo/bU;->c:I

    iput-wide p4, p0, Lo/bU;->d:J

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lo/bU;->b()Law/e;

    move-result-object v0

    iput-object v0, p0, Lo/bU;->a:Law/e;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lo/bU;->a:Law/e;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lo/bU;-><init>(Law/e;Ljava/lang/String;IJ)V

    return-void
.end method

.method private e(Law/e;)Lf/h;
    .locals 3

    new-instance v0, Lf/h;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Law/e;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Law/e;->d(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Law/e;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/bU;->a:Law/e;

    invoke-static {v0}, Law/b;->a(Law/e;)Law/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lo/bU;->d()V

    :goto_1
    new-instance v0, Law/e;

    sget-object v1, Ls/T;->A:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lo/bU;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized a(Law/e;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lo/bU;->b(Law/e;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/bU;->a:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v0

    :goto_1
    iget v1, p0, Lo/bU;->c:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lo/bU;->a:Law/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Law/e;->g(II)V

    iget-object v0, p0, Lo/bU;->a:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/bU;->a:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Law/e;->a(ILaw/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "LatitudeBackground"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lo/bU;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Law/e;Law/e;)Z
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-static {p1, v2}, Law/b;->g(Law/e;I)J

    move-result-wide v0

    invoke-static {p2, v2}, Law/b;->g(Law/e;I)J

    move-result-wide v2

    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    :cond_0
    move v0, v5

    :goto_0
    return v0

    :cond_1
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lo/bU;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method b()Law/e;
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    iget-object v1, p0, Lo/bU;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Law/e;

    sget-object v1, Ls/T;->A:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance v1, Law/e;

    sget-object v2, Ls/T;->A:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Law/e;->a(Ljava/io/InputStream;I)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing the location history for store: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/bU;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lo/bU;->d()V

    const-string v1, "LatitudeBackground"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->A:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method b(Law/e;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lo/bU;->c(Law/e;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p1}, Lo/bU;->d(Law/e;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public b(Law/e;Law/e;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lo/bU;->e(Law/e;)Lf/h;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Law/e;->d(I)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, p2}, Lo/bU;->e(Law/e;)Lf/h;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lo/bg;->a(Lf/h;JLf/h;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/bU;->a:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    iget-object v1, p0, Lo/bU;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lo/bU;->a:Law/e;

    invoke-virtual {v2, v1}, Law/e;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    iget-object v2, p0, Lo/bU;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Lo/bU;->d()V

    const-string v1, "LatitudeBackground"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(Law/e;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lo/bU;->a:Law/e;

    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v0

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lo/bU;->a:Law/e;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lo/bU;->a(Law/e;Law/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v2}, Lo/bU;->b(Law/e;Law/e;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    :goto_1
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecentLocationHistory upgrade for store: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/bU;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lo/bU;->d()V

    move v0, v4

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecentLocationHistory upgrade for store: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/bU;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lo/bU;->d()V

    move v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1
.end method

.method declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Law/e;

    sget-object v1, Ls/T;->A:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iput-object v0, p0, Lo/bU;->a:Law/e;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    iget-object v1, p0, Lo/bU;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d(Law/e;)Z
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Law/e;->i(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
