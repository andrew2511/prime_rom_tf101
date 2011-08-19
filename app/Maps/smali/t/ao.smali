.class public Lt/ao;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Locale;


# instance fields
.field private final b:I

.field private final c:Lt/d;

.field private final d:Lac/p;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sput-object v0, Lt/ao;->a:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(ILjava/io/File;Lac/p;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt/ao;->b:I

    iput-object p3, p0, Lt/ao;->d:Lac/p;

    iget-object v0, p0, Lt/ao;->d:Lac/p;

    invoke-interface {v0}, Lac/p;->c()J

    move-result-wide v0

    new-instance v2, Lt/H;

    invoke-direct {v2, p2}, Lt/H;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "r"

    invoke-static {v4, v2}, Lt/d;->a(Ljava/lang/String;Lt/t;)Lt/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p0, Lt/ao;->d:Lac/p;

    invoke-interface {v3}, Lac/p;->c()J

    move-result-wide v3

    sub-long v0, v3, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt/ao;->e:Z

    :cond_0
    iput-object v2, p0, Lt/ao;->c:Lt/d;

    return-void

    :catch_0
    move-exception v4

    :try_start_1
    const-string v4, "r"

    iget v5, p0, Lt/ao;->b:I

    const/4 v6, 0x0

    sget-object v7, Lt/ao;->a:Ljava/util/Locale;

    invoke-static {v4, v5, v6, v7, v2}, Lt/d;->a(Ljava/lang/String;IILjava/util/Locale;Lt/t;)Lt/d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v2, v3

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Lt/ao;
    .locals 3

    new-instance v0, Lt/ao;

    const/16 v1, 0x200

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lt/ao;-><init>(ILjava/io/File;Lac/p;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lt/aB;
    .locals 9

    const/16 v8, 0x9

    const/4 v3, 0x1

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lt/ao;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lt/ao;->c:Lt/d;

    invoke-static {p1}, Las/a;->b(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lt/d;->a(J)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, v8, :cond_1

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-eq v1, v3, :cond_2

    :cond_1
    move-object v0, v7

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lt/d;->c([BI)J

    move-result-wide v1

    new-instance v3, Law/e;

    sget-object v4, Ls/r;->b:Law/f;

    invoke-direct {v3, v4}, Law/e;-><init>(Law/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const/16 v5, 0x9

    array-length v6, v0

    sub-int/2addr v6, v8

    invoke-direct {v4, v0, v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v3, v4}, Law/e;->a(Ljava/io/InputStream;)Law/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x2

    :try_start_3
    invoke-virtual {v3, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v7

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0

    :cond_3
    new-instance v0, Lt/aB;

    invoke-direct {v0}, Lt/aB;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lt/aB;->a(Z)V

    invoke-virtual {v0, v3}, Lt/aB;->a(Law/e;)Z

    invoke-virtual {v0, v1, v2}, Lt/aB;->a(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 1

    iget-boolean v0, p0, Lt/ao;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lt/ao;->c:Lt/d;

    invoke-virtual {v0}, Lt/d;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lt/ao;->e:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized a(Law/e;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lt/ao;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    iget-object v1, p0, Lt/ao;->d:Lac/p;

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Law/e;->f()[B

    move-result-object v3

    array-length v4, v3

    add-int/lit8 v4, v4, 0x9

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v4, v5, v1, v2}, Lt/d;->a([BIJ)V

    const/4 v1, 0x0

    const/16 v2, 0x9

    array-length v5, v3

    invoke-static {v3, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Las/a;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lt/d;->a(J[B)Lt/aC;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lt/ao;->c:Lt/d;

    invoke-virtual {v0, v1}, Lt/d;->a(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lt/ao;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/ao;->c:Lt/d;

    invoke-virtual {v0}, Lt/d;->c()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

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

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lt/ao;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lt/ao;->c:Lt/d;

    const/4 v1, 0x0

    sget-object v2, Lt/ao;->a:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lt/d;->a(ILjava/util/Locale;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
