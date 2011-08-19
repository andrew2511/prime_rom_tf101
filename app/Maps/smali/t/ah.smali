.class public Lt/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lt/ad;


# instance fields
.field private final a:Lad/g;

.field private final b:Lad/g;

.field private c:Lt/at;

.field private final d:Lac/p;

.field private e:Ljava/util/Locale;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    const/16 v1, 0x80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt/ah;->f:I

    new-instance v0, Lad/g;

    invoke-direct {v0, v1}, Lad/g;-><init>(I)V

    iput-object v0, p0, Lt/ah;->a:Lad/g;

    new-instance v0, Lad/g;

    invoke-direct {v0, v1}, Lad/g;-><init>(I)V

    iput-object v0, p0, Lt/ah;->b:Lad/g;

    new-instance v0, Lz/c;

    invoke-direct {v0}, Lz/c;-><init>()V

    iput-object v0, p0, Lt/ah;->d:Lac/p;

    iput-object p1, p0, Lt/ah;->e:Ljava/util/Locale;

    return-void
.end method

.method private a(LG/A;Z)LG/e;
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lt/ah;->b:Lad/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lt/ah;->b:Lad/g;

    invoke-virtual {v0, p1}, Lad/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lt/ah;->b:Lad/g;

    invoke-virtual {v0, p1}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/A;

    move-object v2, v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lt/ah;->a:Lad/g;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lt/ah;->a:Lad/g;

    invoke-virtual {v0, v2}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/e;

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lt/ah;->c:Lt/at;

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_2
    iget-object v0, p0, Lt/ah;->c:Lt/at;

    invoke-virtual {v2}, LG/A;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt/at;->a(Ljava/lang/String;)Lt/aa;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v5

    goto :goto_1

    :cond_3
    new-instance v1, LG/A;

    iget-object v3, v0, Lt/aa;->a:Law/e;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, LG/A;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, LG/A;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p0, Lt/ah;->c:Lt/at;

    invoke-virtual {v1}, LG/A;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lt/at;->a(Ljava/lang/String;)Lt/aa;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lt/ah;->b:Lad/g;

    monitor-enter v3

    :try_start_5
    iget-object v4, p0, Lt/ah;->b:Lad/g;

    invoke-virtual {v4, v2, v1}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    iget-object v2, v0, Lt/aa;->a:Law/e;

    iget-object v0, v0, Lt/aa;->b:Lt/x;

    invoke-static {v2, v0}, LG/e;->a(Law/e;Lt/x;)LG/e;

    move-result-object v0

    iget-object v2, p0, Lt/ah;->a:Lad/g;

    monitor-enter v2

    :try_start_6
    iget-object v3, p0, Lt/ah;->a:Lad/g;

    invoke-virtual {v3, v1, v0}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_5
    move-object v0, v5

    goto :goto_1

    :cond_6
    move-object v2, p1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Law/e;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Lt/ah;->c:Lt/at;

    invoke-virtual {v0, p1, p2}, Lt/at;->a(Ljava/lang/String;Law/e;)V

    invoke-virtual {p2, v6}, Law/e;->i(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Law/e;

    sget-object v2, Lai/a;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v5, p1}, Law/e;->b(ILjava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p2, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-virtual {v3, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lt/ah;->c:Lt/at;

    invoke-virtual {v4, v3, v1}, Lt/at;->a(Ljava/lang/String;Law/e;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lt/ah;->c:Lt/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/ah;->c:Lt/at;

    invoke-virtual {v0}, Lt/at;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lt/ah;->f:I

    goto :goto_0
.end method

.method public a(LG/A;)LG/e;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lt/ah;->a(LG/A;Z)LG/e;

    move-result-object v0

    return-object v0
.end method

.method public a(LG/A;Law/e;)LG/e;
    .locals 7

    new-instance v6, LG/A;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, LG/A;-><init>(Ljava/lang/String;)V

    new-instance v0, Lt/x;

    iget-object v1, p0, Lt/ah;->d:Lac/p;

    invoke-virtual {p0}, Lt/ah;->a()I

    move-result v2

    iget-object v3, p0, Lt/ah;->d:Lac/p;

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lt/x;-><init>(Lac/p;IJLt/ad;)V

    iget-object v1, p0, Lt/ah;->c:Lt/at;

    if-eqz v1, :cond_0

    invoke-virtual {v6}, LG/A;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lt/ah;->a(Ljava/lang/String;Law/e;)V

    :cond_0
    invoke-static {p2, v0}, LG/e;->a(Law/e;Lt/x;)LG/e;

    move-result-object v0

    iget-object v1, p0, Lt/ah;->a:Lad/g;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lt/ah;->a:Lad/g;

    invoke-virtual {v2, v6, v0}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v6}, LG/A;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lt/ah;->b:Lad/g;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lt/ah;->b:Lad/g;

    invoke-virtual {v2, p1, v6}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public a(Ljava/io/File;)V
    .locals 7

    new-instance v0, Lt/at;

    new-instance v1, Lz/c;

    invoke-direct {v1}, Lz/c;-><init>()V

    const-string v2, "bd"

    sget-object v3, Lai/a;->a:Law/f;

    const/16 v4, 0xbb8

    const-wide/32 v5, 0x5265c00

    invoke-direct/range {v0 .. v6}, Lt/at;-><init>(Lac/p;Ljava/lang/String;Law/f;IJ)V

    invoke-virtual {v0, p1}, Lt/at;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lt/ah;->e:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lt/at;->a(Ljava/util/Locale;)Z

    iput-object v0, p0, Lt/ah;->c:Lt/at;

    :cond_0
    return-void
.end method

.method public a(LG/e;)Z
    .locals 1

    instance-of v0, p1, Lt/aq;

    return v0
.end method

.method public b()J
    .locals 2

    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public b(LG/A;)LG/e;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lt/ah;->a(LG/A;Z)LG/e;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lt/ah;->a:Lad/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/ah;->a:Lad/g;

    invoke-virtual {v1}, Lad/g;->a()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lt/ah;->b:Lad/g;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lt/ah;->b:Lad/g;

    invoke-virtual {v1}, Lad/g;->a()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public c(LG/A;)V
    .locals 6

    new-instance v0, Lt/x;

    iget-object v1, p0, Lt/ah;->d:Lac/p;

    invoke-virtual {p0}, Lt/ah;->a()I

    move-result v2

    iget-object v3, p0, Lt/ah;->d:Lac/p;

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lt/x;-><init>(Lac/p;IJLt/ad;)V

    new-instance v1, Lt/aq;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lt/aq;-><init>(LG/A;Lt/x;Lt/p;)V

    iget-object v0, p0, Lt/ah;->a:Lad/g;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lt/ah;->a:Lad/g;

    invoke-virtual {v2, p1, v1}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lt/ah;->a:Lad/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/ah;->a:Lad/g;

    invoke-virtual {v1}, Lad/g;->a()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lt/ah;->b:Lad/g;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lt/ah;->b:Lad/g;

    invoke-virtual {v1}, Lad/g;->a()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lt/ah;->c:Lt/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/ah;->c:Lt/at;

    invoke-virtual {v0}, Lt/at;->d()Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lt/ah;->a:Lad/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt/ah;->a:Lad/g;

    invoke-virtual {v1}, Lad/g;->a()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lt/ah;->b:Lad/g;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lt/ah;->b:Lad/g;

    invoke-virtual {v1}, Lad/g;->a()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lt/ah;->c:Lt/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/ah;->c:Lt/at;

    invoke-virtual {v0}, Lt/at;->c()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Lt/ah;->c:Lt/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/ah;->c:Lt/at;

    invoke-virtual {v0}, Lt/at;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
