.class public final Laq;
.super Laf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Laf;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private l()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Laq;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lar;

    invoke-direct {v1, p0, v0}, Lar;-><init>(Laq;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Laq;->a(LZ;)V

    invoke-virtual {p0}, Laq;->k()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Laq;->i()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Laq;->j()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
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


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Laq;->l()V

    invoke-super {p0, p1}, Laf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/io/DataInputStream;
    .locals 1

    invoke-direct {p0}, Laq;->l()V

    invoke-super {p0}, Laf;->b()Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    invoke-direct {p0}, Laq;->l()V

    invoke-super {p0}, Laf;->c()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Laq;->l()V

    invoke-super {p0}, Laf;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()J
    .locals 2

    invoke-direct {p0}, Laq;->l()V

    invoke-super {p0}, Laf;->e()J

    move-result-wide v0

    return-wide v0
.end method
