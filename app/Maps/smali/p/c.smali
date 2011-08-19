.class Lp/c;
.super LT/d;


# instance fields
.field final synthetic a:Lat/f;

.field final synthetic b:[Ly/d;

.field final synthetic c:I

.field final synthetic d:Lp/b;


# direct methods
.method constructor <init>(Lp/b;LT/c;Lat/f;[Ly/d;I)V
    .locals 0

    iput-object p1, p0, Lp/c;->d:Lp/b;

    iput-object p3, p0, Lp/c;->a:Lat/f;

    iput-object p4, p0, Lp/c;->b:[Ly/d;

    iput p5, p0, Lp/c;->c:I

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Lp/b;->h()Lag/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Macro response received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lp/c;->a:Lat/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lp/c;->a:Lat/f;

    invoke-interface {v0}, Lat/f;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lp/b;->h()Lag/g;

    move-result-object v0

    const-string v1, "Macro response received - running"

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lp/c;->d:Lp/b;

    invoke-static {v0}, Lp/b;->a(Lp/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lp/c;->b:[Ly/d;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lp/c;->b:[Ly/d;

    aget-object v2, v2, v1

    iget-object v3, p0, Lp/c;->a:Lat/f;

    invoke-interface {v3}, Lat/f;->n()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ly/d;->d(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lp/c;->d:Lp/b;

    invoke-static {v1}, Lp/b;->b(Lp/b;)V

    monitor-exit v0

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    iget-object v0, p0, Lp/c;->a:Lat/f;

    invoke-interface {v0}, Lat/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lp/c;->a:Lat/f;

    invoke-interface {v0}, Lat/f;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lp/b;->h()Lag/g;

    move-result-object v0

    const-string v1, "Macro response received - exception"

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lp/c;->d:Lp/b;

    iget-object v1, p0, Lp/c;->b:[Ly/d;

    iget-object v2, p0, Lp/c;->a:Lat/f;

    invoke-interface {v2}, Lat/f;->c()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lp/b;->a(Lp/b;[Ly/d;Ljava/lang/Exception;)V

    :goto_2
    iget-object v0, p0, Lp/c;->d:Lp/b;

    iget-object v1, p0, Lp/c;->b:[Ly/d;

    invoke-static {v0, v1}, Lp/b;->a(Lp/b;[Ljava/lang/Object;)V

    iget-object v0, p0, Lp/c;->d:Lp/b;

    iget v1, p0, Lp/c;->c:I

    invoke-static {v0, v1}, Lp/b;->a(Lp/b;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lp/c;->d:Lp/b;

    invoke-static {v0}, Lp/b;->b(Lp/b;)V

    iget-object v0, p0, Lp/c;->a:Lat/f;

    invoke-interface {v0}, Lat/f;->b()V

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-static {}, Lp/b;->h()Lag/g;

    move-result-object v0

    const-string v1, "Macro response received - complete"

    invoke-virtual {v0, v1}, Lag/g;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lp/c;->d:Lp/b;

    iget-object v1, p0, Lp/c;->a:Lat/f;

    iget-object v2, p0, Lp/c;->b:[Ly/d;

    invoke-static {v0, v1, v2}, Lp/b;->a(Lp/b;Lat/f;[Ly/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lp/c;->d:Lp/b;

    invoke-static {v1}, Lp/b;->b(Lp/b;)V

    iget-object v1, p0, Lp/c;->a:Lat/f;

    invoke-interface {v1}, Lat/f;->b()V

    throw v0
.end method
