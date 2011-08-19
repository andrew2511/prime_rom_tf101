.class Lap/a;
.super Ljava/lang/Object;

# interfaces
.implements Ly/p;


# instance fields
.field final synthetic a:Lap/b;


# direct methods
.method constructor <init>(Lap/b;)V
    .locals 0

    iput-object p1, p0, Lap/a;->a:Lap/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly/d;Ljava/lang/Exception;)V
    .locals 3

    invoke-static {}, Lap/b;->a()Lap/b;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lap/a;->a:Lap/b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lap/b;->b(Lap/b;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ly/d;Ly/j;)V
    .locals 6

    invoke-static {}, Lap/b;->a()Lap/b;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2}, Ly/j;->a()I

    move-result v1

    invoke-virtual {p2}, Ly/j;->e()I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Ly/j;->f()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v1, p0, Lap/a;->a:Lap/b;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lap/b;->a(Lap/b;J)J

    iget-object v1, p0, Lap/a;->a:Lap/b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lap/b;->a(Lap/b;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lap/a;->a:Lap/b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lap/b;->b(Lap/b;Z)Z

    iget-object v1, p0, Lap/a;->a:Lap/b;

    invoke-static {v1}, Lap/b;->a(Lap/b;)V

    iget-object v1, p0, Lap/a;->a:Lap/b;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Lap/a;->a:Lap/b;

    invoke-static {v3}, Lap/b;->b(Lap/b;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Lap/b;->a(Ljava/lang/Object;)V

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    iget-object v1, p0, Lap/a;->a:Lap/b;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lap/b;->a(Lap/b;J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v1, p0, Lap/a;->a:Lap/b;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lap/b;->a(Lap/b;J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lap/a;->a:Lap/b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lap/b;->b(Lap/b;Z)Z

    iget-object v1, p0, Lap/a;->a:Lap/b;

    invoke-static {v1}, Lap/b;->a(Lap/b;)V

    iget-object v1, p0, Lap/a;->a:Lap/b;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Lap/a;->a:Lap/b;

    invoke-static {v3}, Lap/b;->b(Lap/b;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Lap/b;->a(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lap/a;->a:Lap/b;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lap/b;->b(Lap/b;Z)Z

    iget-object v2, p0, Lap/a;->a:Lap/b;

    invoke-static {v2}, Lap/b;->a(Lap/b;)V

    iget-object v2, p0, Lap/a;->a:Lap/b;

    new-instance v3, Ljava/lang/Long;

    iget-object v4, p0, Lap/a;->a:Lap/b;

    invoke-static {v4}, Lap/b;->b(Lap/b;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3}, Lap/b;->a(Ljava/lang/Object;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
